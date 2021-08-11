import 'package:flutter/material.dart';
import 'package:flutter_demo_app_task/utils/style/colors.dart' as Style;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomGroceryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
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
                  child: Stack(
                    children: [
                      Positioned(
                        child: Text(
                          'Mega',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 11.0.sp,
                            color: Style.Colors.secondaryDarkColor,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 5.0,
                        child: Text(
                          'WHOPP',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 31.0.sp,
                            color: Color(0xFF21114B),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 5.0,
                        right: 0.0,
                        child: RichText(
                          text: TextSpan(
                            text: 'E',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 31.0.sp,
                              color: Style.Colors.secondaryDarkColor,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'R',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 32.0.sp,
                                  color: Color(0xFF21114B),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '\$ 17',
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
                      '\$ 32',
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
                  '* Available until 24 December 2020',
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
