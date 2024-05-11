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

import '../../constants/reusable_3Dtext/3d_textreusable.dart';
import '../../constants/reusable_3Dtext/3dtext2.dart';

//import '../../constants/reusable_appbar/reusable_appbar.dart';

class MeterReadingPage extends StatelessWidget {
  MeterReadingPage({Key? key}) : super(key: key);

  NavBarController _navcontroller =
      Get.put(NavBarController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final List<String> subtitle2 = [
      'Sep 14th 2023',
      'Aug 14th 2023',
      'Jul 14th 2023',
      'Jun 14th 2023',
      'May 14th 2023',
      'Apr 14th 2023',
      'Mar 14th 2023',
      'Feb 14th 2023',
      'Jan 14th 2023',
      'Dec 14th 2022',
    ];
    final List<String> subtitle3 = [
      '200',
      '400',
      '300',
      '600',
      '800',
      '1000',
      '200',
      '800',
      '500',
      '700',
    ];

    final List<String> subtitle1 = [
      'October Month',
      'September Month',
      'August Month',
      'July Month',
      'June Month',
      'May Month',
      'April Month',
      'March Month',
      'February Month',
      'January Month',
    ];
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.010,
            ),
            PhysicalModel(
              color: Colors.transparent,
              elevation: 5,
              shadowColor: Colors.grey,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: size.height * 0.245,
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
                                  height: size.height * 0.07,
                                  width: size.width * 0.14,
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
                                            fontSize: size.height * 0.05,
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
                                  height: size.height * 0.07,
                                  width: size.width * 0.14,
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
                                            fontSize: size.height * 0.05,
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
                                  height: size.height * 0.07,
                                  width: size.width * 0.14,
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
                                            fontSize: size.height * 0.05,
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
                                  height: size.height * 0.07,
                                  width: size.width * 0.14,
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
                                            fontSize: size.height * 0.05,
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
                            height: size.height * 0.005,
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
            SizedBox(height: size.height * 0.016),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Meter Reading History',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w700,
                  fontSize: size.height * 0.015,
                  color: AppColors.a15,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.012),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: subtitle1.length,
                itemBuilder: (BuildContext context, int index) {
                  // Ensure the index is within bounds of tileColors list
                  // int colorIndex = index % tileColors.length;
                  // Color tileColor = tileColors[colorIndex];

                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: PhysicalModel(
                      color: AppColors.black,
                      shadowColor: AppColors.graphline,
                      elevation: 4,
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        height: size.height * 0.09,
                        width: size.width,
                        decoration: BoxDecoration(
                          color: AppColors.th1wht2,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: AppColors.a15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: size.height * 0.08,
                                width: size.width * 0.17,
                                decoration: BoxDecoration(
                                  color: AppColors.a17,
                                  borderRadius: BorderRadius.circular(5),
                                  // BorderRadius.only(
                                  //     topLeft: Radius.circular(10),
                                  //     bottomLeft: Radius.circular(10)),
                                  border: Border.all(color: AppColors.p3),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://images.unsplash.com/photo-1663608786776-72e279f45a95?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                                      fit: BoxFit.fill),
                                ),
                              ),

                              ///
                              // Column(
                              //   mainAxisAlignment:
                              //       MainAxisAlignment.spaceAround,
                              //   crossAxisAlignment: CrossAxisAlignment.start,
                              //   children: [
                              //     ThreeDtext(
                              //       text: 'Recharge Date',
                              //       fontColor: Colors.black,
                              //       fontSize: size.height * 0.014,
                              //       fontWeight: FontWeight.w600,
                              //     ),
                              //     //ThreeDtext2
                              //     ThreeDtext2(
                              //       text: subtitle1[index],
                              //       fontColor: Colors.black,
                              //       fontSize: size.height * 0.017,
                              //       fontWeight: FontWeight.w500,
                              //     ),
                              //   ],
                              // ),
                              SizedBox(
                                width: size.width * 0.35,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: ThreeDtext(
                                        text: subtitle1[index],
                                        fontColor: Colors.black,
                                        fontSize: size.height * 0.016,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.008,
                                    ),
                                    //ThreeDtext2
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: ThreeDtext2(
                                        text: subtitle2[index],
                                        fontColor: AppColors.greyColor,
                                        fontSize: size.height * 0.014,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ThreeDtext(
                                    text: "Meter Reading",
                                    fontColor: Colors.black,
                                    fontSize: size.height * 0.017,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  //ThreeDtext2
                                  ThreeDtext2(
                                    text: "${subtitle3[index]}",
                                    fontColor: AppColors.newerror,
                                    fontSize: size.height * 0.023,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                  //   ListTile(
                  //   title: Text(items[index]),
                  //   tileColor: tileColor, // Assign color to ListTile
                  //   onTap: () {
                  //     // Action when the ListTile is tapped
                  //     print('Tapped on ${items[index]}');
                  //   },
                  //   // Add more properties to ListTile if needed
                  // );
                },
              ),
            ),
          ],
        ),
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
