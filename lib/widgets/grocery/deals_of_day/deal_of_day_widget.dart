import 'package:flutter/material.dart';
import 'package:flutter_demo_app_task/controller/grocery/deals_controller.dart';
import 'package:flutter_demo_app_task/utils/style/colors.dart' as Style;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'deals_card_widget.dart';

class DealOfDayWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, watch) {
    final modelView = watch(getDealsFuture);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: modelView.dealsList.isEmpty
          ? Center(child: CircularProgressIndicator())
          : Container(
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
                      itemCount: modelView.dealsList.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: DealsCardWidget(modelView.dealsList[index]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
