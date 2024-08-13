import 'package:fl_chart/fl_chart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  final List<FlSpot> dataPoints;
  final bool isCurved;
  final Color lineColor;
  final double lineWidth;
  final Color belowBarColor;
  final double minX;
  final double maxX;
  final double minY;
  final double maxY;

  const LineChartWidget({
    Key? key,
    required this.dataPoints,
    this.isCurved = true,
    this.lineColor = Colors.blue,
    this.lineWidth = 1.0,
    this.belowBarColor = Colors.blueAccent,
    this.minX = 0,
    this.maxX = 100,
    this.minY = 0,
    this.maxY = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minX: minX,
        maxX: maxX,
        minY: minY,
        maxY: maxY,
        lineBarsData: [
          LineChartBarData(
            spots: dataPoints,
            isCurved: isCurved,
            color: Colors.blue,
            barWidth: lineWidth,
            // belowBarData: BarAreaData(
            //   show: true,
            //   color: Colors.green,
            // ),
          ),
        ],
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                return Text(value.toInt().toString());
              },
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                return Text(value.toInt().toString());
              },
            ),
          ),
        ),
        borderData: FlBorderData(
          show: true,
          border: Border.all(color: Colors.grey),
        ),
        gridData: FlGridData(
          show: true,
          drawVerticalLine: true,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: Colors.grey,
              strokeWidth: 5,
            );
          },
        ),
      ),
    );
  }
}
