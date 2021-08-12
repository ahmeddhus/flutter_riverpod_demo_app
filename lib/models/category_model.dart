class CategoryModel {
  String name;

  //should be image
  String color;

  CategoryModel(this.name, this.color);

  CategoryModel.fromJson(dynamic json) {
    name = json['name'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['name'] = name;
    map['color'] = color;
    return map;
  }
}
