import 'package:clay_containers/widgets/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:ps5_product/constants.dart';

class MyBottomBar extends StatelessWidget {
  final int selectedIndex;

  const MyBottomBar({Key key, this.selectedIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: ClayContainer(
        height: 80,
        borderRadius: 10,
        color: Colors.white,
        spread: 10,
        depth: 40,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _BarItem(
                icon: Icons.home,
                title: "Home",
                isSelected: true,
              ),
              _BarItem(
                icon: Icons.person,
                title: "Profile",
              ),
              _BarItem(
                icon: Icons.settings,
                title: "Settings",
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _BarItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isSelected;

  const _BarItem({Key key, this.icon, this.title, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: isSelected ? kBlueColor : Colors.white,
      ),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: isSelected ? Colors.white : kIconBackgroundColor,
          ),
          if (isSelected)
            VerticalDivider(
              color: kIconBackgroundColor,
            ),
          Text(
            title,
            style: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
