import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class Character extends StatefulWidget {
  Character({Key key}) : super(key: key);

  @override
  _CharacterState createState() => _CharacterState();
}

class _CharacterState extends State<Character> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlareActor('assets/characters/mock1.flr'),
    );
  }
}
