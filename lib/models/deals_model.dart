import 'package:flutter/material.dart';

class DealsModel {
  String _dealName;

  //should be image
  Color _dealColor;

  int _dealPieces;
  int _dealDistance;
  int _dealCurrentPrice;
  int _dealPreviousPrice;
  bool _isFavoriteProduct;

  DealsModel(this._dealColor, this._dealName, this._dealPieces,
      this._dealDistance, this._dealCurrentPrice, this._dealPreviousPrice, this._isFavoriteProduct);

  int get dealPreviousPrice => _dealPreviousPrice;

  int get dealCurrentPrice => _dealCurrentPrice;

  int get dealDistance => _dealDistance;

  int get dealPieces => _dealPieces;

  Color get dealColor => _dealColor;

  String get dealName => _dealName;

  bool get isFavoriteProduct => _isFavoriteProduct;

  set isFavoriteProduct(bool value) {
    _isFavoriteProduct = value;
  }
}
