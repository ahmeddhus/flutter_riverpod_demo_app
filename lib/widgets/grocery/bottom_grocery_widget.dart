import 'package:flutter/material.dart';
import 'package:flutter_demo_app_task/controller/grocery/offer_controller.dart';
import 'package:flutter_demo_app_task/utils/style/colors.dart' as Style;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomGroceryWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, watch) {
    final modelView = watch(getOfferFuture);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: modelView.offerModel == null
          ? Center(child: CircularProgressIndicator())
          : Container(
              height: 135.0.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFF9BDAD),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 120.0.w,
                    height: 120.0.h,
                    decoration: BoxDecoration(
                        color: Color(0xFFF9BDAD),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(
                    width: 8.0.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 16.0.h,
                      ),
                      Container(
                        height: 50.0.h,
                        width: 150.0.w,
                        child: SvgPicture.asset('${modelView.offerModel.logo??''}'),
                      ),
                      Row(
                        children: [

                          Text(
                            '\$ ${modelView.offerModel.currentPrice??''}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                              fontSize: 18.0.sp,
                              color: Style.Colors.secondaryDarkColor,
                            ),
                          ),
                          SizedBox(
                            width: 16.0.w,
                          ),
                          Text(
                            '\$ ${modelView.offerModel.previousPrice??''}',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.0.sp,
                              color: Style.Colors.textColor,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.0.h,
                      ),
                      Text(
                        '* Available until ${modelView.offerModel.expireDate??''}',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 9.0.sp,
                          color: Style.Colors.textColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
