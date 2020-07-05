import 'package:flare_flutter/flare_actor.dart';

class Character {
  String name;
  FlareActor character;

  Character(this.name, this.character);

  Character.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        character = json['character'];
}
