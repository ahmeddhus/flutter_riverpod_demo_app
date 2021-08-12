import 'package:flutter/material.dart';
import 'package:flutter_demo_app_task/models/favorite_product_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteCardWidget extends StatefulWidget {
  final FavoriteProductModel _favoriteProduct;

  FavoriteCardWidget(this._favoriteProduct);

  @override
  _FavoriteCardWidgetState createState() => _FavoriteCardWidgetState(_favoriteProduct);
}

class _FavoriteCardWidgetState extends State<FavoriteCardWidget> {
  final FavoriteProductModel _favoriteProduct;

  _FavoriteCardWidgetState(this._favoriteProduct);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 70.0.w,
            height: 70.0.h,
            decoration: BoxDecoration(
                color: Color(int.parse(_favoriteProduct.favoriteProductColor)),
                borderRadius: BorderRadius.circular(15)),
          ),
          SizedBox(
            width: 16.0.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 90.0,
                child: Text(
                  '${_favoriteProduct.favoriteProductName}',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12.0.sp,
                    color: Color(0xFF2B3D54),
                  ),
                ),
              ),
              SizedBox(
                height: 8.0.h,
              ),
              Text(
                '${_favoriteProduct.favoriteProductWeight} '
                    '${_favoriteProduct.favoriteProductUnit}',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 9.0.sp,
                  color: Color(0xFF8D97A4),
                ),
              ),
              Text(
                '\$ ${_favoriteProduct.favoriteProductPrice}',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0.sp,
                  color: Color(0xFFB13E55),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
