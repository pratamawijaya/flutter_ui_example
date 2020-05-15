import 'package:fitness_app/constants.dart';
import 'package:flutter/material.dart';

class MyDiaryScreen extends StatefulWidget {
  final AnimationController animationController;

  const MyDiaryScreen({Key key, this.animationController}) : super(key: key);
  @override
  _MyDiaryScreenState createState() => _MyDiaryScreenState();
}

class _MyDiaryScreenState extends State<MyDiaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackground,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(),
      ),
    );
  }
}
