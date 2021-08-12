import 'package:flutter/material.dart';
import 'package:flutter_demo_app_task/controller/grocery/locations_controller.dart';
import 'package:flutter_demo_app_task/widgets/grocery/header/locations/locations_card_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationListWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, watch) {
    final modelView = watch(getLocationsFuture);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: modelView.locationsModel.userLocations.isEmpty
          ? Center(child: CircularProgressIndicator())
          : Container(
              height: 80.0.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: modelView.locationsModel.userLocations.length,
                itemBuilder: (context, index) =>
                    LocationsCardWidget(modelView.locationsModel.userLocations[index]),
              ),
            ),
    );
  }
}
