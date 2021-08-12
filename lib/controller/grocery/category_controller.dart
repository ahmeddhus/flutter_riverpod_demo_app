import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_app_task/models/category_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getCategoryFuture =
    ChangeNotifierProvider<GetCategoryData>((ref) => GetCategoryData());

class GetCategoryData extends ChangeNotifier {
  List<CategoryModel> categoryList = [];

  GetCategoryData() {
    getCategoryData();
  }

  Future getCategoryData() async {
    categoryList = [];

    var jsonData = await rootBundle.loadString('assets/json/category.json');

    var data = jsonDecode(jsonData);

    for (int i = 0; i < data.length; i++) {
      categoryList.add(CategoryModel.fromJson(data[i]));
    }
    print('categoryList Size: ${categoryList.length}');
    notifyListeners();
  }
}
