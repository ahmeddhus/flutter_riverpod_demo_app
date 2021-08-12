import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo_app_task/models/locations_model.dart';
import 'package:flutter_demo_app_task/models/user_locations_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getLocationsFuture =
    ChangeNotifierProvider<GetLocationsData>((ref) => GetLocationsData());

class GetLocationsData extends ChangeNotifier {
  List<UserLocationsModel> userLocationList;
  LocationsModel locationsModel;

  GetLocationsData() {
    getLocationsData();
  }

  Future getLocationsData() async {
    userLocationList = [];
    locationsModel = LocationsModel('', userLocationList);

    var jsonData = await rootBundle.loadString('assets/json/locations.json');

    var data = jsonDecode(jsonData);

    locationsModel = LocationsModel.fromJson(data);

    print('userLocationList size: ${locationsModel.userLocations.length}');
    notifyListeners();
  }
}
