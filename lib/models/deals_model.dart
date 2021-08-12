class DealsModel {
  int id;
  String name;
  String color;
  int inStock;
  String unit;
  int distance;
  int currentPrice;
  int previousPrice;
  bool isFavorite;
  bool inCart;

  DealsModel(
      this.id,
      this.name,
      this.color,
      this.inStock,
      this.unit,
      this.distance,
      this.currentPrice,
      this.previousPrice,
      this.isFavorite,
      this.inCart);

  DealsModel.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    color = json['color'];
    inStock = json['in_stock'];
    unit = json['unit'];
    distance = json['distance'];
    currentPrice = json['current_price'];
    previousPrice = json['previous_price'];
    isFavorite = json['is_favorite'];
    inCart = json['in_cart'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['color'] = color;
    map['in_stock'] = inStock;
    map['unit'] = unit;
    map['distance'] = distance;
    map['current_price'] = currentPrice;
    map['previous_price'] = previousPrice;
    map['is_favorite'] = isFavorite;
    map['in_cart'] = inCart;
    return map;
  }
}
