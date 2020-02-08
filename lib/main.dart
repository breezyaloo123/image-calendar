import 'package:flutter/material.dart';
//import 'myimage.dart';
import 'calendar.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'location.dart';

void main()
{
  // runApp(MaterialApp(
  //   debugShowCheckedModeBanner: false,
  //   home: MyImage(),
  // ));
  // initializeDateFormatting().then((_) => runApp(MyAgenda()
  // ));

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LocationApp(),
  ));


}
