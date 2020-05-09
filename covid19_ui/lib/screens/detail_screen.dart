import 'package:covid19_ui/constants.dart';
import 'package:covid19_ui/widget/weekly_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatelessWidget {
  final String title;
  final String number;

  const DetailScreen({Key key, this.title, this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildDetailAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 21),
                    blurRadius: 53,
                    color: Colors.black.withOpacity(0.05),
                  )
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    buildTitleWithMore(),
                    SizedBox(
                      height: 10,
                    ),
                    buildNumberInfo(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "From Health Center",
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        color: kTextMediumColor,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    WeeklyChart(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        buildInfoTextWithPercent(
                          title: "From Last Week",
                          percentage: "6.4%",
                        ),
                        buildInfoTextWithPercent(
                          title: "Recovered",
                          percentage: "3.4%",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            buildGlobalMap(),
          ],
        ),
      ),
    );
  }

  Container buildGlobalMap() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 21),
            blurRadius: 54,
            color: Colors.black.withOpacity(0.05),
          )
        ],
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Global Map",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SvgPicture.asset("assets/icons/more.svg"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SvgPicture.asset("assets/icons/map.svg"),
        ],
      ),
    );
  }

  Row buildInfoTextWithPercent({String title, String percentage}) {
    return Row(
      children: <Widget>[
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "$percentage\n",
                style: TextStyle(
                  fontSize: 20,
                  color: kPrimaryColor,
                ),
              ),
              TextSpan(
                  text: title,
                  style: TextStyle(
                    color: kTextMediumColor,
                    height: 1.5,
                  ))
            ],
          ),
        )
      ],
    );
  }

  Row buildNumberInfo() {
    return Row(
      children: <Widget>[
        Text(
          number,
          style: TextStyle(
              color: kPrimaryColor, fontSize: 45, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "5.9%",
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 12,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        SvgPicture.asset("assets/icons/increase.svg")
      ],
    );
  }

  Row buildTitleWithMore() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
              color: kTextMediumColor,
              fontWeight: FontWeight.w900,
              fontSize: 15),
        ),
        SvgPicture.asset("assets/icons/more.svg")
      ],
    );
  }

  AppBar buildDetailAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        color: kPrimaryColor,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
      ],
    );
  }
}
