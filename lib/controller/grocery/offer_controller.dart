import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo_app_task/models/offer_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getOfferFuture =
    ChangeNotifierProvider<GetOfferData>((ref) => GetOfferData());

class GetOfferData extends ChangeNotifier {
  OfferModel offerModel;

  GetOfferData() {
    getOfferData();
  }

  Future getOfferData() async {
    offerModel = new OfferModel();

    var jsonData = await rootBundle.loadString('assets/json/offer.json');

    var data = jsonDecode(jsonData);

    offerModel = OfferModel.fromJson(data);

    notifyListeners();
  }
}
