import 'package:flutter/material.dart';
import 'package:flutter_demo_app_task/models/deals_model.dart';
import 'package:flutter_demo_app_task/utils/style/colors.dart' as Style;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DealsCardWidget extends StatefulWidget {
  final DealsModel _dealsModel;

  DealsCardWidget(this._dealsModel);

  @override
  _DealsCardWidgetState createState() => _DealsCardWidgetState(_dealsModel);
}

class _DealsCardWidgetState extends State<DealsCardWidget> {
  final DealsModel _dealsModel;

  _DealsCardWidgetState(this._dealsModel);

  @override
  Widget build(BuildContext context) {
    int colorCode = int.parse(_dealsModel.color);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              width: 100.0.w,
              height: 100.0.h,
              decoration: BoxDecoration(
                  color: Color(colorCode),
                  borderRadius: BorderRadius.circular(15)),
            ),
            Positioned(
              left: -3.0,
              top: -3.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Style.Colors.primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(100),
                    topRight: Radius.circular(100),
                    bottomLeft: Radius.circular(100),
                    topLeft: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if(_dealsModel.isFavorite == true)
                          _dealsModel.isFavorite = false;
                        else if(_dealsModel.isFavorite == false)
                          _dealsModel.isFavorite= true;
                      });
                    },
                    child: _dealsModel.isFavorite == true
                        ? Icon(
                            Icons.favorite,
                            color: Style.Colors.secondaryDarkColor,
                            size: 15.0,
                          )
                        : Icon(
                            Icons.favorite_border,
                            color: Style.Colors.textColor,
                            size: 15.0,
                          ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 8.0.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${_dealsModel.name}',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 10.0.sp,
                color: Style.Colors.textColor,
              ),
            ),
            SizedBox(
              height: 8.0.h,
            ),
            Text(
              'Pieces ${_dealsModel.pieces}',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 10.0.sp,
                color: Style.Colors.textColor,
              ),
            ),
            SizedBox(
              height: 8.0.h,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Style.Colors.textColor,
                  size: 15.0.sp,
                ),
                SizedBox(
                  width: 8.0.w,
                ),
                Text(
                  '${_dealsModel.distance} Minutes Away',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 10.0.sp,
                    color: Style.Colors.textColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8.0.h,
            ),
            Row(
              children: [
                Text(
                  '\$ ${_dealsModel.currentPrice}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    fontSize: 13.0.sp,
                    color: Style.Colors.secondaryDarkColor,
                  ),
                ),
                SizedBox(
                  width: 8.0.w,
                ),
                Text(
                  '\$ ${_dealsModel.previousPrice}',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13.0.sp,
                    color: Style.Colors.textColor,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
