class DealsModel {
  String name;
  String color;
  int pieces;
  int distance;
  int currentPrice;
  int previousPrice;
  bool isFavorite;

  DealsModel(
    this.name,
    this.color,
    this.pieces,
    this.distance,
    this.currentPrice,
    this.previousPrice,
    this.isFavorite);

  DealsModel.fromJson(dynamic json) {
    name = json['name'];
    color = json['color'];
    pieces = json['pieces'];
    distance = json['distance'];
    currentPrice = json['current_price'];
    previousPrice = json['previous_price'];
    isFavorite = json['is_favorite'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['name'] = name;
    map['color'] = color;
    map['pieces'] = pieces;
    map['distance'] = distance;
    map['current_price'] = currentPrice;
    map['previous_price'] = previousPrice;
    map['is_favorite'] = isFavorite;
    return map;
  }
}
