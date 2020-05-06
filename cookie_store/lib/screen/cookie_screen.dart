import 'package:cookie_store/screen/cookie_detail_screen.dart';
import 'package:flutter/material.dart';

class CookieScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
            padding: EdgeInsets.only(right: 15.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.8,
              children: <Widget>[
                _buildCard("Cookie Mint", "assets/images/cookie_1.jpg", false,
                    "15.000", context),
                _buildCard("Cookie Cream", "assets/images/cookie_2.jpg", true,
                    "15.000", context),
                _buildCard("Cookie Choco", "assets/images/cookie_3.jpg", false,
                    "15.000", context),
                _buildCard("Cookie Choco", "assets/images/cookie_1.jpg", false,
                    "15.000", context),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildCard(
    String name, String imgPath, bool isFavorite, String price, context) {
  return Padding(
    padding: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 5.0, right: 5.0),
    child: InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => CookieDetailScreen(
                  assetPath: imgPath,
                  cookieName: name,
                  cookiePrice: price,
                )));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0,
              )
            ],
            color: Colors.white),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  isFavorite
                      ? Icon(Icons.favorite, color: Color(0xFFEF7532))
                      : Icon(
                          Icons.favorite_border,
                          color: Color(0xFFEF7532),
                        )
                ],
              ),
            ),
            Hero(
              tag: imgPath,
              child: Container(
                height: 75.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imgPath),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 7.0,
            ),
            Text(
              price,
              style: TextStyle(
                  color: Color(0xFFCC8053),
                  fontFamily: 'Varela',
                  fontSize: 14.0),
            ),
            Text(
              name,
              style: TextStyle(
                  color: Color(0xFF575E67),
                  fontFamily: 'Varela',
                  fontSize: 14.0),
            ),
          ],
        ),
      ),
    ),
  );
}
