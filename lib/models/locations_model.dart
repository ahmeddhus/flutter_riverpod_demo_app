import 'package:flutter_demo_app_task/models/user_locations_model.dart';

class LocationsModel {
  String currentLocation;
  List<UserLocationsModel> userLocations;

  LocationsModel(
      this.currentLocation,
      this.userLocations);

  LocationsModel.fromJson(dynamic json) {
    currentLocation = json['current_location'];
    if (json['locations'] != null) {
      userLocations = [];
      json['locations'].forEach((v) {
        userLocations.add(UserLocationsModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['current_location'] = currentLocation;
    if (userLocations != null) {
      map['locations'] = userLocations.map((v) => v.toJson()).toList();
    }
    return map;
  }

}