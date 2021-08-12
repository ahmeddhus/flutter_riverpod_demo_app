class FavoriteProductModel {
  int _id;
  String _favoriteProductName;

  //Should be image
  String _favoriteProductColor;

  int _favoriteProductWeight;
  String _favoriteProductUnit;
  int _favoriteProductPrice;

  FavoriteProductModel(
    this._id,
    this._favoriteProductName,
    this._favoriteProductColor,
    this._favoriteProductWeight,
    this._favoriteProductUnit,
    this._favoriteProductPrice,
  );

  int get favoriteProductPrice => _favoriteProductPrice;

  String get favoriteProductUnit => _favoriteProductUnit;

  int get favoriteProductWeight => _favoriteProductWeight;

  String get favoriteProductColor => _favoriteProductColor;

  String get favoriteProductName => _favoriteProductName;

  int get id => _id;
}
