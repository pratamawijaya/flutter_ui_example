import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:music_player_neumorph/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: kBackgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _sliderValue = 10;
  double _min = 0;
  int _controlSelectedId = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Neumorphic(
                    boxShape: NeumorphicBoxShape.circle(),
                    style: NeumorphicStyle(
                      shape: NeumorphicShape.concave,
                      depth: 8,
                      lightSource: LightSource.topLeft,
                      color: kBackgroundColor,
                    ),
                    child: Container(
                      width: 50,
                      height: 50,
                      child: Icon(
                        Icons.arrow_back,
                        color: kIconColor,
                      ),
                    ),
                  ),
                  Text(
                    "PLAYING NOW",
                    style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Neumorphic(
                    boxShape: NeumorphicBoxShape.circle(),
                    style: NeumorphicStyle(
                      shape: NeumorphicShape.concave,
                      depth: 8,
                      lightSource: LightSource.topLeft,
                      color: kBackgroundColor,
                    ),
                    child: Container(
                      width: 50,
                      height: 50,
                      child: Icon(
                        Icons.menu,
                        color: kIconColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Neumorphic(
                boxShape: NeumorphicBoxShape.circle(),
                style: NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  depth: 8,
                  lightSource: LightSource.topLeft,
                  color: kBackgroundColor,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  width: 280,
                  height: 280,
                  child: Image.asset(
                    "assets/images/babymetal_cover.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Gimme Chocolate!!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: kTextTitleColor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "BabyMetal",
                style: TextStyle(
                  fontSize: 18,
                  color: kTextColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "1:21",
                      style: TextStyle(
                        color: kTextColor,
                      ),
                    ),
                    Text("4:56",
                        style: TextStyle(
                          color: kTextColor,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              NeumorphicSlider(
                height: 8,
                min: _min,
                max: 100,
                value: _sliderValue,
                onChanged: (val) {
                  setState(() {
                    _sliderValue = val;
                    print(_sliderValue);
                  });
                },
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _buildControlButton(Icon(Icons.fast_rewind), false, 1),
                  _buildControlButton(Icon(Icons.play_arrow), true, 2),
                  _buildControlButton(Icon(Icons.fast_forward), false, 3)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildControlButton(Icon icon, bool isSelected, int id) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _controlSelectedId = id;
        });
      },
      child: Neumorphic(
        boxShape: NeumorphicBoxShape.circle(),
        style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          depth: 8,
          lightSource: LightSource.topLeft,
          color: (_controlSelectedId == id) ? kBlueColor : kBackgroundColor,
        ),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: kBackgroundColor, width: 4),
            borderRadius: BorderRadius.circular(70),
          ),
          width: 70,
          height: 70,
          child:
              (id == 2 && _controlSelectedId == 2) ? Icon(Icons.pause) : icon,
        ),
      ),
    );
  }
}
