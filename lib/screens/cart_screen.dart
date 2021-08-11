import 'package:flutter/material.dart';
import 'package:flutter_demo_app_task/models/cart_product_model.dart';
import 'package:flutter_demo_app_task/utils/style/colors.dart' as Style;
import 'package:flutter_demo_app_task/widgets/cart/cart_card_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatelessWidget {

  final List<CartProductModel> cartProductList = [
    CartProductModel('Turkish Steak', Color(0xFFF9BDAD), 13, 'Grams', 25, 2),
    CartProductModel('Salmon', Color(0xFFB0EAFD), 2, 'Serving', 30, 1),
    CartProductModel('Red Juice', Color(0xFFFF9DC2), 1, 'Bottle', 25, 3),
    CartProductModel('Cola', Color(0xFFCCB8FF), 1, 'Bottle', 11, 2),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cart',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 15.0.sp,
                color: Style.Colors.textColor,
              ),
            ),
            SizedBox(
              height: 16.0.h,
            ),
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: cartProductList.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CartCardWidget(cartProductList[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
