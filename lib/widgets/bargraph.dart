import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_charts/flutter_charts.dart';

class BarGraphWidget extends StatelessWidget {
  const BarGraphWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(BarChartData(
        maxY: 65,
        minY: 40,
        gridData: FlGridData(show: false),
        titlesData: FlTitlesData(
          show: true,
          topTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          // leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        // borderData: FlBorderData(show: false),
        borderData: FlBorderData(
          border: const Border(
            top: BorderSide.none,
            right: BorderSide.none,
            left: BorderSide(width: 1),
            bottom: BorderSide(width: 1),
          ),
        ),
        groupsSpace: 50,

        // add bars
        barGroups: [
          BarChartGroupData(x: 1, barRods: [
            BarChartRodData(
                toY: 58, width: 10, color: Color.fromARGB(255, 116, 91, 230)),
          ]),
          BarChartGroupData(x: 2, barRods: [
            BarChartRodData(
                toY: 57, width: 10, color: Color.fromARGB(255, 116, 91, 230)),
          ]),
          BarChartGroupData(x: 3, barRods: [
            BarChartRodData(
                toY: 56, width: 10, color: Color.fromARGB(255, 116, 91, 230)),
          ]),
          BarChartGroupData(x: 4, barRods: [
            BarChartRodData(
                toY: 54, width: 10, color: Color.fromARGB(255, 116, 91, 230)),
          ]),
          BarChartGroupData(x: 5, barRods: [
            BarChartRodData(
                toY: 53, width: 10, color: Color.fromARGB(255, 116, 91, 230)),
          ]),
          BarChartGroupData(x: 6, barRods: [
            BarChartRodData(
                toY: 55, width: 10, color: Color.fromARGB(255, 116, 91, 230)),
          ]),
          BarChartGroupData(x: 7, barRods: [
            BarChartRodData(
                toY: 56, width: 10, color: Color.fromARGB(255, 116, 91, 230)),
          ]),
          BarChartGroupData(x: 8, barRods: [
            BarChartRodData(
                toY: 57, width: 10, color: Color.fromARGB(255, 116, 91, 230)),
          ]),
        ]));
  }
}
