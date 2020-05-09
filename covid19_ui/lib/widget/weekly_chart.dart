import 'package:covid19_ui/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class WeeklyChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: BarChart(
        BarChartData(
          barGroups: getBarGroups(),
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(
            leftTitles: SideTitles(
              showTitles: false,
            ),
            bottomTitles: SideTitles(
                showTitles: true,
                getTitles: getWeek,
                textStyle: TextStyle(
                  color: kTextLightColor,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                )),
          ),
        ),
      ),
    );
  }
}

getBarGroups() {
  List<double> barChartDatas = [6, 10, 8, 7, 10, 15, 9];
  List<BarChartGroupData> barChartGroups = [];

  barChartDatas.asMap().forEach(
        (key, value) => barChartGroups.add(
          BarChartGroupData(
            x: key,
            barRods: [
              BarChartRodData(
                y: value,
                color: key == 4 ? kPrimaryColor : kInactiveChartColor,
                width: 16,
              )
            ],
          ),
        ),
      );
  return barChartGroups;
}

String getWeek(double value) {
  switch (value.toInt()) {
    case 0:
      return 'MON';
    case 1:
      return 'TUE';
    case 2:
      return 'WED';
    case 3:
      return "THU";
    case 4:
      return "FRI";
    case 5:
      return "SAT";
    case 6:
      return "SUN";
  }
}
