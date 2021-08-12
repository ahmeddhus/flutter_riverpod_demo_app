import 'package:flutter/material.dart';
import 'package:flutter_demo_app_task/controller/grocery/category_controller.dart';
import 'package:flutter_demo_app_task/utils/style/colors.dart' as Style;
import 'package:flutter_demo_app_task/widgets/grocery/explore_category/category_card_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExploreCategoryWidget extends ConsumerWidget {

  @override
  Widget build(BuildContext context, watch) {
    final modelView = watch(getCategoryFuture);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: modelView.categoryList.isEmpty
          ? Center(child: CircularProgressIndicator())
          : Container(
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
                      itemCount: modelView.categoryList.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child:
                            CategoryCardWidget(modelView.categoryList[index]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
