import 'package:flutter/material.dart';
import 'package:flutter_demo_app_task/screens/home_screen.dart';
import 'package:flutter_demo_app_task/utils/navigation/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
      ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 792),
      builder: () => MaterialApp(
        title: 'Flutter Demo',
        initialRoute: HomeScreen.routeName,
        routes: routes,
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      ),
    );
  }
}
