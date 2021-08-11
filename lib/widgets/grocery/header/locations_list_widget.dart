import 'package:flutter/material.dart';
import 'package:flutter_demo_app_task/utils/style/colors.dart' as Style;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Style.Colors.unselectedItemColor
                      .withOpacity(0.3)
                      .withOpacity(0.1),
                ),
                color: Style.Colors.primaryColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: -5,
                    blurRadius: 5,
                    offset: Offset(5, 5), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50.0.w,
                    height: 50.0.h,
                    decoration: BoxDecoration(
                        color: Color(0xFFE3DDD6),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  SizedBox(width: 8.0.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Home Address',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 11.0.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Mustafa St. No:2',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 9.0.sp,
                        ),
                      ),
                      Text(
                        'Street x12',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 9.0.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 8.0.w,),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Style.Colors.unselectedItemColor
                        .withOpacity(0.3)
                        .withOpacity(0.1),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: -5,
                      blurRadius: 5,
                      offset: Offset(5, 5), // changes position of shadow
                    ),
                  ],
                  color: Style.Colors.primaryColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50.0.w,
                    height: 50.0.h,
                    decoration: BoxDecoration(
                        color: Color(0xFFE3DDD6),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  SizedBox(width: 8.0.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Office Address',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 11.0.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Axis Istanbul, B2 Bloc',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 9.0.sp,
                        ),
                      ),
                      Text(
                        'Floor 2, Office 11',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 9.0.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
