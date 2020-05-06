import 'package:cookie_store/screen/cookie_screen.dart';
import 'package:cookie_store/widget/bottom_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
            onPressed: () {}),
        title: Text(
          "Pickup",
          style: TextStyle(
              fontFamily: 'Varela', fontSize: 20.0, color: Color(0xFF545D68)),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
              onPressed: () {})
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 15.0),
          Text(
            'Categories',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 42.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15.0),
          TabBar(
            controller: _tabController,
            labelColor: Color(0xFFC88D67),
            labelPadding: EdgeInsets.only(right: 45.0),
            indicatorColor: Colors.transparent,
            unselectedLabelColor: Color(0xFFCDCDCD),
            isScrollable: true,
            tabs: [
              Tab(
                child: Text(
                  'Cookies',
                  style: TextStyle(fontFamily: 'Varela', fontSize: 21.0),
                ),
              ),
              Tab(
                child: Text('Cookie Cake',
                    style: TextStyle(fontFamily: 'Varela', fontSize: 21.0)),
              ),
              Tab(
                child: Text('Ice Cream',
                    style: TextStyle(fontFamily: 'Varela', fontSize: 21.0)),
              )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: [
                CookieScreen(),
                CookieScreen(),
                CookieScreen(),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFEF7532),
        child: Icon(Icons.fastfood),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: MyBottomBar(),
    );
  }
}
