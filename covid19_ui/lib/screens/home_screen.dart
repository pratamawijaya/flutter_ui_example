import 'package:covid19_ui/constants.dart';
import 'package:covid19_ui/widget/info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 40),
            width: double.infinity,
            decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(0.03),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Wrap(
              runSpacing: 20,
              spacing: 20,
              children: <Widget>[
                InfoCard(
                  title: "Confirmed Cases",
                  number: "1000",
                  iconAsset: "assets/icons/running.svg",
                  iconColor: Color(0xFFFF9C00),
                ),
                InfoCard(
                  title: "Total Deaths",
                  number: "758",
                  iconAsset: "assets/icons/running.svg",
                  iconColor: Color(0xFFFF2D55),
                ),
                InfoCard(
                  title: "Total Recovered",
                  number: "348",
                  iconAsset: "assets/icons/running.svg",
                  iconColor: Color(0xFF50E3C2),
                ),
                InfoCard(
                  title: "New Cases",
                  number: "52",
                  iconAsset: "assets/icons/running.svg",
                  iconColor: Color(0xFF5856D6),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          buildPrevention(context),
        ],
      ),
    );
  }

  Padding buildPrevention(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Preventions",
              style: Theme.of(context)
                  .textTheme
                  .title
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                PreventionCard(
                  title: "Wash Hands",
                  iconAsset: "assets/icons/hand_wash.svg",
                ),
                PreventionCard(
                  title: "Use Mask",
                  iconAsset: "assets/icons/use_mask.svg",
                ),
                PreventionCard(
                  title: "Desinfect",
                  iconAsset: "assets/icons/Clean_Disinfect.svg",
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            buildHelpCard(context)
          ],
        ),
      ),
    );
  }

  Container buildHelpCard(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 20, left: MediaQuery.of(context).size.width * .4),
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF60BE93),
                  Color(0xFF1B8D59),
                ],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "Dial 999 for \nMedical Help!",
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(color: Colors.white))
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SvgPicture.asset("assets/icons/nurse.svg"),
          ),
          Positioned(
            top: 30,
            right: 10,
            child: SvgPicture.asset("assets/icons/virus.svg"),
          )
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor.withOpacity(.03),
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
            icon: SvgPicture.asset("assets/icons/search.svg"),
            onPressed: () {}),
      ],
    );
  }
}

class PreventionCard extends StatelessWidget {
  final String title;
  final String iconAsset;

  const PreventionCard({
    Key key,
    this.title,
    this.iconAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SvgPicture.asset(iconAsset),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style:
              Theme.of(context).textTheme.body2.copyWith(color: kPrimaryColor),
        )
      ],
    );
  }
}
