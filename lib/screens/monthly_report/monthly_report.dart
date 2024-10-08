import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colorrr.dart';

class BarChartSample8 extends StatefulWidget {
  BarChartSample8({super.key});

  final Color barBackgroundColor = AppColors.contentColorWhite.withOpacity(0.3);
  final Color barColor = AppColors.a13;

  @override
  State<StatefulWidget> createState() => BarChartSample1State();
}

class BarChartSample1State extends State<BarChartSample8> {
  @override
  Widget build(BuildContext context) {
    // Generate some dummy data for the chart
    final List<FlSpot> dummyData1 = List.generate(7, (index) {
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
          text = 'Jan';
          break;
        case 2:
          text = 'Mar';
          break;
        case 3:
          text = 'Jun';
          break;
        case 4:
          text = 'Aug';
          break;
        case 5:
          text = 'Oct';
          break;
        case 6:
          text = 'Dec';
          break;

        // case 7:
        //   text = 'Jan31';
        //   break;
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
          text = '50';
          break;
        case 2:
          text = '100';
          break;
        case 3:
          text = '150';
          break;
        case 4:
          text = '200';
          break;
        case 5:
          text = '250';
          break;
        case 6:
          text = '300';
          break;

        case 7:
          text = '350';
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
                          '2024',
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
                                      color: Colors.red,

                                      ///todo: this is the shadow color area....
                                      belowBarData: BarAreaData(
                                        show: true,
                                        color: Color(0xffF1F1F1),
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
                                      color: AppColors.graphline,
                                      // Colors.indigo.withOpacity(
                                      //     0.5), // Adjust opacity as needed
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
                                    color: AppColors.graphline,
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
                          '2023',
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
                                      color: Colors.red,

                                      ///todo: this is the shadow color area....
                                      belowBarData: BarAreaData(
                                        show: true,
                                        color: Color(0xffF1F1F1),
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
                                      color: AppColors.graphline,
                                      // Colors.indigo.withOpacity(
                                      //     0.5), // Adjust opacity as needed
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
                                    color: AppColors.graphline,
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

///
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: 1,
//       child: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Icon(Icons.graphic_eq),
//                 const SizedBox(
//                   width: 3,
//                 ),
//                 Text(
//                   'Yearly Consumptions',
//                   style: TextStyle(
//                     color: widget.barColor,
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 37,
//             ),
//             Expanded(
//               child: SizedBox(
//                 width: 600,
//                 child: BarChart(
//                   randomData(),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   BarChartGroupData makeGroupData(
//     int x,
//     double y,
//   ) {
//     return BarChartGroupData(
//       x: x,
//       barRods: [
//         BarChartRodData(
//           toY: y,
//           color: x >= 4 ? Colors.transparent : widget.barColor,
//           borderRadius: BorderRadius.zero,
//           //borderDashArray: x >= 4 ? [4, 4] : null,
//           width: 17,
//           borderSide: BorderSide(color: widget.barColor, width: 2.0),
//         ),
//       ],
//     );
//   }
//
//   Widget getTitles(double value, TitleMeta meta) {
//     const style = TextStyle(
//       color: Colors.black,
//       fontWeight: FontWeight.bold,
//       fontSize: 13,
//     );
//     List<String> days = [
//       '2024',
//       '2023',
//       '2022',
//       '2021',
//       '2020',
//       '2019',
//       '2018'
//     ];
//
//     Widget text = Text(
//       days[value.toInt()],
//       style: style,
//     );
//
//     return SideTitleWidget(
//       axisSide: meta.axisSide,
//       space: 16,
//       child: text,
//     );
//   }
//
//   BarChartData randomData() {
//     return BarChartData(
//       maxY: 900.0,
//       barTouchData: BarTouchData(
//         enabled: true,
//       ),
//       titlesData: FlTitlesData(
//         show: true,
//         bottomTitles: AxisTitles(
//           sideTitles: SideTitles(
//             showTitles: true,
//             getTitlesWidget: getTitles,
//             reservedSize: 39,
//           ),
//         ),
//         leftTitles: AxisTitles(
//           sideTitles: SideTitles(
//             reservedSize: 34,
//             showTitles: true,
//           ),
//         ),
//         topTitles: AxisTitles(
//           sideTitles: SideTitles(
//             showTitles: false,
//           ),
//         ),
//         rightTitles: AxisTitles(
//           sideTitles: SideTitles(
//             showTitles: false,
//           ),
//         ),
//       ),
//       borderData: FlBorderData(
//         show: false,
//       ),
//       barGroups: List.generate(
//         5,
//         (i) => makeGroupData(
//           i,
//           Random().nextInt(900).toDouble() + 10,
//         ),
//       ),
//       gridData: FlGridData(show: true),
//     );
//   }
// }
