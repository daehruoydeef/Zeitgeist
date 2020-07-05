import 'package:flutter/material.dart';
import 'package:Zeitgeist/widgets/Background.dart';
import 'package:Zeitgeist/widgets/Character.dart';
import 'package:Zeitgeist/widgets/Timer.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  double _value = 0.0;
  void _setvalue(double value) => setState(() => _value = value);

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
              color: Theme.of(context).primaryColor,
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
                color: Theme.of(context).primaryColor,
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
          Timer(),
          Container(
              padding: EdgeInsets.only(
                bottom: 50,
              ),
              height: MediaQuery.of(context).size.height,
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: new Slider(value: _value, onChanged: _setvalue)))
        ],
      )),
    );
  }
}
