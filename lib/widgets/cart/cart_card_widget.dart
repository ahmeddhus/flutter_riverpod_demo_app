import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_app_task/models/cart_product_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartCardWidget extends StatefulWidget {
  final CartProductModel _cartProduct;

  CartCardWidget(this._cartProduct);

  @override
  _CartCardWidgetState createState() => _CartCardWidgetState(_cartProduct);
}

class _CartCardWidgetState extends State<CartCardWidget> {
  final CartProductModel _cartProduct;

  _CartCardWidgetState(this._cartProduct);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 70.0.w,
                  height: 70.0.h,
                  decoration: BoxDecoration(
                      color: _cartProduct.cartProductColor,
                      borderRadius: BorderRadius.circular(15)),
                ),
                SizedBox(
                  width: 16.0.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${_cartProduct.cartProductName}',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12.0.sp,
                        color: Color(0xFF2B3D54),
                      ),
                    ),
                    SizedBox(
                      height: 8.0.h,
                    ),
                    Text(
                      '${_cartProduct.cartProductWeight} ${_cartProduct.cartProductUnit}',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 9.0.sp,
                        color: Color(0xFF8D97A4),
                      ),
                    ),
                    Text(
                      '\$ ${_cartProduct.cartProductPrice}',
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
            Container(
              width: 120.0.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (_cartProduct.cartProductQty > 1)
                          _cartProduct.cartProductQty--;
                      });
                    },
                    child: Container(
                      width: 40.0.w,
                      height: 40.0.h,
                      padding: EdgeInsets.all(0.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0xFFB0EAFD),
                          borderRadius: BorderRadius.circular(8)),
                      child: FittedBox(
                        child: Text(
                          '-',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 42.0.sp,
                            color: Color(0xFF48B6DA),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '${_cartProduct.cartProductQty}',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 19.0.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2B3D54),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _cartProduct.cartProductQty++;
                      });
                    },
                    child: Container(
                      width: 40.0.w,
                      height: 40.0.h,
                      padding: EdgeInsets.all(0.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0xFFB0EAFD),
                          borderRadius: BorderRadius.circular(8)),
                      child: FittedBox(
                        child: Text(
                          '+',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 42.0.sp,
                            color: Color(0xFF48B6DA),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
