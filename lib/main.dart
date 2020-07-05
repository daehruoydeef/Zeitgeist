import 'package:Zeitgeist/pages/Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:Zeitgeist/pages/Inventory.dart';
import 'package:Zeitgeist/pages/Settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Dashboard(),
        '/inventory': (context) => Inventory(),
        '/settings': (context) => Settings()
      },
    );
  }
}
