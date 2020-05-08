import 'package:clay_containers/constants.dart';
import 'package:clay_containers/widgets/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:ps5_product/constants.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ClayContainer(
            width: 50,
            height: 50,
            depth: 20,
            borderRadius: 25,
            curveType: CurveType.concave,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: kGreyColor, width: 2),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Icon(
                Icons.menu,
                color: kGreyColor2,
                size: 25,
              ),
            ),
          ),
          ClayContainer(
            width: 50,
            height: 50,
            depth: 20,
            borderRadius: 25,
            parentColor: kBlueColor,
            curveType: CurveType.concave,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: kGreyColor, width: 2),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Icon(
                Icons.shopping_cart,
                color: kGreyColor2,
                size: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}