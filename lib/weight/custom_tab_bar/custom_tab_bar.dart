import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/screens/home_page.dart';
import 'package:suvidha_app_ui/screens/meter_reading/meter_reading.dart';

import '../../screens/monthly_report/monthly_yrly_report.dart';
import '../../screens/testing_graph/testing_grapg1.dart';
import 'nav_bar_controller.dart';

class BottomNavBar extends StatelessWidget {
  final TextStyle unselectedLabelStyle = GoogleFonts.roboto(
      color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 10);

  final TextStyle selectedLabelStyle = GoogleFonts.roboto(
      color: AppColors.a15, fontWeight: FontWeight.w700, fontSize: 10);

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(
      () => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 2.0),
        child: Container(
          height: 62,
          child: BottomNavigationBar(
            type: BottomNavigationBarType
                .fixed, // Ensure no movement after selection

            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: landingPageController.changeTabIndex,
            currentIndex: landingPageController.tabIndex.value,
            backgroundColor: AppColors.white,
            unselectedItemColor: Colors.grey,
            selectedItemColor: AppColors.a15,
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 22.0,
                  color: Colors.grey, // Set unselected icon color
                ),
                activeIcon: FaIcon(
                  Icons.home_rounded,
                  size: 25.0,
                  color: AppColors.a15,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: FaIcon(
                  Icons.gas_meter_outlined,
                  size: 22.0,
                  color: Colors.grey,
                ),
                activeIcon: FaIcon(
                  Icons.gas_meter_rounded,
                  size: 25.0,
                  color: AppColors.a15,
                ),
                label: 'Reading',
              ),
              BottomNavigationBarItem(
                icon: FaIcon(
                  Icons.stacked_bar_chart_outlined,
                  size: 22.0,
                  color: Colors.grey,
                ),
                activeIcon: FaIcon(
                  Icons.bar_chart,
                  //bar_chart,
                  size: 25.0,
                  color: AppColors.a15,
                ),
                label: 'Chart',
              ),
              BottomNavigationBarItem(
                icon: FaIcon(
                  Icons.list_alt,
                  size: 22.0,
                  color: Colors.grey,
                ),
                activeIcon: FaIcon(
                  Icons.list_alt,
                  size: 25.0,
                  color: AppColors.a15,
                ),
                label: 'Reports',
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final NavBarController landingPageController =
        Get.put(NavBarController(), permanent: false);
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar:
            buildBottomNavigationMenu(context, landingPageController),
        body: Obx(() => IndexedStack(
              index: landingPageController.tabIndex.value,
              children: [
                HomePage(),
                MeterReadingPage(),

                LineChartSample2(),
                // BarChartConsumptions(
                //   points: [
                //     PricePoint(0.0, 10.0), // Example PricePoint object
                //     PricePoint(2.0, 30.0),
                //     PricePoint(3.0, 40.0),
                //     PricePoint(4.0, 50.0),
                //     PricePoint(6.0, 70.0),
                //     PricePoint(8.0, 90.0), // Example PricePoint object
                //     // Add more PricePoint objects as needed
                //   ],
                // ),
                MonthlyYrReport(),
              ],
            )),
      ),
    );
  }
}
