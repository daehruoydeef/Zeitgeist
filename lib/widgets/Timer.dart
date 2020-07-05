import 'package:flutter/material.dart';

class Timer extends StatefulWidget {
  Timer({Key key}) : super(key: key);

  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.5,
      child: Center(
          child: Text('120:00',
              style: TextStyle(fontSize: 46, fontWeight: FontWeight.bold))),
    );
  }
}
