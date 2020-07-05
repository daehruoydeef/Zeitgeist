import 'package:flutter/material.dart';
import 'package:Zeitgeist/models/item.dart';

class ItemCards extends StatelessWidget {
  final List<Item> items;
  const ItemCards({Key key, this.items}) : super(key: key);

  Widget itemCard(imgPath) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Image.asset(imgPath),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: Text('hello'));
  }
}
