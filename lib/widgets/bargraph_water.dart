import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../functions/water_fn.dart';

class BarGraphWater extends StatelessWidget {
  const BarGraphWater({super.key});
  //int y1;

  @override
  Widget build(BuildContext context) {
    return BarChart(BarChartData(
        maxY: 15,
        minY: 0,
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
                toY: drinkedWater.toDouble(),
                width: 10,
                color: Color.fromARGB(255, 116, 91, 230)),
          ]),
          BarChartGroupData(x: 2, barRods: [
            BarChartRodData(
                toY: drinkedWater.toDouble(),
                width: 10,
                color: Color.fromARGB(255, 116, 91, 230)),
          ]),
          BarChartGroupData(x: 3, barRods: [
            BarChartRodData(
                toY: drinkedWater.toDouble(),
                width: 10,
                color: Color.fromARGB(255, 116, 91, 230)),
          ]),
          BarChartGroupData(x: 4, barRods: [
            BarChartRodData(
                toY: 15, width: 10, color: Color.fromARGB(255, 116, 91, 230)),
          ]),
          BarChartGroupData(x: 5, barRods: [
            BarChartRodData(
                toY: 8.9, width: 10, color: Color.fromARGB(255, 116, 91, 230)),
          ]),
          BarChartGroupData(x: 6, barRods: [
            BarChartRodData(
                toY: 9, width: 10, color: Color.fromARGB(255, 116, 91, 230)),
          ]),
          BarChartGroupData(x: 7, barRods: [
            BarChartRodData(
                toY: 7, width: 10, color: Color.fromARGB(255, 116, 91, 230)),
          ]),
          BarChartGroupData(x: 8, barRods: [
            BarChartRodData(
                toY: 10, width: 10, color: Color.fromARGB(255, 116, 91, 230)),
          ]),
        ]));
  }
}
