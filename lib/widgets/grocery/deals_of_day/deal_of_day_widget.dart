import 'package:flutter/material.dart';
import 'package:flutter_demo_app_task/models/deals_model.dart';
import 'package:flutter_demo_app_task/utils/style/colors.dart' as Style;
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'deals_card_widget.dart';

class DealOfDayWidget extends StatelessWidget {

  final List<DealsModel> dealsList = [
    DealsModel(Color(0xFFFBEDD8), 'Summer Sun Ice Cream Pack', 5,
        15, 12, 18, false),
    DealsModel(Color(0xFFFAD96D), 'Summer Sun Ice Cream Pack', 5,
        15, 12, 18, true),
    DealsModel(Color(0xFFCCB8FF), 'Summer Sun Ice Cream Pack', 5,
        15, 12, 18, false),
    DealsModel(Color(0xFFB0EAFD), 'Summer Sun Ice Cream Pack', 5,
        15, 12, 18, false),
    DealsModel(Color(0xFFFF9DC2), 'Summer Sun Ice Cream Pack', 5,
        15, 12, 18, false),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Deals of the day',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 11.0.sp,
                color: Style.Colors.textColor,
              ),
            ),
            SizedBox(
              height: 16.0.h,
            ),
            Container(
              height: 120.0.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dealsList.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: DealsCardWidget(dealsList[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
