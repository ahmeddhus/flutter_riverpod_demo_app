import 'package:flutter/material.dart';
import 'package:flutter_demo_app_task/models/cart_product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getCartFuture =
    ChangeNotifierProvider<GetCartData>((ref) => GetCartData());

class GetCartData extends ChangeNotifier {
  List<CartProductModel> cartProductList = [];
  int totalPrice = 0;

  void addToCart(CartProductModel product) {
    cartProductList.add(product);
    notifyListeners();
  }

  void increasePrice(int price){
    totalPrice += price;
    notifyListeners();
  }

  void decreasePrice(int price){
    totalPrice -= price;
    notifyListeners();
  }

  void removeFromCart(int productID) {
    cartProductList.removeWhere((element) => element.id == productID);
    notifyListeners();
  }
}
