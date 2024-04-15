//DecreaseLoad2
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/buttons/horizontal_button.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/dailloge_box_reusable/reusable_dailoge_box.dart';
import 'package:suvidha_app_ui/constants/reusable_appbar/reusable_appbar.dart';
import 'package:suvidha_app_ui/constants/text_field_custon_weight/textfield_weight.dart';
import 'package:suvidha_app_ui/controllers/application_detail_controller.dart';
import 'package:suvidha_app_ui/screens/view_check_appli_status_request_load/enter_request_load_otp2.dart';

class EnterRequestNo1 extends StatelessWidget {
  EnterRequestNo1({Key? key}) : super(key: key);
  final SelectionController selectionController =
      Get.put(SelectionController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.th1whtbackgrd,
      appBar: myAppBar(
        //backgroundColor: AppColors.white,
        title: 'Enter Request No',
        leadingIcon: Icons.arrow_back_ios_outlined,

        centerTitle: true,
        titleFontSize: size.width * 0.042, // Specify font size here
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
      body: Container(
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.03,
              ),

              SizedBox(
                height: size.height * 0.005,
              ),

              SizedBox(
                height: size.height * 0.2,
              ),

              //नया लोड वर्तमान लोड से अधिक होना चाहिए।
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    'Enter Request No received while applying for New Service Connection.',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: size.width * 0.029,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.02,
              ),

              ///
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    'Request No.',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: size.width * 0.031,
                      color: AppColors.a15,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.005,
              ),

              Padding(
                padding: const EdgeInsets.all(4.0),
                child: PhysicalModel(
                  elevation: 5,
                  color: AppColors.greyColor,
                  shadowColor: AppColors.black,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: size.height * 0.12,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: AppColors.th1wht2,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          //height: size.height * 0.05,
                          width: size.width * 0.99,
                          child: Directionality(
                            textDirection: TextDirection.ltr,
                            child: CustomTextField(
                              obscureText: false,
                              hintText: 'Enter Request No.',
                              keyboardType: TextInputType.text,
                              prefixIcon: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Icon(
                                      Icons.numbers,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.02,
              ),

              SizedBox(height: 20),
              HorizontalButton(
                text: 'Validate & Send OTP',
                onClick: () {
                  showOtpDialogOTP(context);
                  //Get.to(EnterApplicationDetails1());
                  // Your onClick logic here
                  print('Container next');
                },
              ),
            ],
          ),
        ),
      ),

      // },
      //),
    );
  }

  showOtpDialogOTP(BuildContext context) {
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
          titleText: 'OTP Sent',
          //contentText
          contentText: '\nOTP Sent Successfully to mobile no',
          additionalText1: "*********233",
          cancelText: 'Cancel',
          submitText: 'OK',
          onCancelPressed: () {
            Get.back();
          },
          onSubmitPressed: () {
            Get.back();

            Get.to(EnterRequestNoOTP2());
            // Get.back();
          },
        );
      },
    );
  }
}
