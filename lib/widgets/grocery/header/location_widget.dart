import 'package:flutter/material.dart';
import 'package:flutter_demo_app_task/utils/style/colors.dart' as Style;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0.h,
      width: 100.0.w,
      child: Stack(
        children: [
          Positioned(
            left: 0.0,
            right: 0.0,
            top: 0.0,
            bottom: 0.0,
            child: Container(
              child: SvgPicture.asset(
                'assets/images/location_shape.svg',
                color: Style.Colors.secondaryColor,
              ),
            ),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            top: 0.0,
            bottom: 0.0,
            child: Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Style.Colors.primaryColor,
                  size: 20.0,
                ),
                Text(
                  'Mustafa St.',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Style.Colors.primaryColor,
                    fontSize: 11.0.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
