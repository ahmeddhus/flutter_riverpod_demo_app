import 'package:flutter/material.dart';
import 'package:flutter_demo_app_task/models/favorite_product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getFavoriteFuture =
    ChangeNotifierProvider<GetFavoriteData>((ref) => GetFavoriteData());

class GetFavoriteData extends ChangeNotifier {
  List<FavoriteProductModel> favoriteProductList = [];

  void addToFavorite(FavoriteProductModel product) {
    favoriteProductList.add(product);
    notifyListeners();
  }

  void removeFromFavorite(int productID) {
    favoriteProductList.removeWhere((element) => element.id == productID);
    notifyListeners();
  }
}
