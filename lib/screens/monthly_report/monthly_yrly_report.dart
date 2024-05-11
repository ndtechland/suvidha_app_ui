import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/reusable_appbar/reusable_appbar.dart';
import 'package:suvidha_app_ui/screens/monthly_report/yearly_reports.dart';
import 'package:suvidha_app_ui/weight/custom_tab_bar/nav_bar_controller.dart';

import '../testing_graph/testing_graph_line2.dart';
import 'monthly_report.dart';

//import '../../constants/reusable_appbar/reusable_appbar.dart';

class MonthlyYrReport extends StatelessWidget {
  MonthlyYrReport({Key? key}) : super(key: key);

  NavBarController _navcontroller =
      Get.put(NavBarController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppColors.th1whtbackgrd,
        appBar: myAppBar(
          //backgroundColor: AppColors.white,
          title: 'Reports',
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: size.height * 0.05,
                color: AppColors.th1wht2,
                child: TabBar(
                  tabs: [
                    Tab(
                      child: Container(
                        alignment: Alignment.center,
                        height: 40, // Adjust the height for unselected tabs
                        child: Text(
                          'Yearly',
                          style: GoogleFonts.nunitoSans(
                            fontSize: size.height * 0.019,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        alignment: Alignment.center,
                        height: 40, // Adjust the height for unselected tabs
                        child: Text(
                          'Monthly',
                          style: GoogleFonts.nunitoSans(
                            fontSize: size.height * 0.019,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        alignment: Alignment.center,
                        // color: Colors.white,
                        height: 30, // Adjust the height for selected tab
                        child: Text(
                          'Weekly',
                          style: GoogleFonts.nunitoSans(
                            fontSize: size.height * 0.019,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                  indicator: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // Empty box decoration to remove the underline
                  labelColor: AppColors.graphtopbar, // Color for selected tab
                  unselectedLabelColor:
                      Colors.black, // Color for unselected tabs
                  labelStyle: GoogleFonts.roboto(
                      fontSize: size.height * 0.017,
                      fontWeight: FontWeight.w300),
                  unselectedLabelStyle: GoogleFonts.roboto(
                      fontSize: size.height * 0.017,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  BarChartSample8(),
                  // monthly_sales(
                  //   isShowingMainData: true,
                  // ),
                  LineCharts(),

                  ///BarChartSample4(),
                  // Align(
                  //   alignment: Alignment.center,
                  //   child: Text(
                  //     'Reports......',
                  //     style: GoogleFonts.poppins(
                  //       fontWeight: FontWeight.w600,
                  //       fontSize: size.width * 0.033,
                  //       color: AppColors.a15,
                  //     ),
                  //   ),
                  // ),
                  ///
                  // Align(
                  //   alignment: Alignment.center,
                  //   child: Text(
                  //     'Reports......',
                  //     style: GoogleFonts.poppins(
                  //       fontWeight: FontWeight.w600,
                  //       fontSize: size.width * 0.033,
                  //       color: AppColors.a15,
                  //     ),
                  //   ),
                  // ),
                  LineChartSample5(),

                  ///todo:....................
                  // Your tab views here
                  // Example:
                  // PlacesTab(),
                  // InspirationTab(),
                  // EmotionsTab(),
                ],
              ),
            ),
          ],
        ),

        // },
        //),
      ),
    );
  }
}
