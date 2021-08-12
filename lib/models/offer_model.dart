class OfferModel {
  String logo;
  String color;
  int currentPrice;
  int previousPrice;
  String expireDate;

  OfferModel(
      {this.logo,
      this.color,
      this.currentPrice,
      this.previousPrice,
      this.expireDate});

  OfferModel.fromJson(dynamic json) {
    logo = json['logo'];
    color = json['color'];
    currentPrice = json['current_price'];
    previousPrice = json['previous_price'];
    expireDate = json['expire_date'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['logo'] = logo;
    map['color'] = color;
    map['current_price'] = currentPrice;
    map['previous_price'] = previousPrice;
    map['expire_date'] = expireDate;
    return map;
  }

}