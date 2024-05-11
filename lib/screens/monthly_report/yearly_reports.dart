///LineChartSample5
import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';

class LineChartSample5 extends StatelessWidget {
  LineChartSample5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Generate some dummy data for the chart
    final List<FlSpot> dummyData1 = List.generate(8, (index) {
      return FlSpot(index.toDouble(), index * Random().nextDouble());
    });

    final List<FlSpot> dummyData2 = List.generate(8, (index) {
      return FlSpot(index.toDouble(), index * Random().nextDouble());
    });

    final List<FlSpot> dummyData3 = List.generate(8, (index) {
      return FlSpot(index.toDouble(), index * Random().nextDouble());
    });
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    Widget bottomTitleWidgets(double value, TitleMeta meta, double chartWidth) {
      final style = TextStyle(
        fontWeight: FontWeight.w500,
        color: AppColors.black,
        fontFamily: 'Digital',
        fontSize: screenHeight / 75,
        //15 * chartWidth / 1000,
      );
      String text;
      switch (value.toInt()) {
        case 0:
          text = '0';
          break;
        case 1:
          text = 'Feb1';
          break;
        case 2:
          text = 'Feb5';
          break;
        case 3:
          text = 'Feb10';
          break;
        case 4:
          text = 'Feb15';
          break;
        case 5:
          text = 'Feb20';
          break;
        case 6:
          text = 'Feb25';
          break;

        case 7:
          text = 'Feb29';
          break;
        default:
          return Container();
      }

      return SideTitleWidget(
        axisSide: meta.axisSide,
        child: Text(text, style: style),
      );
    }

    Widget bottomTitleWidgets2(
        double value, TitleMeta meta, double chartWidth) {
      final style = TextStyle(
        fontWeight: FontWeight.w500,
        color: AppColors.black,
        fontFamily: 'Digital',
        fontSize: screenHeight / 75,
        //15 * chartWidth / 1000,
      );
      String text;
      switch (value.toInt()) {
        case 0:
          text = '0';
          break;
        case 1:
          text = 'Sun';
          break;
        case 2:
          text = 'Mon';
          break;
        case 3:
          text = 'Tue';
          break;
        case 4:
          text = 'Wed';
          break;
        case 5:
          text = 'Thr';
          break;
        case 6:
          text = 'Fri';
          break;

        case 7:
          text = 'Sat';
          break;
        default:
          return Container();
      }

      return SideTitleWidget(
        axisSide: meta.axisSide,
        child: Text(text, style: style),
      );
    }

