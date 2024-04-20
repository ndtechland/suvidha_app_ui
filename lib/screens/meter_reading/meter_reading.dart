import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/dailloge_box_reusable/reusable_dailoge_box.dart';
import 'package:suvidha_app_ui/constants/reusable_appbar/reusable_appbar.dart';
import 'package:suvidha_app_ui/screens/load_change/decrease_load/decrease_load_1.dart';
import 'package:suvidha_app_ui/screens/load_change/increase_load/increase_load_1.dart';
import 'package:suvidha_app_ui/weight/custom_tab_bar/nav_bar_controller.dart';

//import '../../constants/reusable_appbar/reusable_appbar.dart';

class MeterReadingPage extends StatelessWidget {
  MeterReadingPage({Key? key}) : super(key: key);

  NavBarController _navcontroller =
      Get.put(NavBarController(), permanent: true);

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
              'Meter Reading......',
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

  showOtpDialog(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    showCupertinoDialog(
      barrierDismissible: true, // Set barrierDismissible to true
      context: context,
      builder: (BuildContext context) {
        return ReusableCustomDialog(
          contentColor: AppColors.black,
          titleColor: Colors.white,
          titleFontSize:
              size.height * 0.015, // Use provided or default font size

          additionalTextColor1: Colors.green,
          //additionalTextColor2: Colors.red,
          titleText: 'Confirm Service-सेवा की पुष्टि करें',
          //contentText
          contentText: '\nSelected Service - चयनित सेवा',
          additionalText1: "Increase Load"
              "\nलोड बढ़ाएँ",
          cancelText: 'Cancel- रद्द करें',
          submitText: 'Proceed-आगे बढ़ें',
          onCancelPressed: () {
            Get.back();
          },
          onSubmitPressed: () {
            Get.back();

            Get.to(IncreaseLoad1());
            // Get.back();
          },
        );
      },
    );
  }

  showOtpDialog2(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    showCupertinoDialog(
      barrierDismissible: true, // Set barrierDismissible to true
      context: context,
      builder: (BuildContext context) {
        return ReusableCustomDialog(
          contentColor: AppColors.black,
          titleColor: Colors.white,
          titleFontSize:
              size.height * 0.015, // Use provided or default font size

          additionalTextColor1: Colors.red,
          //additionalTextColor2: Colors.red,
          titleText: 'Confirm Service-सेवा की पुष्टि करें',
          //contentText
          contentText: '\nSelected Service - चयनित सेवा',
          additionalText1: "Decrease Load"
              "\nलोड घटायें",
          cancelText: 'Cancel- रद्द करें',
          submitText: 'Proceed-आगे बढ़ें',
          onCancelPressed: () {
            Get.back();
          },
          onSubmitPressed: () {
            Get.back();

            Get.to(DecreaseLoad1());
            //Get.back();
          },
        );
      },
    );
  }
}
