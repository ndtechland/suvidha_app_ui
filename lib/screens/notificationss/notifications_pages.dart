import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';

import '../../constants/reusable_appbar/reusable_appbar.dart';
import '../../weight/custom_on_off_switch/custom_on_off_switch.dart';

class notification_pagess extends StatelessWidget {
  final CustomSwitchController controller = Get.put(CustomSwitchController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.th1whtbackgrd,
      appBar: myAppBar(
        //backgroundColor: AppColors.white,
        title: 'Notifications',
        leadingIcon: Icons.arrow_back_ios_outlined,
        centerTitle: true,
        onLeadingPressed: () {
          Get.back();
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
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.02, vertical: size.height * 0.005),
              child: PhysicalModel(
                color: AppColors.a1,
                borderRadius: BorderRadius.circular(10),
                shadowColor: AppColors.a5,
                elevation: 0,
                child: Container(
                  height: size.height * 0.075,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: AppColors.th1wht2,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          // height: size.height * 0.06,
                          //width: size.width * 0.55,
                          child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Flat Number',
                            style: GoogleFonts.roboto(
                              fontSize: size.height * 0.02,
                              fontWeight: FontWeight.bold,
                              color: AppColors.textmaroon505,
                            ),
                          ),
                        ),
                      )),
                      Padding(
                        padding: EdgeInsets.only(
                            right: size.width * 0.015,
                            top: size.height * 0.01,
                            bottom: size.height * 0.01),
                        child: PhysicalModel(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          shadowColor: Colors.white,
                          elevation: 1,
                          child: Container(
                            height: size.height * 0.07,
                            width: size.width * 0.33,
                            decoration: BoxDecoration(
                              color: AppColors.a18,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.01,
                                  vertical: size.height * 0.001),
                              child: Center(
                                child: Text('8765454',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      fontSize: size.height * 0.022,
                                    )),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.02, vertical: size.height * 0.005),
              child: PhysicalModel(
                color: AppColors.a1,
                borderRadius: BorderRadius.circular(10),
                shadowColor: AppColors.a5,
                elevation: 0,
                child: Container(
                  height: size.height * 0.075,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: AppColors.th1wht2,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          // height: size.height * 0.06,
                          //width: size.width * 0.55,
                          child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Low Balance',
                            style: GoogleFonts.roboto(
                              fontSize: size.height * 0.02,
                              fontWeight: FontWeight.bold,
                              color: AppColors.textmaroon505,
                            ),
                          ),
                        ),
                      )),
                      Padding(
                        padding: EdgeInsets.only(
                            right: size.width * 0.015,
                            top: size.height * 0.01,
                            bottom: size.height * 0.01),
                        child: PhysicalModel(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          shadowColor: Colors.white,
                          elevation: 1,
                          child: Container(
                            height: size.height * 0.07,
                            width: size.width * 0.33,
                            decoration: BoxDecoration(
                              color: AppColors.a18,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.01,
                                  vertical: size.height * 0.001),
                              child: Center(
                                child: Text('₹ 500',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      fontSize: size.height * 0.022,
                                    )),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.02, vertical: size.height * 0.005),
              child: PhysicalModel(
                color: AppColors.a1,
                borderRadius: BorderRadius.circular(10),
                shadowColor: AppColors.a1,
                elevation: 0,
                child: Container(
                  height: size.height * 0.075,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: AppColors.th1wht2,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          // height: size.height * 0.06,
                          //width: size.width * 0.55,
                          child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Daily Limit',
                            style: GoogleFonts.roboto(
                              fontSize: size.height * 0.02,
                              fontWeight: FontWeight.bold,
                              color: AppColors.textmaroon505,
                            ),
                          ),
                        ),
                      )),
                      Padding(
                        padding: EdgeInsets.only(
                            right: size.width * 0.015,
                            top: size.height * 0.01,
                            bottom: size.height * 0.01),
                        child: PhysicalModel(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50),
                          shadowColor: Colors.white,
                          elevation: 1,
                          child: Container(
                            height: size.height * 0.07,
                            width: size.width * 0.33,
                            decoration: BoxDecoration(
                              color: AppColors.a18,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.01,
                                  vertical: size.height * 0.001),
                              child: Center(
                                child: Text(' 50 W',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      fontSize: size.height * 0.022,
                                    )),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Manage Your Notifications.',
                  style: GoogleFonts.roboto(
                    fontSize: size.height * 0.016,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
            ),

            ///Spacer(),
            SizedBox(
              height: size.height * 0.01,
            ),
            //Customized
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.02, vertical: size.height * 0.005),
              child: PhysicalModel(
                color: AppColors.a1,
                borderRadius: BorderRadius.circular(10),
                shadowColor: AppColors.a5,
                elevation: 2,
                child: Container(
                  height: size.height * 0.075,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: AppColors.th1wht2,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          // height: size.height * 0.06,
                          //width: size.width * 0.55,
                          child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Consumption Exceed Per Day',
                            style: GoogleFonts.roboto(
                              fontSize: size.height * 0.02,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )),
                      Padding(
                        padding: EdgeInsets.only(
                            right: size.width * 0.015,
                            top: size.height * 0.01,
                            bottom: size.height * 0.01),
                        child: PhysicalModel(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50),
                          shadowColor: Colors.black,
                          elevation: 3,
                          child: Container(
                            height: size.height * 0.07,
                            //width: size.width * 0.33,
                            decoration: BoxDecoration(
                              color: AppColors.a1,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.01,
                                  vertical: size.height * 0.005),
                              child: LiteRollingSwitch(
                                value: false,
                                width: 110,
                                textOn: 'ON',
                                textOff: 'OFF',
                                colorOn: AppColors.g35,
                                colorOff: AppColors.th1org,
                                iconOn: Icons.lightbulb_outline,
                                iconOff: Icons.power_settings_new,
                                textSize: size.height * 0.02,
                                textOffColor: Colors.black,
                                textOnColor: Colors.white,
                                animationDuration:
                                    const Duration(milliseconds: 100),
                                onChanged: (bool state) {
                                  print('turned ${(state) ? 'on' : 'off'}');
                                },
                                onDoubleTap: () {},
                                onSwipe: () {},
                                onTap: () {},
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.02, vertical: size.height * 0.005),
              child: PhysicalModel(
                color: AppColors.a1,
                borderRadius: BorderRadius.circular(10),
                shadowColor: AppColors.a5,
                elevation: 2,
                child: Container(
                  height: size.height * 0.075,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: AppColors.th1wht2,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: size.height * 0.06,
                          width: size.width * 0.55,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Low Balance',
                                style: GoogleFonts.roboto(
                                  fontSize: size.height * 0.02,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: PhysicalModel(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50),
                          shadowColor: Colors.black,
                          elevation: 3,
                          child: Container(
                            height: size.height * 0.07,
                            //width: size.width * 0.33,
                            decoration: BoxDecoration(
                              color: AppColors.a1,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.01,
                                  vertical: size.height * 0.005),
                              child: LiteRollingSwitch(
                                value: false,
                                width: 110,
                                textOn: 'ON',
                                textOff: 'OFF',
                                colorOn: AppColors.g35,
                                colorOff: AppColors.th1org,
                                iconOn: Icons.lightbulb_outline,
                                iconOff: Icons.power_settings_new,
                                textSize: size.height * 0.02,
                                textOffColor: Colors.black,
                                textOnColor: Colors.white,
                                animationDuration:
                                    const Duration(milliseconds: 100),
                                onChanged: (bool state) {
                                  print('turned ${(state) ? 'on' : 'off'}');
                                },
                                onDoubleTap: () {},
                                onSwipe: () {},
                                onTap: () {},
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.02, vertical: size.height * 0.005),
              child: PhysicalModel(
                color: AppColors.a1,
                borderRadius: BorderRadius.circular(10),
                shadowColor: AppColors.a5,
                elevation: 2,
                child: Container(
                  height: size.height * 0.075,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: AppColors.th1wht2,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: size.height * 0.06,
                          width: size.width * 0.55,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Power Cut/Restore',
                                style: GoogleFonts.roboto(
                                  fontSize: size.height * 0.02,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: PhysicalModel(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50),
                          shadowColor: Colors.black,
                          elevation: 3,
                          child: Container(
                            height: size.height * 0.07,
                            //width: size.width * 0.33,
                            decoration: BoxDecoration(
                              color: AppColors.a1,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.01,
                                  vertical: size.height * 0.005),
                              child: LiteRollingSwitch(
                                value: false,
                                width: 110,
                                textOn: 'ON',
                                textOff: 'OFF',
                                colorOn: AppColors.g35,
                                colorOff: AppColors.th1org,
                                iconOn: Icons.lightbulb_outline,
                                iconOff: Icons.power_settings_new,
                                textSize: size.height * 0.02,
                                textOffColor: Colors.black,
                                textOnColor: Colors.white,
                                animationDuration:
                                    const Duration(milliseconds: 100),
                                onChanged: (bool state) {
                                  print('turned ${(state) ? 'on' : 'off'}');
                                },
                                onDoubleTap: () {},
                                onSwipe: () {},
                                onTap: () {},
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.02, vertical: size.height * 0.005),
              child: PhysicalModel(
                color: AppColors.a1,
                borderRadius: BorderRadius.circular(10),
                shadowColor: AppColors.a5,
                elevation: 2,
                child: Container(
                  height: size.height * 0.075,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: AppColors.th1wht2,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: size.height * 0.06,
                          width: size.width * 0.55,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Source Changes',
                                style: GoogleFonts.roboto(
                                  fontSize: size.height * 0.02,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: PhysicalModel(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50),
                          shadowColor: Colors.black,
                          elevation: 3,
                          child: Container(
                            height: size.height * 0.07,
                            //width: size.width * 0.33,
                            decoration: BoxDecoration(
                              color: AppColors.a1,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.01,
                                  vertical: size.height * 0.005),
                              child: LiteRollingSwitch(
                                value: false,
                                width: 110,
                                textOn: 'ON',
                                textOff: 'OFF',
                                colorOn: AppColors.g35,
                                colorOff: AppColors.th1org,
                                iconOn: Icons.lightbulb_outline,
                                iconOff: Icons.power_settings_new,
                                textSize: size.height * 0.02,
                                textOffColor: Colors.black,
                                textOnColor: Colors.white,
                                animationDuration:
                                    const Duration(milliseconds: 100),
                                onChanged: (bool state) {
                                  print('turned ${(state) ? 'on' : 'off'}');
                                },
                                onDoubleTap: () {},
                                onSwipe: () {},
                                onTap: () {},
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.02, vertical: size.height * 0.005),
              child: PhysicalModel(
                color: AppColors.a1,
                borderRadius: BorderRadius.circular(10),
                shadowColor: AppColors.a5,
                elevation: 2,
                child: Container(
                  height: size.height * 0.075,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: AppColors.th1wht2,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: size.height * 0.06,
                          width: size.width * 0.55,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Recharge',
                                style: GoogleFonts.roboto(
                                  fontSize: size.height * 0.02,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: PhysicalModel(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50),
                          shadowColor: Colors.black,
                          elevation: 3,
                          child: Container(
                            height: size.height * 0.07,
                            //width: size.width * 0.33,
                            decoration: BoxDecoration(
                              color: AppColors.a1,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.01,
                                  vertical: size.height * 0.005),
                              child: LiteRollingSwitch(
                                value: false,
                                width: 110,
                                textOn: 'ON',
                                textOff: 'OFF',
                                colorOn: AppColors.g35,
                                colorOff: AppColors.th1org,
                                iconOn: Icons.lightbulb_outline,
                                iconOff: Icons.power_settings_new,
                                textSize: size.height * 0.02,
                                textOffColor: Colors.black,
                                textOnColor: Colors.white,
                                animationDuration:
                                    const Duration(milliseconds: 100),
                                onChanged: (bool state) {
                                  print('turned ${(state) ? 'on' : 'off'}');
                                },
                                onDoubleTap: () {},
                                onSwipe: () {},
                                onTap: () {},
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Text('Switch 1 State: ${controller.switchState}'),
            // CustomSwitch(controller: controller),
            // SizedBox(height: 20),
            // Text('Switch 2 State: ${controller.switchState}'),
            // CustomSwitch(controller: controller),
            // SizedBox(height: 20),
            // Text('Switch 3 State: ${controller.switchState}'),
            // CustomSwitch(controller: controller),
          ],
        ),
      ),
    );
  }
}
