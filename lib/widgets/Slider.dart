import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  final double value;
  final Function onChanged;

  const CustomSlider({Key key, @required this.value, @required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          bottom: 50,
        ),
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.bottomCenter,
        child: Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.9,
            child: new Slider(
              value: value,
              onChanged: onChanged,
              max: 120,
              min: 0,
              divisions: 24,
              activeColor: Theme.of(context).primaryColor,
            )));
  }
}
