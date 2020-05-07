import 'package:flutter/material.dart';
import 'package:meditation_app/widget/bottom_nav_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            title: "Today",
            imgSrc: "assets/icons/calendar.svg",
            press: () {},
          ),
          BottomNavItem(
            title: "All Excercises",
            imgSrc: "assets/icons/gym.svg",
            isActive: true,
            press: () {},
          ),
          BottomNavItem(
            title: "Settings",
            imgSrc: "assets/icons/Settings.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
