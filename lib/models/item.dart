class Item {
  String name;
  double probability;
  int price;
  String biome;
  String imgPath;

  Item(this.name, this.probability, this.price, this.biome, this.imgPath);

  Item.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        probability = json['probability'],
        price = json['price'],
        biome = json['biome'],
        imgPath = json['imgPath'];
}
