import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';

class LineCharts extends StatelessWidget {
  LineCharts({Key? key}) : super(key: key);

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
          text = 'Jan1';
          break;
        case 2:
          text = 'Jan5';
          break;
        case 3:
          text = 'Jan10';
          break;
        case 4:
          text = 'Jan15';
          break;
        case 5:
          text = 'Jan20';
          break;
        case 6:
          text = 'Jan25';
          break;

        case 7:
          text = 'Jan31';
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
                          'Jan - 24',
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
                                      color: Colors.indigo,

                                      ///todo: this is the shadow color area....
                                      belowBarData: BarAreaData(
                                        show: true,
                                        color: AppColors.graphshadow1,
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
                                    color: Colors.indigo,
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
                          'Feb - 24',
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
                                          return bottomTitleWidgets(
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
                                      color: Colors.indigo,

                                      ///todo: this is the shadow color area....
                                      belowBarData: BarAreaData(
                                        show: true,
                                        color: AppColors.graphshadow1,
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
                                    color: Colors.indigo,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  //color: Colors.red,
                                ),
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