    Widget leftTitleWidgets(double value, TitleMeta meta, double chartWidth) {
      final style = TextStyle(
        fontWeight: FontWeight.w500,
        color: AppColors.black,
        fontFamily: 'Digital',
        fontSize: screenHeight / 75,
        //15 * chartWidth / 1000,
      );
      String text;
      switch (value.toInt()) {
        case 0:
          text = '0';
          break;
        case 1:
          text = '30';
          break;
        case 2:
          text = '60';
          break;
        case 3:
          text = '90';
          break;
        case 4:
          text = '120';
          break;
        case 5:
          text = '150';
          break;
        case 6:
          text = '180';
          break;

        case 7:
          text = '210';
          break;
        default:
          return Container();
      }

      return SideTitleWidget(
        axisSide: meta.axisSide,
        child: Text(text, style: style),
      );
    }

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.th1whtbackgrd,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Material(
                  color: AppColors.th1wht2,
                  shadowColor: AppColors.black,
                  borderRadius: BorderRadius.circular(10),
                  elevation: 5,
                  child: Container(
                    height: size.height * 0.521,
                    decoration: BoxDecoration(
                      color: AppColors.th1wht2,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(2),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text(
                          'Current',
                          style: GoogleFonts.poppins(
                              fontSize: size.height * 0.02,
                              color: AppColors.graphtopbar),
                        ),
                        SizedBox(
                          height: screenHeight / 2.3,
                          //width: size.width * 0.92,
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              return LineChart(
                                LineChartData(
                                  titlesData: FlTitlesData(
                                    leftTitles: AxisTitles(
                                      axisNameWidget: Text(
                                        '<-----Units(KWH)------>',
                                        style: GoogleFonts.roboto(
                                          fontSize: size.height * 0.015,
                                        ),
                                      ),
                                      axisNameSize: 18,
                                      sideTitles: SideTitles(
                                        showTitles: true,
                                        interval: 1,
                                        getTitlesWidget: (value, meta) {
                                          return leftTitleWidgets(
                                            value,
                                            meta,
                                            constraints.maxWidth,
                                          );
                                        },
                                        reservedSize: 27,
                                        //reservedSize: 32,
                                      ),
                                    ),
                                    bottomTitles: AxisTitles(
                                      // axisNameWidget: Text(
                                      //     '<------ Previously weeks ------>'),
                                      sideTitles: SideTitles(
                                        showTitles: true,
                                        interval: 1,
                                        getTitlesWidget: (value, meta) {
                                          return bottomTitleWidgets2(
                                            value,
                                            meta,
                                            constraints.maxWidth,
                                          );
                                        },
                                        reservedSize: 20,
                                      ),
                                    ),
                                    rightTitles: AxisTitles(
                                      axisNameWidget: Text(
                                        '',
                                        style: GoogleFonts.roboto(
                                          fontSize: size.height * 0.015,
                                        ),
                                      ),
                                      sideTitles: SideTitles(
                                        showTitles: false,
                                        reservedSize: 30,
                                      ),
                                    ),
                                    topTitles: AxisTitles(
                                      // axisNameWidget: Text(
                                      //   'Previous weeks------>',
                                      //   textAlign: TextAlign.left,
                                      // ),
                                      axisNameSize: 0,
                                      sideTitles: SideTitles(
                                        showTitles: false,
                                        reservedSize: screenHeight / 62,
                                      ),
                                    ),
                                  ),
                                  borderData: FlBorderData(show: false),
                                  lineBarsData: [
                                    // Main line series
                                    LineChartBarData(
                                      spots: dummyData1,
                                      isCurved: false,
                                      barWidth: 2,
                                      color: AppColors.a16,

                                      ///todo: this is the shadow color area....
                                      belowBarData: BarAreaData(
                                        show: true,
                                        color: Color(0xffdff2ff),
                                        // gradient: LinearGradient(
                                        // //  colors: Colors.red,
                                        //   // gradientColors
                                        //   //     .map((color) => color.withOpacity(0.3))
                                        //   //     .toList(),
                                        // ),
                                      ),
                                    ),
                                    // Shadow line series
                                    LineChartBarData(
                                      spots: dummyData1,
                                      isCurved: false,
                                      barWidth: 2,
                                      color: Colors.indigo.withOpacity(
                                          0.5), // Adjust opacity as needed
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: size.height * 0.007,
                                  width: size.width * 0.04,
                                  decoration: BoxDecoration(
                                    color: AppColors.a3,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  //color: Colors.red,
                                ),

                                ///
                                // SizedBox(
                                //   height: size.height * 0.012,
                                // ),
                                // Container(
                                //   height: size.height * 0.007,
                                //   width: size.width * 0.04,
                                //   decoration: BoxDecoration(
                                //     color: Colors.red,
                                //     borderRadius: BorderRadius.circular(10),
                                //   ),
                                //   //color: Colors.red,
                                // ),
                              ],
                            ),
                            SizedBox(
                              width: size.width * 0.015,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Container(
                                //   height: size.height * 0.007,
                                //   width: size.width * 0.04,
                                //   decoration: BoxDecoration(
                                //     color: Colors.red,
                                //     borderRadius: BorderRadius.circular(10),
                                //   ),
                                //   //color: Colors.red,
                                // ),
                                // SizedBox(
                                //   width: size.width * 0.01,
                                // ),
                                ///
                                // Text(
                                //   'DG KWH',
                                //   style: GoogleFonts.poppins(
                                //       fontSize: size.height * 0.015,
                                //       color: AppColors.black),
                                // ),
                                Text(
                                  'Grid KWH',
                                  style: GoogleFonts.poppins(
                                      fontSize: size.height * 0.015,
                                      color: AppColors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Material(
                  color: AppColors.th1wht2,
                  shadowColor: AppColors.black,
                  borderRadius: BorderRadius.circular(10),
                  elevation: 5,
                  child: Container(
                    height: size.height * 0.521,
                    decoration: BoxDecoration(
                      color: AppColors.th1wht2,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(2),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text(
                          'Week 1',
                          style: GoogleFonts.poppins(
                              fontSize: size.height * 0.02,
                              color: AppColors.graphtopbar),
                        ),
                        SizedBox(
                          height: screenHeight / 2.3,
                          //width: size.width * 0.92,
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              return LineChart(
                                LineChartData(
                                  titlesData: FlTitlesData(
                                    leftTitles: AxisTitles(
                                      axisNameWidget: Text(
                                        '<-----Units(KWH)------>',
                                        style: GoogleFonts.roboto(
                                          fontSize: size.height * 0.015,
                                        ),
                                      ),
                                      axisNameSize: 18,
                                      sideTitles: SideTitles(
                                        showTitles: true,
                                        interval: 1,
                                        getTitlesWidget: (value, meta) {
                                          return leftTitleWidgets(
                                            value,
                                            meta,
                                            constraints.maxWidth,
                                          );
                                        },
                                        reservedSize: 27,
                                        //reservedSize: 32,
                                      ),
                                    ),
                                    bottomTitles: AxisTitles(
                                      // axisNameWidget: Text(
                                      //     '<------ Previously weeks ------>'),
                                      sideTitles: SideTitles(
                                        showTitles: true,
                                        interval: 1,
                                        getTitlesWidget: (value, meta) {
                                          return bottomTitleWidgets2(
                                            value,
                                            meta,
                                            constraints.maxWidth,
                                          );
                                        },
                                        reservedSize: 20,
                                      ),
                                    ),
                                    rightTitles: AxisTitles(
                                      axisNameWidget: Text(
                                        '',
                                        style: GoogleFonts.roboto(
                                          fontSize: size.height * 0.015,
                                        ),
                                      ),
                                      sideTitles: SideTitles(
                                        showTitles: false,
                                        reservedSize: 30,
                                      ),
                                    ),
                                    topTitles: AxisTitles(
                                      // axisNameWidget: Text(
                                      //   'Previous weeks------>',
                                      //   textAlign: TextAlign.left,
                                      // ),
                                      axisNameSize: 0,
                                      sideTitles: SideTitles(
                                        showTitles: false,
                                        reservedSize: screenHeight / 62,
                                      ),
                                    ),
                                  ),
                                  borderData: FlBorderData(show: false),
                                  lineBarsData: [
                                    // Main line series
                                    LineChartBarData(
                                      spots: dummyData1,
                                      isCurved: false,
                                      barWidth: 2,
                                      color: AppColors.a16,

                                      ///todo: this is the shadow color area....
                                      belowBarData: BarAreaData(
                                        show: true,
                                        color: Color(0xffdff2ff),
                                        // gradient: LinearGradient(
                                        // //  colors: Colors.red,
                                        //   // gradientColors
                                        //   //     .map((color) => color.withOpacity(0.3))
                                        //   //     .toList(),
                                        // ),
                                      ),
                                    ),
                                    // Shadow line series
                                    LineChartBarData(
                                      spots: dummyData1,
                                      isCurved: false,
                                      barWidth: 2,
                                      color: Colors.indigo.withOpacity(
                                          0.5), // Adjust opacity as needed
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: size.height * 0.007,
                                  width: size.width * 0.04,
                                  decoration: BoxDecoration(
                                    color: AppColors.a3,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  //color: Colors.red,
                                ),

                                ///
                                // SizedBox(
                                //   height: size.height * 0.012,
                                // ),
                                // Container(
                                //   height: size.height * 0.007,
                                //   width: size.width * 0.04,
                                //   decoration: BoxDecoration(
                                //     color: Colors.red,
                                //     borderRadius: BorderRadius.circular(10),
                                //   ),
                                //   //color: Colors.red,
                                // ),
                              ],
                            ),
                            SizedBox(
                              width: size.width * 0.015,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Container(
                                //   height: size.height * 0.007,
                                //   width: size.width * 0.04,
                                //   decoration: BoxDecoration(
                                //     color: Colors.red,
                                //     borderRadius: BorderRadius.circular(10),
                                //   ),
                                //   //color: Colors.red,
                                // ),
                                // SizedBox(
                                //   width: size.width * 0.01,
                                // ),
                                ///
                                // Text(
                                //   'DG KWH',
                                //   style: GoogleFonts.poppins(
                                //       fontSize: size.height * 0.015,
                                //       color: AppColors.black),
                                // ),
                                Text(
                                  'Grid KWH',
                                  style: GoogleFonts.poppins(
                                      fontSize: size.height * 0.015,
                                      color: AppColors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///old code before 10 may...

// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
//
// import '../../constants/colorrr.dart';
//
// class LineChartSample5 extends StatefulWidget {
//   LineChartSample5({
//     super.key,
//     Color? gradientColor1,
//     Color? gradientColor2,
//     Color? gradientColor3,
//     Color? indicatorStrokeColor,
//   })  : gradientColor1 = gradientColor1 ?? AppColors.contentColorBlue,
//         gradientColor2 = gradientColor2 ?? AppColors.contentColorPink,
//         gradientColor3 = gradientColor3 ?? AppColors.contentColorRed,
//         indicatorStrokeColor = indicatorStrokeColor ?? AppColors.mainTextColor1;
//
//   final Color gradientColor1;
//   final Color gradientColor2;
//   final Color gradientColor3;
//   final Color indicatorStrokeColor;
//
//   @override
//   State<LineChartSample5> createState() => _LineChartSample5State();
// }
//
// class _LineChartSample5State extends State<LineChartSample5> {
//   List<int> showingTooltipOnSpots = [1, 3, 5];
//
//   List<FlSpot> get allSpots => const [
//         FlSpot(0, 1),
//         FlSpot(1, 2),
//         FlSpot(2, 1.5),
//         FlSpot(3, 3),
//         FlSpot(4, 3.5),
//         FlSpot(5, 5),
//         FlSpot(6, 8),
//       ];
//
//   Widget bottomTitleWidgets(double value, TitleMeta meta, double chartWidth) {
//     final style = TextStyle(
//       fontWeight: FontWeight.w500,
//       color: AppColors.black,
//       fontFamily: 'Digital',
//       fontSize: 17 * chartWidth / 500,
//     );
//     String text;
//     switch (value.toInt()) {
//       case 0:
//         text = 'WK1';
//         break;
//       case 1:
//         text = 'WK2';
//         break;
//       case 2:
//         text = 'WK3';
//         break;
//       case 3:
//         text = 'WK4';
//         break;
//       case 4:
//         text = 'WK5';
//         break;
//       case 5:
//         text = 'WK6';
//         break;
//       case 6:
//         text = 'WK7';
//         break;
//       default:
//         return Container();
//     }
//
//     return SideTitleWidget(
//       axisSide: meta.axisSide,
//       child: Text(text, style: style),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final lineBarsData = [
//       LineChartBarData(
//         showingIndicators: showingTooltipOnSpots,
//         spots: allSpots,
//         isCurved: true,
//         barWidth: 4,
//         shadow: const Shadow(
//           blurRadius: 8,
//         ),
//         belowBarData: BarAreaData(
//           show: true,
//           gradient: LinearGradient(
//             colors: [
//               widget.gradientColor1.withOpacity(0.4),
//               widget.gradientColor2.withOpacity(0.4),
//               widget.gradientColor3.withOpacity(0.4),
//             ],
//           ),
//         ),
//         dotData: FlDotData(show: false),
//         gradient: LinearGradient(
//           colors: [
//             widget.gradientColor1,
//             widget.gradientColor2,
//             widget.gradientColor3,
//           ],
//           stops: const [0.1, 0.4, 0.9],
//         ),
//       ),
//     ];
//
//     final tooltipsOnBar = lineBarsData[0];
//
//     return AspectRatio(
//       aspectRatio: 2.5,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(
//           horizontal: 24.0,
//           vertical: 24,
//         ),
//         child: LayoutBuilder(builder: (context, constraints) {
//           return LineChart(
//             LineChartData(
//               showingTooltipIndicators: showingTooltipOnSpots.map((index) {
//                 return ShowingTooltipIndicators([
//                   LineBarSpot(
//                     tooltipsOnBar,
//                     lineBarsData.indexOf(tooltipsOnBar),
//                     tooltipsOnBar.spots[index],
//                   ),
//                 ]);
//               }).toList(),
//               lineTouchData: LineTouchData(
//                 enabled: true,
//                 handleBuiltInTouches: false,
//                 touchCallback:
//                     (FlTouchEvent event, LineTouchResponse? response) {
//                   if (response == null || response.lineBarSpots == null) {
//                     return;
//                   }
//                   if (event is FlTapUpEvent) {
//                     final spotIndex = response.lineBarSpots!.first.spotIndex;
//                     setState(() {
//                       if (showingTooltipOnSpots.contains(spotIndex)) {
//                         showingTooltipOnSpots.remove(spotIndex);
//                       } else {
//                         showingTooltipOnSpots.add(spotIndex);
//                       }
//                     });
//                   }
//                 },
//                 mouseCursorResolver:
//                     (FlTouchEvent event, LineTouchResponse? response) {
//                   if (response == null || response.lineBarSpots == null) {
//                     return SystemMouseCursors.basic;
//                   }
//                   return SystemMouseCursors.click;
//                 },
//                 getTouchedSpotIndicator:
//                     (LineChartBarData barData, List<int> spotIndexes) {
//                   return spotIndexes.map((index) {
//                     return TouchedSpotIndicatorData(
//                       FlLine(
//                         color: Colors.pink,
//                       ),
//                       FlDotData(
//                         show: true,
//                         getDotPainter: (spot, percent, barData, index) =>
//                             FlDotCirclePainter(
//                           radius: 8,
//                           color: lerpGradient(
//                             barData.gradient!.colors,
//                             barData.gradient!.stops!,
//                             percent / 100,
//                           ),
//                           strokeWidth: 2,
//                           strokeColor: widget.indicatorStrokeColor,
//                         ),
//                       ),
//                     );
//                   }).toList();
//                 },
//                 touchTooltipData: LineTouchTooltipData(
//                   /// getTooltipColor: (touchedSpot) => Colors.pink,
//                   tooltipRoundedRadius: 5,
//                   getTooltipItems: (List<LineBarSpot> lineBarsSpot) {
//                     return lineBarsSpot.map((lineBarSpot) {
//                       return LineTooltipItem(
//                         lineBarSpot.y.toString(),
//                         const TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       );
//                     }).toList();
//                   },
//                 ),
//               ),
//               lineBarsData: lineBarsData,
//               minY: 0,
//               titlesData: FlTitlesData(
//                 leftTitles: AxisTitles(
//                   // axisNameWidget: Text('Consumed Units------>'),
//                   axisNameSize: 20,
//                   sideTitles: SideTitles(
//                     showTitles: true,
//                     reservedSize: 15,
//                   ),
//                 ),
//                 bottomTitles: AxisTitles(
//                   axisNameWidget: Text('<------ Previously weeks ------>'),
//                   sideTitles: SideTitles(
//                     showTitles: true,
//                     interval: 1,
//                     getTitlesWidget: (value, meta) {
//                       return bottomTitleWidgets(
//                         value,
//                         meta,
//                         constraints.maxWidth,
//                       );
//                     },
//                     reservedSize: 50,
//                   ),
//                 ),
//                 rightTitles: AxisTitles(
//                   axisNameWidget: Text('<------Consumed Units------>'),
//                   sideTitles: SideTitles(
//                     showTitles: false,
//                     reservedSize: 13,
//                   ),
//                 ),
//                 topTitles: AxisTitles(
//                   // axisNameWidget: Text(
//                   //   'Previous weeks------>',
//                   //   textAlign: TextAlign.left,
//                   // ),
//                   axisNameSize: 24,
//                   sideTitles: SideTitles(
//                     showTitles: false,
//                     reservedSize: 0,
//                   ),
//                 ),
//               ),
//               gridData: FlGridData(show: true),
//               borderData: FlBorderData(
//                 show: true,
//                 border: Border.all(
//                   color: AppColors.borderColor,
//                 ),
//               ),
//             ),
//           );
//         }),
//       ),
//     );
//   }
// }
//
// /// Lerps between a [LinearGradient] colors, based on [t]
// Color lerpGradient(List<Color> colors, List<double> stops, double t) {
//   if (colors.isEmpty) {
//     throw ArgumentError('"colors" is empty.');
//   } else if (colors.length == 1) {
//     return colors[0];
//   }
//
//   if (stops.length != colors.length) {
//     stops = [];
//
//     /// provided gradientColorStops is invalid and we calculate it here
//     colors.asMap().forEach((index, color) {
//       final percent = 1.0 / (colors.length - 1);
//       stops.add(percent * index);
//     });
//   }
//
//   for (var s = 0; s < stops.length - 1; s++) {
//     final leftStop = stops[s];
//     final rightStop = stops[s + 1];
//     final leftColor = colors[s];
//     final rightColor = colors[s + 1];
//     if (t <= leftStop) {
//       return leftColor;
//     } else if (t < rightStop) {
//       final sectionT = (t - leftStop) / (rightStop - leftStop);
//       return Color.lerp(leftColor, rightColor, sectionT)!;
//     }
//   }
//   return colors.last;
// }
