import 'package:flutter/material.dart';
import 'package:flutter_demo_app_task/utils/style/colors.dart' as Style;
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SearchWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
              color: Style.Colors.unselectedItemColor.withOpacity(0.5)),
          color: Color(0xFFF5F7F9),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: InkWell(
                child: Icon(
                  Icons.search,
                  color: Style.Colors.unselectedItemColor,
                  size: 30,
                ),
              ),
            ),
            SizedBox(
              width: 15.w,
            ),
            Expanded(
              flex: 6,
              child: TextFormField(
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 11.0.sp,
                  color: Style.Colors.hintTextColor,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search in thousands of products',
                  hintStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 11.0.sp,
                    color: Style.Colors.hintTextColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
