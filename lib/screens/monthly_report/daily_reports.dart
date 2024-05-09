import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../constants/colorrr.dart';

class BarChartSample4 extends StatefulWidget {
  BarChartSample4({super.key});

  final Color dark = AppColors.a4;
  final Color normal = AppColors.a4;
  final Color light = AppColors.a4;

  @override
  State<StatefulWidget> createState() => BarChartSample4State();
}

class BarChartSample4State extends State<BarChartSample4> {
  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 10);
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Jan';
        break;
      case 1:
        text = 'Feb';
        break;
      case 2:
        text = 'Mar';
        break;
      case 3:
        text = 'Apr';
        break;
      case 4:
        text = 'Mar';
        break;
      case 5:
        text = 'Jun';
        break;
      case 6:
        text = 'Jul';
        break;
      case 7:
        text = 'Aug';
        break;
      case 8:
        text = 'Sep';
        break;
      case 9:
        text = 'Oct';
        break;
      case 10:
        text = 'Nov';
        break;
      case 11:
        text = 'Dec';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: style),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    if (value == meta.max) {
      return Container();
    }
    const style = TextStyle(
      fontSize: 10,
    );
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(
        meta.formattedValue,
        style: style,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.6,
      child: Padding(
        padding: const EdgeInsets.only(top: 45),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final barsSpace = 14.0 * constraints.maxWidth / 400;
            final barsWidth = 13.0 * constraints.maxWidth / 400;
            return BarChart(
              BarChartData(
                alignment: BarChartAlignment.center,
                barTouchData: BarTouchData(
                  enabled: true,
                ),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 41,
                      getTitlesWidget: bottomTitles,
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 35,
                      getTitlesWidget: leftTitles,
                    ),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                gridData: FlGridData(
                  show: true,
                  checkToShowHorizontalLine: (value) => value % 10 == 0,
                  getDrawingHorizontalLine: (value) => FlLine(
                    color: AppColors.borderColor.withOpacity(0.1),
                    strokeWidth: 1,
                  ),
                  drawVerticalLine: true,
                ),
                borderData: FlBorderData(
                  show: false,
                ),
                groupsSpace: barsSpace,
                barGroups: getData(barsWidth, barsSpace),
              ),
            );
          },
        ),
      ),
    );
  }

  List<BarChartGroupData> getData(double barsWidth, double barsSpace) {
    return [
      BarChartGroupData(
        x: 0,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 17000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 2000000000, widget.dark),
              BarChartRodStackItem(2000000000, 12000000000, widget.normal),
              BarChartRodStackItem(12000000000, 17000000000, widget.light),
            ],
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
          // BarChartRodData(
          //   toY: 24000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 13000000000, widget.dark),
          //     BarChartRodStackItem(13000000000, 14000000000, widget.normal),
          //     BarChartRodStackItem(14000000000, 24000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          // BarChartRodData(
          //   toY: 23000000000.5,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 6000000000.5, widget.dark),
          //     BarChartRodStackItem(6000000000.5, 18000000000, widget.normal),
          //     BarChartRodStackItem(18000000000, 23000000000.5, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          // BarChartRodData(
          //   toY: 29000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 9000000000, widget.dark),
          //     BarChartRodStackItem(9000000000, 15000000000, widget.normal),
          //     BarChartRodStackItem(15000000000, 29000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          // BarChartRodData(
          //   toY: 32000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 2000000000.5, widget.dark),
          //     BarChartRodStackItem(2000000000.5, 17000000000.5, widget.normal),
          //     BarChartRodStackItem(17000000000.5, 32000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
        ],
      ),
      BarChartGroupData(
        x: 1,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 31000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 11000000000, widget.dark),
              BarChartRodStackItem(11000000000, 18000000000, widget.normal),
              BarChartRodStackItem(18000000000, 31000000000, widget.light),
            ],
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
          // BarChartRodData(
          //   toY: 35000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 14000000000, widget.dark),
          //     BarChartRodStackItem(14000000000, 27000000000, widget.normal),
          //     BarChartRodStackItem(27000000000, 35000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          // BarChartRodData(
          //   toY: 31000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 8000000000, widget.dark),
          //     BarChartRodStackItem(8000000000, 24000000000, widget.normal),
          //     BarChartRodStackItem(24000000000, 31000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          // BarChartRodData(
          //   toY: 15000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 6000000000.5, widget.dark),
          //     BarChartRodStackItem(6000000000.5, 12000000000.5, widget.normal),
          //     BarChartRodStackItem(12000000000.5, 15000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          // BarChartRodData(
          //   toY: 17000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 9000000000, widget.dark),
          //     BarChartRodStackItem(9000000000, 15000000000, widget.normal),
          //     BarChartRodStackItem(15000000000, 17000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 24000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 6000000000, widget.dark),
              BarChartRodStackItem(6000000000, 23000000000, widget.normal),
              BarChartRodStackItem(23000000000, 24000000000, widget.light),
            ],
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
          // BarChartRodData(
          //   toY: 32000000000,
          //   rodStackItems: [
          //     //BarChartRodStackItem(0, 7000000000, widget.dark),
          //     //BarChartRodStackItem(7000000000, 24000000000, widget.normal),
          //     //BarChartRodStackItem(24000000000, 32000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          // BarChartRodData(
          //   toY: 14000000000.5,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 1000000000.5, widget.dark),
          //     BarChartRodStackItem(1000000000.5, 12000000000, widget.normal),
          //     BarChartRodStackItem(12000000000, 14000000000.5, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          ///
          // BarChartRodData(
          //   toY: 20000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 4000000000, widget.dark),
          //     BarChartRodStackItem(4000000000, 15000000000, widget.normal),
          //     BarChartRodStackItem(15000000000, 20000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          ///
          // BarChartRodData(
          //   toY: 24000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 4000000000, widget.dark),
          //     BarChartRodStackItem(4000000000, 15000000000, widget.normal),
          //     BarChartRodStackItem(15000000000, 24000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
        ],
      ),

      BarChartGroupData(
        x: 3,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 30000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 6000000000, widget.dark),
              BarChartRodStackItem(6000000000, 23000000000, widget.normal),
              BarChartRodStackItem(23000000000, 30000000000, widget.light),
            ],
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
          // BarChartRodData(
          //   toY: 32000000000,
          //   rodStackItems: [
          //     //BarChartRodStackItem(0, 7000000000, widget.dark),
          //     //BarChartRodStackItem(7000000000, 24000000000, widget.normal),
          //     //BarChartRodStackItem(24000000000, 32000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          // BarChartRodData(
          //   toY: 14000000000.5,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 1000000000.5, widget.dark),
          //     BarChartRodStackItem(1000000000.5, 12000000000, widget.normal),
          //     BarChartRodStackItem(12000000000, 14000000000.5, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          ///
          // BarChartRodData(
          //   toY: 20000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 4000000000, widget.dark),
          //     BarChartRodStackItem(4000000000, 15000000000, widget.normal),
          //     BarChartRodStackItem(15000000000, 20000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          ///
          // BarChartRodData(
          //   toY: 24000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 4000000000, widget.dark),
          //     BarChartRodStackItem(4000000000, 15000000000, widget.normal),
          //     BarChartRodStackItem(15000000000, 24000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
        ],
      ),

      BarChartGroupData(
        x: 4,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 11000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 6000000000, widget.dark),
              BarChartRodStackItem(6000000000, 23000000000, widget.normal),
              BarChartRodStackItem(23000000000, 11000000000, widget.light),
            ],
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
          // BarChartRodData(
          //   toY: 32000000000,
          //   rodStackItems: [
          //     //BarChartRodStackItem(0, 7000000000, widget.dark),
          //     //BarChartRodStackItem(7000000000, 24000000000, widget.normal),
          //     //BarChartRodStackItem(24000000000, 32000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          // BarChartRodData(
          //   toY: 14000000000.5,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 1000000000.5, widget.dark),
          //     BarChartRodStackItem(1000000000.5, 12000000000, widget.normal),
          //     BarChartRodStackItem(12000000000, 14000000000.5, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          ///
          // BarChartRodData(
          //   toY: 20000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 4000000000, widget.dark),
          //     BarChartRodStackItem(4000000000, 15000000000, widget.normal),
          //     BarChartRodStackItem(15000000000, 20000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          ///
          // BarChartRodData(
          //   toY: 24000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 4000000000, widget.dark),
          //     BarChartRodStackItem(4000000000, 15000000000, widget.normal),
          //     BarChartRodStackItem(15000000000, 24000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
        ],
      ),
      BarChartGroupData(
        x: 5,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 33000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 6000000000, widget.dark),
              BarChartRodStackItem(6000000000, 23000000000, widget.normal),
              BarChartRodStackItem(23000000000, 33000000000, widget.light),
            ],
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
          // BarChartRodData(
          //   toY: 32000000000,
          //   rodStackItems: [
          //     //BarChartRodStackItem(0, 7000000000, widget.dark),
          //     //BarChartRodStackItem(7000000000, 24000000000, widget.normal),
          //     //BarChartRodStackItem(24000000000, 32000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          // BarChartRodData(
          //   toY: 14000000000.5,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 1000000000.5, widget.dark),
          //     BarChartRodStackItem(1000000000.5, 12000000000, widget.normal),
          //     BarChartRodStackItem(12000000000, 14000000000.5, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          ///
          // BarChartRodData(
          //   toY: 20000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 4000000000, widget.dark),
          //     BarChartRodStackItem(4000000000, 15000000000, widget.normal),
          //     BarChartRodStackItem(15000000000, 20000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          ///
          // BarChartRodData(
          //   toY: 24000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 4000000000, widget.dark),
          //     BarChartRodStackItem(4000000000, 15000000000, widget.normal),
          //     BarChartRodStackItem(15000000000, 24000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
        ],
      ),
      BarChartGroupData(
        x: 6,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 27000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 6000000000, widget.dark),
              BarChartRodStackItem(6000000000, 23000000000, widget.normal),
              BarChartRodStackItem(23000000000, 27000000000, widget.light),
            ],
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
          // BarChartRodData(
          //   toY: 32000000000,
          //   rodStackItems: [
          //     //BarChartRodStackItem(0, 7000000000, widget.dark),
          //     //BarChartRodStackItem(7000000000, 24000000000, widget.normal),
          //     //BarChartRodStackItem(24000000000, 32000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          // BarChartRodData(
          //   toY: 14000000000.5,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 1000000000.5, widget.dark),
          //     BarChartRodStackItem(1000000000.5, 12000000000, widget.normal),
          //     BarChartRodStackItem(12000000000, 14000000000.5, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          ///
          // BarChartRodData(
          //   toY: 20000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 4000000000, widget.dark),
          //     BarChartRodStackItem(4000000000, 15000000000, widget.normal),
          //     BarChartRodStackItem(15000000000, 20000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          ///
          // BarChartRodData(
          //   toY: 24000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 4000000000, widget.dark),
          //     BarChartRodStackItem(4000000000, 15000000000, widget.normal),
          //     BarChartRodStackItem(15000000000, 24000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
        ],
      ),
      BarChartGroupData(
        x: 7,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 30000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 6000000000, widget.dark),
              BarChartRodStackItem(6000000000, 23000000000, widget.normal),
              BarChartRodStackItem(23000000000, 30000000000, widget.light),
            ],
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
          // BarChartRodData(
          //   toY: 32000000000,
          //   rodStackItems: [
          //     //BarChartRodStackItem(0, 7000000000, widget.dark),
          //     //BarChartRodStackItem(7000000000, 24000000000, widget.normal),
          //     //BarChartRodStackItem(24000000000, 32000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          // BarChartRodData(
          //   toY: 14000000000.5,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 1000000000.5, widget.dark),
          //     BarChartRodStackItem(1000000000.5, 12000000000, widget.normal),
          //     BarChartRodStackItem(12000000000, 14000000000.5, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          ///
          // BarChartRodData(
          //   toY: 20000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 4000000000, widget.dark),
          //     BarChartRodStackItem(4000000000, 15000000000, widget.normal),
          //     BarChartRodStackItem(15000000000, 20000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          ///
          // BarChartRodData(
          //   toY: 24000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 4000000000, widget.dark),
          //     BarChartRodStackItem(4000000000, 15000000000, widget.normal),
          //     BarChartRodStackItem(15000000000, 24000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
        ],
      ),
      BarChartGroupData(
        x: 8,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 21000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 6000000000, widget.dark),
              BarChartRodStackItem(6000000000, 23000000000, widget.normal),
              BarChartRodStackItem(23000000000, 21000000000, widget.light),
            ],
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
          // BarChartRodData(
          //   toY: 32000000000,
          //   rodStackItems: [
          //     //BarChartRodStackItem(0, 7000000000, widget.dark),
          //     //BarChartRodStackItem(7000000000, 24000000000, widget.normal),
          //     //BarChartRodStackItem(24000000000, 32000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          // BarChartRodData(
          //   toY: 14000000000.5,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 1000000000.5, widget.dark),
          //     BarChartRodStackItem(1000000000.5, 12000000000, widget.normal),
          //     BarChartRodStackItem(12000000000, 14000000000.5, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          ///
          // BarChartRodData(
          //   toY: 20000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 4000000000, widget.dark),
          //     BarChartRodStackItem(4000000000, 15000000000, widget.normal),
          //     BarChartRodStackItem(15000000000, 20000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          ///
          // BarChartRodData(
          //   toY: 24000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 4000000000, widget.dark),
          //     BarChartRodStackItem(4000000000, 15000000000, widget.normal),
          //     BarChartRodStackItem(15000000000, 24000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
        ],
      ),
      BarChartGroupData(
        x: 9,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 16000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 6000000000, widget.dark),
              BarChartRodStackItem(6000000000, 23000000000, widget.normal),
              BarChartRodStackItem(23000000000, 16000000000, widget.light),
            ],
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
          // BarChartRodData(
          //   toY: 32000000000,
          //   rodStackItems: [
          //     //BarChartRodStackItem(0, 7000000000, widget.dark),
          //     //BarChartRodStackItem(7000000000, 24000000000, widget.normal),
          //     //BarChartRodStackItem(24000000000, 32000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          // BarChartRodData(
          //   toY: 14000000000.5,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 1000000000.5, widget.dark),
          //     BarChartRodStackItem(1000000000.5, 12000000000, widget.normal),
          //     BarChartRodStackItem(12000000000, 14000000000.5, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          ///
          // BarChartRodData(
          //   toY: 20000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 4000000000, widget.dark),
          //     BarChartRodStackItem(4000000000, 15000000000, widget.normal),
          //     BarChartRodStackItem(15000000000, 20000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          ///
          // BarChartRodData(
          //   toY: 24000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 4000000000, widget.dark),
          //     BarChartRodStackItem(4000000000, 15000000000, widget.normal),
          //     BarChartRodStackItem(15000000000, 24000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
        ],
      ),
      BarChartGroupData(
        x: 10,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 29000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 6000000000, widget.dark),
              BarChartRodStackItem(6000000000, 23000000000, widget.normal),
              BarChartRodStackItem(23000000000, 29000000000, widget.light),
            ],
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
          // BarChartRodData(
          //   toY: 32000000000,
          //   rodStackItems: [
          //     //BarChartRodStackItem(0, 7000000000, widget.dark),
          //     //BarChartRodStackItem(7000000000, 24000000000, widget.normal),
          //     //BarChartRodStackItem(24000000000, 32000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          // BarChartRodData(
          //   toY: 14000000000.5,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 1000000000.5, widget.dark),
          //     BarChartRodStackItem(1000000000.5, 12000000000, widget.normal),
          //     BarChartRodStackItem(12000000000, 14000000000.5, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          ///
          // BarChartRodData(
          //   toY: 20000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 4000000000, widget.dark),
          //     BarChartRodStackItem(4000000000, 15000000000, widget.normal),
          //     BarChartRodStackItem(15000000000, 20000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          ///
          // BarChartRodData(
          //   toY: 24000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 4000000000, widget.dark),
          //     BarChartRodStackItem(4000000000, 15000000000, widget.normal),
          //     BarChartRodStackItem(15000000000, 24000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
        ],
      ),
      BarChartGroupData(
        x: 11,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 14000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 6000000000, widget.dark),
              BarChartRodStackItem(6000000000, 23000000000, widget.normal),
              BarChartRodStackItem(23000000000, 14000000000, widget.light),
            ],
            borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
          // BarChartRodData(
          //   toY: 32000000000,
          //   rodStackItems: [
          //     //BarChartRodStackItem(0, 7000000000, widget.dark),
          //     //BarChartRodStackItem(7000000000, 24000000000, widget.normal),
          //     //BarChartRodStackItem(24000000000, 32000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          // BarChartRodData(
          //   toY: 14000000000.5,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 1000000000.5, widget.dark),
          //     BarChartRodStackItem(1000000000.5, 12000000000, widget.normal),
          //     BarChartRodStackItem(12000000000, 14000000000.5, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          ///
          // BarChartRodData(
          //   toY: 20000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 4000000000, widget.dark),
          //     BarChartRodStackItem(4000000000, 15000000000, widget.normal),
          //     BarChartRodStackItem(15000000000, 20000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
          ///
          // BarChartRodData(
          //   toY: 24000000000,
          //   rodStackItems: [
          //     BarChartRodStackItem(0, 4000000000, widget.dark),
          //     BarChartRodStackItem(4000000000, 15000000000, widget.normal),
          //     BarChartRodStackItem(15000000000, 24000000000, widget.light),
          //   ],
          //   borderRadius: BorderRadius.zero,
          //   width: barsWidth,
          // ),
        ],
      ),

      ///
      // BarChartGroupData(
      //   x: 3,
      //   barsSpace: barsSpace,
      //   barRods: [
      //     BarChartRodData(
      //       toY: 14000000000,
      //       rodStackItems: [
      //         BarChartRodStackItem(0, 1000000000.5, widget.dark),
      //         BarChartRodStackItem(1000000000.5, 12000000000, widget.normal),
      //         BarChartRodStackItem(12000000000, 14000000000, widget.light),
      //       ],
      //       borderRadius: BorderRadius.zero,
      //       width: barsWidth,
      //     ),
      //     // BarChartRodData(
      //     //   toY: 27000000000,
      //     //   rodStackItems: [
      //     //     BarChartRodStackItem(0, 7000000000, widget.dark),
      //     //     BarChartRodStackItem(7000000000, 25000000000, widget.normal),
      //     //     BarChartRodStackItem(25000000000, 27000000000, widget.light),
      //     //   ],
      //     //   borderRadius: BorderRadius.zero,
      //     //   width: barsWidth,
      //     // ),
      //
      //     ///
      //     // BarChartRodData(
      //     //   toY: 29000000000,
      //     //   rodStackItems: [
      //     //     BarChartRodStackItem(0, 6000000000, widget.dark),
      //     //     BarChartRodStackItem(6000000000, 23000000000, widget.normal),
      //     //     BarChartRodStackItem(23000000000, 29000000000, widget.light),
      //     //   ],
      //     //   borderRadius: BorderRadius.zero,
      //     //   width: barsWidth,
      //     // ),
      //
      //     ///
      //     // BarChartRodData(
      //     //   toY: 16000000000.5,
      //     //   rodStackItems: [
      //     //     BarChartRodStackItem(0, 9000000000, widget.dark),
      //     //     BarChartRodStackItem(9000000000, 15000000000, widget.normal),
      //     //     BarChartRodStackItem(15000000000, 16000000000.5, widget.light),
      //     //   ],
      //     //   borderRadius: BorderRadius.zero,
      //     //   width: barsWidth,
      //     // ),
      //     ///
      //     // BarChartRodData(
      //     //   toY: 15000000000,
      //     //   rodStackItems: [
      //     //     BarChartRodStackItem(0, 7000000000, widget.dark),
      //     //     BarChartRodStackItem(7000000000, 12000000000.5, widget.normal),
      //     //     BarChartRodStackItem(12000000000.5, 15000000000, widget.light),
      //     //   ],
      //     //   borderRadius: BorderRadius.zero,
      //     //   width: barsWidth,
      //     // ),
      //   ],
      // ),
    ];
  }
}
