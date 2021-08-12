import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_app_task/models/deals_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getDealsFuture =
ChangeNotifierProvider<GetDealsData>((ref) => GetDealsData());

class GetDealsData extends ChangeNotifier{
  List<DealsModel> dealsList = [];

  GetDealsData() {
    getDealsData();
  }

  Future getDealsData() async {
    dealsList = [];

    var jsonData = await rootBundle.loadString('assets/json/deals.json');

    var data = jsonDecode(jsonData);

    for (int i = 0; i < data.length; i++) {
      dealsList.add(DealsModel.fromJson(data[i]));
    }
    print('dealsList Size: ${dealsList.length}');
    notifyListeners();
  }
}