import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class WeightProgressChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: LineChart(
        LineChartData(
          gridData: FlGridData(
            show: true,
            drawVerticalLine: false,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: Colors.grey.withOpacity(0.3),
                strokeWidth: 1,
              );
            },
          ),
          titlesData: FlTitlesData(
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false), // Hides the top titles
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false), // Hides the left titles
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 1,
                getTitlesWidget: (value, meta) {
                  const style = TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  );
                  switch (value.toInt()) {
                    case 0:
                      return Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text('Sun', style: style),
                      );
                    case 1:
                      return Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text('Mon', style: style),
                      );
                    case 2:
                      return Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text('Tue', style: style),
                      );
                    case 3:
                      return Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text('Wed', style: style),
                      );
                    case 4:
                      return Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text('Thu', style: style.copyWith(color: Colors.purple)),
                      );
                    case 5:
                      return Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text('Fri', style: style),
                      );
                    case 6:
                      return Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text('Sat', style: style),
                      );
                    default:
                      return Text('');
                  }
                },
                reservedSize: 30,
              ),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 20,
                reservedSize: 32,
                getTitlesWidget: (value, meta) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      value.toInt().toString(),
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: Colors.grey.withOpacity(0.3)),
          ),
          minX: 0,
          maxX: 6,
          minY: 0,
          maxY: 100,
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 40),
                FlSpot(1, 60),
                FlSpot(2, 45),
                FlSpot(3, 80),
                FlSpot(4, 60),
                FlSpot(5, 70),
                FlSpot(6, 50),
              ],
              isCurved: true,
              color: Colors.blue,
              barWidth: 2,
              isStrokeCapRound: true,
              dotData: FlDotData(show: true),
              belowBarData: BarAreaData(
                show: true,
                color: Colors.blue.withOpacity(0.1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
