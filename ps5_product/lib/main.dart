import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ps5_product/constants.dart';
import 'package:ps5_product/model/controller.dart';
import 'package:ps5_product/widget/appbar.dart';
import 'package:ps5_product/widget/item_widget.dart';
import 'package:ps5_product/widget/setting_opt.dart';
import 'package:ps5_product/widget/title.dart';

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
          _BackgroundRight(width: size.width * 0.4, height: size.height * 0.87),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                MyAppBar(),
                SizedBox(
                  height: 15,
                ),
                TitleBar(
                  text: "Featured Product",
                ),
                SizedBox(
                  height: 20,
                ),
                SettingAndOpt(),
                SizedBox(
                  height: 20,
                ),
                ItemWidget(
                  items: controllers,
                  screenHeight: size.height,
                  screenWidth: size.width,
                )
              ],
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
