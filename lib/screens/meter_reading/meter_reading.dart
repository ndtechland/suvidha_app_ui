import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/buttons/circular_horizontal_buttom.dart';
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
          SizedBox(
            height: size.height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
            child: PhysicalModel(
              color: Colors.transparent,
              elevation: 5,
              shadowColor: Colors.grey,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: size.height * 0.267,
                width: size.width,
                decoration: BoxDecoration(
                  //color: AppColors.a20,
                  // gradient: AppColors.gradient19,
                  color: AppColors.th1wht2,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    height: size.height * 0.08,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: AppColors.th1wht2,
                      borderRadius: BorderRadius.circular(10),
                      // gradient: AppColors.gradient19,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.04,
                          vertical: size.height * 0.014),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.00,
                                vertical: size.height * 0.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'March 2024',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    fontSize: size.height * 0.015,
                                    color: AppColors.greyColor,
                                  ),
                                ),
                                Text(
                                  'Consumed Units',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    fontSize: size.height * 0.015,
                                    color: AppColors.greyColor,
                                  ),
                                ),
                                Text(
                                  'ID:1333222222',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    fontSize: size.height * 0.015,
                                    color: AppColors.greyColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              //Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  height: size.height * 0.08,
                                  width: size.width * 0.16,
                                  decoration: BoxDecoration(
                                    color: AppColors.a15,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        '4',
                                        style: GoogleFonts.roboto(
                                            color: AppColors.th1wht2,
                                            fontSize: size.height * 0.06,
                                            //width: size.width * 0.15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              //Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  height: size.height * 0.08,
                                  width: size.width * 0.16,
                                  decoration: BoxDecoration(
                                    color: AppColors.a15,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        '3',
                                        style: GoogleFonts.roboto(
                                            color: AppColors.th1wht2,
                                            fontSize: size.height * 0.06,
                                            //width: size.width * 0.15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              //Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  height: size.height * 0.08,
                                  width: size.width * 0.16,
                                  decoration: BoxDecoration(
                                    color: AppColors.a15,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        '7',
                                        style: GoogleFonts.roboto(
                                            color: AppColors.th1wht2,
                                            fontSize: size.height * 0.06,
                                            //width: size.width * 0.15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  height: size.height * 0.08,
                                  width: size.width * 0.16,
                                  decoration: BoxDecoration(
                                    color: AppColors.a17,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        '2',
                                        style: GoogleFonts.roboto(
                                            color: AppColors.newerror,
                                            fontSize: size.height * 0.06,
                                            //width: size.width * 0.15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              //Spacer(),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Divider(
                            color: AppColors.grey400,
                            thickness: 1,
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.02),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Current Balance:  ',
                                      style: GoogleFonts.nunitoSans(
                                        fontSize: size.height * 0.019,
                                        letterSpacing: 0.2,
                                        color: AppColors.a15,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      '₹ 299/-',
                                      style: GoogleFonts.nunitoSans(
                                        fontSize: size.height * 0.021,
                                        letterSpacing: 0.2,
                                        color: AppColors.th1org,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.01),
                                  child: HorizontalCircularButton(
                                    height: size.height * 0.04,
                                    width: size.width * 0.23,
                                    borderRadius: 10,
                                    fontSize: size.height * 0.019,
                                    text: "Recharge",

                                    onPressed: () {
                                      // if (_formKey.currentState!.validate()) {
                                      //   // If all fields are valid, toggle selection and navigate
                                      //   selectionController.toggleSelection(0);
                                      //Get.to(LoadChangeIncDec());
                                      // }
                                    },
                                    //isSelected: selectionController.selectedIndices.contains(0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          //SizedBox(height: size.height * 0.02),
          // Align(
          //   alignment: Alignment.center,
          //   child: Text(
          //     'Meter Reading......',
          //     style: GoogleFonts.poppins(
          //       fontWeight: FontWeight.w600,
          //       fontSize: size.width * 0.033,
          //       color: AppColors.a15,
          //     ),
          //   ),
          // ),
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
