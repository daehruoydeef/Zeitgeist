import 'package:flutter/material.dart';

class InventoryHeader extends StatefulWidget {
  InventoryHeader({Key key}) : super(key: key);

  @override
  _InventoryHeaderState createState() => _InventoryHeaderState();
}

class _InventoryHeaderState extends State<InventoryHeader> {
  Widget totalTime() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: (Text('5 Hours', style: textStyle)),
      ),
    );
  }

  Widget itemCount() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: (Text(
          '125 Items',
          style: textStyle,
        )),
      ),
    );
  }

  TextStyle textStyle = TextStyle(
    color: Colors.black87,
    fontSize: 36,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Center(
        child: Column(
          children: [totalTime(), itemCount()],
        ),
      ),
    );
  }
}
