import 'package:flutter/material.dart';

class CartProductModel {
  String _cartProductName;

  //Should be image
  Color _cartProductColor;

  int _cartProductWeight;
  String _cartProductUnit;
  int _cartProductPrice;
  int _cartProductQty;


  CartProductModel(
      this._cartProductName,
      this._cartProductColor,
      this._cartProductWeight,
      this._cartProductUnit,
      this._cartProductPrice,
      this._cartProductQty);

  int get cartProductQty => _cartProductQty;

  int get cartProductPrice => _cartProductPrice;

  String get cartProductUnit => _cartProductUnit;

  int get cartProductWeight => _cartProductWeight;

  Color get cartProductColor => _cartProductColor;

  String get cartProductName => _cartProductName;

  set cartProductQty(int value) {
    _cartProductQty = value;
  }
}
