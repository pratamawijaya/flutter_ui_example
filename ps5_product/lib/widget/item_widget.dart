import 'package:flutter/material.dart';
import 'package:ps5_product/model/controller.dart';
import 'package:ps5_product/widget/item_background_clipper.dart';
import 'package:ps5_product/widget/item_card_shape.dart';

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
                          decoration: BoxDecoration(color: Colors.white),
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
                ],
              ),
            );
          }),
    );
  }
}
