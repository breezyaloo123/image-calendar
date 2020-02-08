import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:location/location.dart';

class LocationApp extends StatefulWidget {
  @override
  _LocationAppState createState() => _LocationAppState();
}

class _LocationAppState extends State<LocationApp> {

  var currenLocation = LocationData;

  var location = new Location();

  double long;
  double lat;

  String error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Location"),
        actions: <Widget>[
          Icon(Icons.location_searching)
        ],
      ),
      body: Center(
        child: Text(long.toString()+" / "+ lat.toString()),
      ),
    );
  }


  //Gettinf location

  void getLocation() async
  {
    try {
      currenLocation = (await location.getLocation()) as Type;

      location.onLocationChanged().listen((LocationData currentLocation)
      {
        setState(() {
          long = currentLocation.longitude;
          lat = currentLocation.latitude;
        });
      });
      
    }on PlatformException catch (e) {
      if(e.code=='PERMISSION_DENIED')
      {
        error = 'Permission denied';
      }

      currenLocation = null;
    }
  }
}