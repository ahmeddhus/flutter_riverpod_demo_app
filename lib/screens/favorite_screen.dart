import 'package:flutter/material.dart';
import 'package:flutter_demo_app_task/controller/favorite/favorite_controller.dart';
import 'package:flutter_demo_app_task/utils/style/colors.dart' as Style;
import 'package:flutter_demo_app_task/widgets/favorite/favorite_card_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, watch) {
    final modelView = watch(getFavoriteFuture);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Favorites',
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
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: modelView.favoriteProductList.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(16.0),
                child: FavoriteCardWidget(modelView.favoriteProductList[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
