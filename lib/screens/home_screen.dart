import 'package:flutter/material.dart';
import 'package:flutter_demo_app_task/screens/cart_screen.dart';
import 'package:flutter_demo_app_task/screens/favorite_screen.dart';
import 'package:flutter_demo_app_task/screens/grocery_screen.dart';
import 'package:flutter_demo_app_task/screens/news_screen.dart';
import 'package:flutter_demo_app_task/utils/style/colors.dart' as Style;
import 'package:flutter_demo_app_task/widgets/home/appbar_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home_screen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  List<Widget> widgets = [
    GroceryScreen(),
    NewsScreen(),
    SizedBox(),
    FavoriteScreen(),
    CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.primaryColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        heightFactor: 1.5,
        child: FloatingActionButton(
          elevation: 0.0,
          backgroundColor: Style.Colors.secondaryDarkColor,
          onPressed: () {},
          child: Stack(
            children: [
              SvgPicture.asset(
                'assets/icons/main_cart_icon.svg',
                height: 35.0.h,
                width: 35.0.w,
                color: Color(0xFFFFFFFF),
              ),
              Text(
                '\$91',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xFFFFFFFF),
                  fontSize: 11.0.sp,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Stack(
        children: [
          Container(
            height: 70.0.h,
            decoration: BoxDecoration(
              color: Color(0xFFF4F9FA),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25),
              ),
            ),
            child: BottomNavigationBar(
              unselectedItemColor: Style.Colors.unselectedItemColor,
              selectedItemColor: Style.Colors.secondaryDarkColor,
              selectedLabelStyle: TextStyle(
                fontFamily: 'Poppins',
                color: Style.Colors.secondaryDarkColor,
                fontSize: 7.0.sp,
              ),
              unselectedLabelStyle: TextStyle(
                fontFamily: 'Poppins',
                color: Style.Colors.unselectedItemColor,
                fontSize: 7.0.sp,
              ),
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: true,
              iconSize: 20.0,
              currentIndex: currentIndex,
              elevation: 0.0,
              onTap: (index) {
                setState(() {
                  if (index <= 4) {
                    currentIndex = index;
                  }
                });
              },
              backgroundColor: Color(0xFFF4F9FA),
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/icons/grocery_icon.svg',
                    height: 20.0.h,
                    width: 20.0.w,
                    color: currentIndex == 0
                        ? Style.Colors.secondaryDarkColor
                        : Style.Colors.unselectedItemColor,
                  ),
                  label: 'Grocery',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/icons/news_icon.svg',
                    height: 20.0.h,
                    width: 20.0.w,
                    color: currentIndex == 1
                        ? Style.Colors.secondaryDarkColor
                        : Style.Colors.unselectedItemColor,
                  ),
                  label: 'News',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    '',
                    height: 0.0.h,
                    width: 0.0.w,
                    color: currentIndex == 1
                        ? Style.Colors.secondaryDarkColor
                        : Style.Colors.unselectedItemColor,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/icons/fav_icon.svg',
                    height: 20.0.h,
                    width: 20.0.w,
                    color: currentIndex == 3
                        ? Style.Colors.secondaryDarkColor
                        : Style.Colors.unselectedItemColor,
                  ),
                  label: 'Favorites',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/icons/cart_icon.svg',
                    height: 20.0.h,
                    width: 20.0.w,
                    color: currentIndex == 4
                        ? Style.Colors.secondaryDarkColor
                        : Style.Colors.unselectedItemColor,
                  ),
                  label: 'Cart',
                ),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarWidget(),
                widgets[currentIndex],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
