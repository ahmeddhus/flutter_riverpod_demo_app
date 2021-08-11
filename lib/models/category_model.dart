import 'package:flutter/material.dart';

class CategoryModel {
  String _categoryName;

  //should be image
  Color _categoryColor;

  CategoryModel(this._categoryColor, this._categoryName);

  String get categoryName => _categoryName;

  Color get categoryColor => _categoryColor;
}
