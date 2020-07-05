import 'package:flutter/material.dart';
import 'package:Zeitgeist/widgets/InventoryHeader.dart';
import 'package:Zeitgeist/widgets/ItemCards.dart';
import 'package:Zeitgeist/data/mockData.dart';
import 'package:Zeitgeist/models/item.dart';

class Inventory extends StatefulWidget {
  Inventory({Key key}) : super(key: key);

  @override
  _InventoryState createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  List<Item> items;

  @override
  void initState() {
    super.initState();
    // Database call
    List<Item> itm = mockItems;
    setItems(itm);
    // set Items
  }

  setItems(itm) {
    setState(() => items = itm);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: CustomScrollView(slivers: <Widget>[
      const SliverAppBar(
        pinned: true,
        expandedHeight: 150.0,
        flexibleSpace: FlexibleSpaceBar(
          title: Text('Inventory'),
        ),
      ),
      SliverGrid(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200.0,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 4.0,
        ),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.teal[100 * (index % 9)],
              child: Text('Grid Item $index'),
            );
          },
          childCount: 20,
        ),
      ),
    ])));
  }
}
