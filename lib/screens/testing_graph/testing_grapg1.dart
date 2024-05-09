import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colorrr.dart';
import '../../constants/reusable_appbar/reusable_appbar.dart';
import '../../weight/custom_tab_bar/nav_bar_controller.dart';

class LineChartSample2 extends StatefulWidget {
  const LineChartSample2({super.key});

  @override
  State<LineChartSample2> createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<LineChartSample2> {
  List<Color> gradientColors = [
    AppColors.g7,
    AppColors.th1blue,
  ];

  bool showAvg = false;
  NavBarController _navcontroller =
      Get.put(NavBarController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.th1whtbackgrd,
      appBar: myAppBar(
        //backgroundColor: AppColors.white,
        title: 'Consumed Reading',
        leadingIcon: Icons.arrow_back_ios_outlined,

        centerTitle: true,
        titleFontSize: size.width * 0.042, // Specify font size here
        onLeadingPressed: () {
          _navcontroller.tabIndex(0);

          //Get.back();
          // Get.to(BottomNavBar());
          // Handle leading icon press
        },
        searchIcon: null,
        onSearchPressed: () {
          // Handle search icon press
        },
        userIcon: null,
        onUserPressed: () {
          // Handle user icon press
        },
      ),
      body: Column(
        children: [
          //Spacer(),
          SizedBox(
            height: size.height * 0.03,
          ),

          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.02, vertical: size.height * 0.005),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      'X axis presenting',
                      style: GoogleFonts.nunitoSans(
                        fontSize: size.height * 0.014,
                        letterSpacing: 0.2,
                        color: AppColors.a15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      ' Electricity consumed in Months >',
                      style: GoogleFonts.nunitoSans(
                        fontSize: size.height * 0.015,
                        letterSpacing: 0.2,
                        color: AppColors.th1org,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
                //   child: HorizontalCircularButton(
                //     height: size.height * 0.04,
                //     width: size.width * 0.23,
                //     borderRadius: 10,
                //     fontSize: size.height * 0.019,
                //     text: "Recharge",
                //
                //     onPressed: () {},
                //     //isSelected: selectionController.selectedIndices.contains(0),
                //   ),
                // ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.02, vertical: size.height * 0.005),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      'Y axis presenting in',
                      style: GoogleFonts.nunitoSans(
                        fontSize: size.height * 0.014,
                        letterSpacing: 0.2,
                        color: AppColors.a15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Electricity Consumed in Units ^',
                      style: GoogleFonts.nunitoSans(
                        fontSize: size.height * 0.015,
                        letterSpacing: 0.2,
                        color: AppColors.th1org,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
                //   child: HorizontalCircularButton(
                //     height: size.height * 0.04,
                //     width: size.width * 0.23,
                //     borderRadius: 10,
                //     fontSize: size.height * 0.019,
                //     text: "Recharge",
                //
                //     onPressed: () {},
                //     //isSelected: selectionController.selectedIndices.contains(0),
                //   ),
                // ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.02, vertical: size.height * 0.005),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      'Average button presenting',
                      style: GoogleFonts.nunitoSans(
                        fontSize: size.height * 0.014,
                        letterSpacing: 0.2,
                        color: AppColors.a15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      ' Average unit consumed in Total',
                      style: GoogleFonts.nunitoSans(
                        fontSize: size.height * 0.012,
                        letterSpacing: 0.2,
                        color: AppColors.th1org,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
                //   child: HorizontalCircularButton(
                //     height: size.height * 0.04,
                //     width: size.width * 0.23,
                //     borderRadius: 10,
                //     fontSize: size.height * 0.019,
                //     text: "Recharge",
                //
                //     onPressed: () {},
                //     //isSelected: selectionController.selectedIndices.contains(0),
                //   ),
                // ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),

          Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1.0,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                    left: 04,
                    top: 44,
                    bottom: 1,
                  ),
                  child: LineChart(
                    showAvg ? avgData() : mainData(),
                  ),
                ),
              ),
              SizedBox(
                width: size.width * 0.21,
                height: size.height * 0.04,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      showAvg = !showAvg;
                    });
                  },
                  child: Center(
                    child: Text(
                      'Average',
                      style: GoogleFonts.roboto(
                        fontSize: size.height * 0.014,
                        fontWeight: FontWeight.w700,
                        color: showAvg
                            ? Colors.red.withOpacity(0.5)
                            : AppColors.a16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Spacer(),

          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.02, vertical: size.height * 0.005),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      'Total Average Consumed Units: ',
                      style: GoogleFonts.nunitoSans(
                        fontSize: size.height * 0.017,
                        letterSpacing: 0.2,
                        color: AppColors.a15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '170 Units',
                      style: GoogleFonts.nunitoSans(
                        fontSize: size.height * 0.019,
                        letterSpacing: 0.2,
                        color: AppColors.th1org,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
                //   child: HorizontalCircularButton(
                //     height: size.height * 0.04,
                //     width: size.width * 0.23,
                //     borderRadius: 10,
                //     fontSize: size.height * 0.019,
                //     text: "Recharge",
                //
                //     onPressed: () {},
                //     //isSelected: selectionController.selectedIndices.contains(0),
                //   ),
                // ),
              ],
            ),
          ),
          //Spacer(),
          //Spacer(),

          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.02, vertical: size.height * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      'Current Month Units: ',
                      style: GoogleFonts.nunitoSans(
                        fontSize: size.height * 0.017,
                        letterSpacing: 0.2,
                        color: AppColors.a15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '10 Units',
                      style: GoogleFonts.nunitoSans(
                        fontSize: size.height * 0.019,
                        letterSpacing: 0.2,
                        color: AppColors.th1org,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
                //   child: HorizontalCircularButton(
                //     height: size.height * 0.04,
                //     width: size.width * 0.23,
                //     borderRadius: 10,
                //     fontSize: size.height * 0.019,
                //     text: "Recharge",
                //
                //     onPressed: () {},
                //     //isSelected: selectionController.selectedIndices.contains(0),
                //   ),
                // ),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 8,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text('Jan', style: style);
        break;
      case 1:
        text = const Text('Feb', style: style);
        break;
      case 2:
        text = const Text('Mar', style: style);
        break;
      case 3:
        text = const Text('Apr', style: style);
        break;
      case 4:
        text = const Text('May', style: style);
        break;
      case 5:
        text = const Text('Jun', style: style);
        break;
      case 6:
        text = const Text('Jul', style: style);
        break;
      case 7:
        text = const Text('Aug', style: style);
        break;
      case 8:
        text = const Text('Sep', style: style);
        break;
      case 9:
        text = const Text('Oct', style: style);
        break;
      case 10:
        text = const Text('Nov', style: style);
        break;
      case 11:
        text = const Text('Dec', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 8,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = '0 Unit';
        break;
      case 1:
        text = '50 Units';
        break;
      case 2:
        text = '100 Units';
        break;
      case 3:
        text = '150 Units';
        break;
      case 4:
        text = '200 Units';
        break;
      case 5:
        text = '250 Units';
        break;
      case 6:
        text = '300 Units';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: AppColors.a5,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: AppColors.greyColor,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: LineTouchData(enabled: false),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        verticalInterval: 1,
        horizontalInterval: 1,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: bottomTitleWidgets,
            interval: 1,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
            interval: 1,
          ),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3.44),
            FlSpot(2.6, 3.44),
            FlSpot(4.9, 3.44),
            FlSpot(6.8, 3.44),
            FlSpot(8, 3.44),
            FlSpot(9.5, 3.44),
            FlSpot(11, 3.44),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: [
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
            ],
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
