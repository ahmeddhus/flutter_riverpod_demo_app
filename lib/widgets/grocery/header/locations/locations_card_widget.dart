import 'package:flutter/material.dart';
import 'package:flutter_demo_app_task/models/user_locations_model.dart';
import 'package:flutter_demo_app_task/utils/style/colors.dart' as Style;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationsCardWidget extends StatelessWidget {
  final UserLocationsModel _locationModel;

  LocationsCardWidget(this._locationModel);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Style.Colors.unselectedItemColor
                      .withOpacity(0.3)
                      .withOpacity(0.1),
                ),
                color: Style.Colors.primaryColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: -5,
                    blurRadius: 5,
                    offset: Offset(5, 5), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50.0.w,
                    height: 50.0.h,
                    decoration: BoxDecoration(
                        color: Color(0xFFE3DDD6),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  SizedBox(
                    width: 8.0.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${_locationModel.name}',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 11.0.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${_locationModel.address}',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 9.0.sp,
                        ),
                      ),
                      Text(
                        '${_locationModel.street}',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 9.0.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
