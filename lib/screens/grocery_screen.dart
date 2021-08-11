import 'package:flutter/material.dart';
import 'package:flutter_demo_app_task/widgets/grocery/bottom_grocery_widget.dart';
import 'package:flutter_demo_app_task/widgets/grocery/deals_of_day/deal_of_day_widget.dart';
import 'package:flutter_demo_app_task/widgets/grocery/explore_category/explore_category_widget.dart';
import 'package:flutter_demo_app_task/widgets/grocery/header/grocery_header_widget.dart';

class GroceryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      GroceryHeaderWidget(),
      ExploreCategoryWidget(),
      DealOfDayWidget(),
      BottomGroceryWidget(),
    ],);
  }
}
