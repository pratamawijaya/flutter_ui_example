import 'package:covid19_ui/constants.dart';
import 'package:covid19_ui/screens/widget/line_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String number;
  final String iconAsset;
  final Color iconColor;

  const InfoCard({
    Key key,
    this.title,
    this.number,
    this.iconColor,
    this.iconAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constaints) {
      return Container(
        width: constaints.maxWidth / 2 - 10,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: iconColor.withOpacity(0.12),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      iconAsset,
                      height: 12,
                      width: 12,
                      color: iconColor,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(color: kTextColor),
                        children: [
                          TextSpan(
                              text: "$number\n",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .copyWith(fontWeight: FontWeight.bold)),
                          TextSpan(
                            text: "People",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: LineReportChart(),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
