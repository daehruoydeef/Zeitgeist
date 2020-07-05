import 'package:flutter/material.dart';
import 'package:Zeitgeist/widgets/Background.dart';
import 'package:Zeitgeist/widgets/Character.dart';
import 'package:Zeitgeist/widgets/Timer.dart';
import 'package:Zeitgeist/widgets/Slider.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  double _minutes = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 150.0),
          child: FloatingActionButton.extended(
              icon: new Icon(
                Icons.play_arrow,
              ),
              label: new Text("START MISSION"),
              onPressed: () {},
              backgroundColor: Theme.of(context).primaryColor,
              shape: new BeveledRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ))),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/inventory");
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
                size: 35,
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/settings");
              },
            ),
          ),
        ],
      ),
      body: Container(
          child: Stack(
        children: [
          Background(),
          Character(),
          Timer(minutes: _minutes),
          CustomSlider(
            value: _minutes,
            onChanged: (value) {
              print(value.round());
              setState(() => _minutes = value);
            },
          ),
        ],
      )),
    );
  }
}
