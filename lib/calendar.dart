import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class MyAgenda extends StatefulWidget {
  @override
  _MyAgendaState createState() => _MyAgendaState();
}

class _MyAgendaState extends State<MyAgenda> {

  CalendarController _calendar;

  DateTime dateTime;
  String dd;

  List<dynamic> a =new List();
  @override
  void initState() {
    super.initState();

    _calendar = CalendarController();
  }
  @override
  void dispose() {
    _calendar.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: dd==null?Text("Click on a date"):Text(dd.toString()),
        ),
        body: TableCalendar(
          calendarController: _calendar,
          locale: 'fr_FR',
          onDaySelected: (datetime,a)
          {
            
            setState(() {
              a.add(datetime.day);
              a.add(datetime.month);
              a.add(datetime.year);
              dd = a.elementAt(0).toString() +" /"+ a.elementAt(1).toString()+" /"+ a.elementAt(2).toString();
            });

          },
        ),
      ),
    );
  }
}