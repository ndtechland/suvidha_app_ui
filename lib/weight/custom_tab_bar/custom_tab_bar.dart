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
    Size size = MediaQuery.of(context).size;

    return Obx(
      () => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 2.0),
        child: Container(
          height: size.height * 0.075,
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
            unselectedLabelStyle: GoogleFonts.roboto(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                fontSize: size.height * 0.013),
            selectedLabelStyle: GoogleFonts.roboto(
                color: AppColors.a15,
                fontWeight: FontWeight.w600,
                fontSize: size.height * 0.013),
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: size.height * 0.024,

                  //22.0,
                  color: Colors.grey, // Set unselected icon color
                ),
                activeIcon: FaIcon(
                  Icons.home_rounded,
                  size: size.height * 0.026,
                  color: AppColors.a15,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: FaIcon(
                  Icons.gas_meter_outlined,
                  size: size.height * 0.024,
                  color: Colors.grey,
                ),
                activeIcon: FaIcon(
                  Icons.gas_meter_rounded,
                  size: size.height * 0.026,
                  color: AppColors.a15,
                ),
                label: 'Reading',
              ),
              BottomNavigationBarItem(
                icon: FaIcon(
                  Icons.stacked_bar_chart_outlined,
                  size: size.height * 0.024,
                  color: Colors.grey,
                ),
                activeIcon: FaIcon(
                  Icons.bar_chart,
                  //bar_chart,
                  size: size.height * 0.026,
                  color: AppColors.a15,
                ),
                label: 'Reports',
              ),
              BottomNavigationBarItem(
                icon: FaIcon(
                  Icons.list_alt,
                  size: size.height * 0.024,
                  color: Colors.grey,
                ),
                activeIcon: FaIcon(
                  Icons.list_alt,
                  size: size.height * 0.026,
                  color: AppColors.a15,
                ),
                label: 'More',
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
                MonthlyYrReport(),

                ///
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
                LineChartSample2(),
              ],
            )),
      ),
    );
  }
}
