import 'package:flutter/material.dart';

class CookieDetailScreen extends StatelessWidget {
  final assetPath, cookiePrice, cookieName;

  CookieDetailScreen({this.assetPath, this.cookiePrice, this.cookieName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
            onPressed: () {
              Navigator.of(context).pop();
            }),
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
        children: <Widget>[
          SizedBox(height: 15.0),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text('Cookie'),
          ),
          SizedBox(height: 15.0),
          Hero(
            tag: "anu",
            child: Image.asset(
              assetPath,
              height: 150,
              width: 100,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 15.0,)
        ],
      ),
    );
  }
}
