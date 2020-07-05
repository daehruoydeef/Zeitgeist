import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
          icon: new Icon(Icons.play_arrow),
          label: new Text("START MISSION"),
          onPressed: () {},
          shape: new BeveledRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0),
          )),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.ac_unit),
          onPressed: () {
            Navigator.pushNamed(context, "/inventory");
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, "/settings");
            },
          ),
        ],
      ),
      body: Container(
          child: Stack(
        children: [],
      )),
    );
  }
}
