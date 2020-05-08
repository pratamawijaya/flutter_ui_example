import 'package:flutter/material.dart';
import 'package:ps5_product/constants.dart';
import 'package:ps5_product/model/controller.dart';
import 'package:ps5_product/widget/item_background_clipper.dart';

class ItemWidget extends StatelessWidget {
  final List<Item> items;
  final double screenWidth, screenHeight;

  const ItemWidget({Key key, this.items, this.screenWidth, this.screenHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight * 0.43,
      child: PageView.builder(
          itemCount: items.length,
          pageSnapping: true,
          controller: PageController(viewportFraction: 0.7),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ClipPath(
                      clipper: ItemBackgroundClipper(),
                      child: Hero(
                        tag: "bg-${items[index]}",
                        child: Container(
                          width: screenWidth * 0.64,
                          height: screenHeight * 0.48,
                          decoration: BoxDecoration(color: kWhiteSliver),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Align(
                      alignment: Alignment(0, -0.1),
                      child: Image.asset(
                        (items[index] as Controller).imagePath,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 32,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          (items[index] as Controller).title,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          (items[index] as Controller).description,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 20,
                    child: Image.asset(
                      "assets/images/ps_logo.png",
                      width: 40.0,
                      height: 40.0,
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
