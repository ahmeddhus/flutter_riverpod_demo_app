import 'package:flutter/material.dart';
import 'package:flutter_demo_app_task/models/category_model.dart';
import 'package:flutter_demo_app_task/utils/style/colors.dart' as Style;
import 'package:flutter_demo_app_task/widgets/grocery/explore_category/category_card_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExploreCategoryWidget extends StatelessWidget {

 final List<CategoryModel> categoryList = [
    CategoryModel(Color(0xFFF9BDAD), 'Steak'),
    CategoryModel(Color(0xFFFAD96D), 'Vegetables'),
    CategoryModel(Color(0xFFCCB8FF), 'Beverages'),
    CategoryModel(Color(0xFFB0EAFD), 'Fish'),
    CategoryModel(Color(0xFFFF9DC2), 'Juice'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Explore by Category',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 11.0.sp,
                    color: Style.Colors.textColor,
                  ),
                ),
                Text(
                  'See All (36)',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 9.0.sp,
                    color: Style.Colors.seeAllTextColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.0.h,
            ),
            Container(
              height: 90.0.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoryList.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: CategoryCardWidget(categoryList[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
