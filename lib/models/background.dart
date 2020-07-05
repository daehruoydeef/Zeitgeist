class Background {
  String name;
  String imgPath;

  Background(this.name, this.imgPath);

  Background.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        imgPath = json['price'];
}
