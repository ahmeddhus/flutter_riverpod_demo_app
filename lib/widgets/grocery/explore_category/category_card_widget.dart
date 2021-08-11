import 'package:flutter/material.dart';
import 'package:flutter_demo_app_task/models/category_model.dart';
import 'package:flutter_demo_app_task/utils/style/colors.dart' as Style;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryCardWidget extends StatelessWidget {
  final CategoryModel _categoryModel;

  CategoryCardWidget(this._categoryModel);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 60.0.w,
          height: 60.0.h,
          decoration: BoxDecoration(
              color: _categoryModel.categoryColor,
              borderRadius: BorderRadius.circular(15)),
        ),
        SizedBox(
          height: 8.0.h,
        ),
        Text(
          '${_categoryModel.categoryName}',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 10.0.sp,
            color: Style.Colors.textColor,
          ),
        ),
      ],
    ));
  }
}
