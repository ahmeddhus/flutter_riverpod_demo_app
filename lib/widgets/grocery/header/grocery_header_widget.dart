import 'package:flutter/material.dart';
import 'package:flutter_demo_app_task/widgets/grocery/header/locations/locations_list_widget.dart';
import 'package:flutter_demo_app_task/widgets/grocery/header/search_widget.dart';

class GroceryHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchWidget(),
        LocationListWidget(),
      ],
    );
  }
}
