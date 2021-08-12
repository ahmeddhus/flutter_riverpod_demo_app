class UserLocationsModel {
  String name;
  String address;
  String street;

  UserLocationsModel(this.name, this.address, this.street);

  UserLocationsModel.fromJson(dynamic json) {
    name = json['name'];
    address = json['address'];
    street = json['street'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['name'] = name;
    map['address'] = address;
    map['street'] = street;
    return map;
  }
}
