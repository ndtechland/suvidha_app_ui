import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:suvidha_app_ui/weight/custom_tab_bar/nav_bar_controller.dart';

import '../../constants/colorrr.dart';
import '../../constants/reusable_appbar/reusable_appbar.dart';
//import 'package:flutter_chart_demo/data/price_point.dart';

class BarChartConsumptions extends StatefulWidget {
  BarChartConsumptions({Key? key, required this.points}) : super(key: key);

  NavBarController _navcontroller =
      Get.put(NavBarController(), permanent: true);

  final List<PricePoint> points;

  @override
  State<BarChartConsumptions> createState() =>
      _BarChartConsumptionsState(points: this.points);
}

class _BarChartConsumptionsState extends State<BarChartConsumptions> {
  final List<PricePoint> points;

  _BarChartConsumptionsState({required this.points});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.th1whtbackgrd,
      appBar: myAppBar(
        //backgroundColor: AppColors.white,
        title: 'Meter Reading',
        leadingIcon: Icons.arrow_back_ios_outlined,

        centerTitle: true,
        titleFontSize: size.width * 0.042, // Specify font size here
        onLeadingPressed: () {
          //_navcontroller.tabIndex(0);

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: size.height * 0.80,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.02,
              ),
              AspectRatio(
                aspectRatio: 1,
                child: BarChart(
                  BarChartData(
                    backgroundColor: AppColors.th1wht2,
                    barGroups: _chartGroups(),
                    borderData: FlBorderData(
                        border: const Border(
                            bottom: BorderSide(), left: BorderSide())),
                    gridData: FlGridData(show: false),
                    titlesData: FlTitlesData(
                      bottomTitles: AxisTitles(sideTitles: _bottomTitles),
                      leftTitles:
                          AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      topTitles:
                          AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      rightTitles:
                          AxisTitles(sideTitles: SideTitles(showTitles: false)),
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

  List<BarChartGroupData> _chartGroups() {
    return points
        .map((point) => BarChartGroupData(
            x: point.x.toInt(), barRods: [BarChartRodData(toY: point.y)]))
        .toList();
  }

  SideTitles get _bottomTitles => SideTitles(
        showTitles: true,
        getTitlesWidget: (value, meta) {
          String text = '';
          switch (value.toInt()) {
            case 0:
              text = 'Jan';
              break;
            case 2:
              text = 'Feb';
              break;
            case 3:
              text = 'Mar';
              break;
            case 4:
              text = 'May';
              break;
            case 6:
              text = 'Jul';
              break;
            case 8:
              text = 'Sep';
              break;
            case 10:
              text = 'Nov';
              break;
          }

          return Text(text);
        },
      );
}

// Define the PricePoint class
class PricePoint {
  final double x; // X-coordinate
  final double y; // Y-coordinate

  PricePoint(this.x, this.y);
}
//import '../../constants/reusable_appbar/reusable_appbar.dart';
///

///class BarChartConsumptions extends StatelessWidget {
