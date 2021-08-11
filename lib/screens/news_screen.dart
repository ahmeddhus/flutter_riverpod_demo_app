import 'package:flutter/material.dart';
import 'package:flutter_demo_app_task/utils/style/colors.dart' as Style;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Column(
          children: [
            Text(
              'News',
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
          ],
        ),
      ),
    );
  }
}
