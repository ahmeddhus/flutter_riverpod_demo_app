class CartProductModel {
  int _id;
  String _cartProductName;

  //Should be image
  String _cartProductColor;

  int _cartProductWeight;
  String _cartProductUnit;
  int _cartProductPrice;
  int _cartProductQty;

  CartProductModel(
      this._id,
      this._cartProductName,
      this._cartProductColor,
      this._cartProductWeight,
      this._cartProductUnit,
      this._cartProductPrice,
      this._cartProductQty);

  int get id => _id;

  int get cartProductQty => _cartProductQty;

  int get cartProductPrice => _cartProductPrice;

  String get cartProductUnit => _cartProductUnit;

  int get cartProductWeight => _cartProductWeight;

  String get cartProductColor => _cartProductColor;

  String get cartProductName => _cartProductName;

  set cartProductQty(int value) {
    _cartProductQty = value;
  }
}
