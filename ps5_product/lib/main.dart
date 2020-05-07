import 'package:clay_containers/constants.dart';
import 'package:clay_containers/widgets/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ps5_product/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          _BackgroundRight(width: size.width * 0.4, height: size.height * 0.8),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                _AppBar(),
                SizedBox(
                  height: 30,
                ),
                _Title(
                  text: "Featured Product",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Title extends StatelessWidget {
  final String text;

  const _Title({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final words = text.split(' ');

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: words[0],
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 36,
              color: Colors.black,
            ),
          ),
          TextSpan(text: "\n"),
          TextSpan(
              text: words[1],
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 36,
                color: Colors.black,
              )),
        ]),
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
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

class _BackgroundRight extends StatelessWidget {
  final double width, height;

  const _BackgroundRight({Key key, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      width: width,
      top: 0,
      height: height,
      child: ClipRRect(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
          child: ColoredBox(
            color: kBlueColor,
          )),
    );
  }
}
