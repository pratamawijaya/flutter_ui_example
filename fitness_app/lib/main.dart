import 'package:fitness_app/constants.dart';
import 'package:fitness_app/models/tabicon_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: kBackground,
        textTheme: KTextTheme,
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

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  AnimationController animationController;
  List<TabIconData> tabIconsList = TabIconData.tabIconsList;

  Widget tabBody = Container(
    color: kBackground,
  );

  @override
  void initState() {
    tabIconsList.forEach((TabIconData tab) {
      tab.isSelected = false;
    });

    tabIconsList[0].isSelected = true;

    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: <Widget>[
              _buildAppBar(),
            ],
          ),
        ),
      ),
      floatingActionButton: MyFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: MyBottomBar(),
    );
  }

  Container _buildAppBar() {
    return Container(
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "My Diary",
            style: display1,
          ),
          Row(
            children: <Widget>[
              Icon(Icons.keyboard_arrow_left),
              SizedBox(
                width: 10,
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.calendar_today),
                  SizedBox(
                    width: 10,
                  ),
                  Text("15 Nov"),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.keyboard_arrow_right),
            ],
          )
        ],
      ),
    );
  }
}

class MyFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 54,
      height: 54,
      decoration: BoxDecoration(
          color: kNearlyDarkBlue,
          gradient: LinearGradient(
            colors: [
              kNearlyDarkBlue,
              kNearlyBlue,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          shape: BoxShape.circle,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: kNearlyDarkBlue.withOpacity(0.2),
              offset: Offset(8.0, 16.0),
              blurRadius: 22.0,
            ),
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.white.withOpacity(0.1),
          highlightColor: Colors.transparent,
          focusColor: Colors.transparent,
          onTap: () {},
          child: Icon(
            Icons.add,
            color: kWhite,
            size: 32,
          ),
        ),
      ),
    );
  }
}

class MyBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 6.0,
      color: Colors.transparent,
      elevation: 8.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 50,
              width: size.width / 2 - 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset("assets/images/tab_1.png"),
                  Image.asset("assets/images/tab_2.png"),
                ],
              ),
            ),
            Container(
              height: 50,
              width: size.width / 2 - 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset("assets/images/tab_3.png"),
                  Image.asset("assets/images/tab_4.png"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<bool> getData() async {
  await Future<dynamic>.delayed(const Duration(milliseconds: 200));
  return true;
}
