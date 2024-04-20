import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/reusable_appbar/reusable_appbar.dart';
import 'package:suvidha_app_ui/weight/custom_tab_bar/nav_bar_controller.dart';

//import '../../constants/reusable_appbar/reusable_appbar.dart';

class MonthlyYrReport extends StatelessWidget {
  MonthlyYrReport({Key? key}) : super(key: key);

  NavBarController _navcontroller =
      Get.put(NavBarController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
          Align(
            alignment: Alignment.center,
            child: Text(
              'Reports......',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: size.width * 0.033,
                color: AppColors.a15,
              ),
            ),
          ),
        ],
      ),

      // },
      //),
    );
  }
}
