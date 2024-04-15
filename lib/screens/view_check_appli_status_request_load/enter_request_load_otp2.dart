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
import 'package:suvidha_app_ui/controllers/application_detail_controller.dart';
import 'package:suvidha_app_ui/controllers/vrify_mobile_controllers11.dart';

class EnterRequestNoOTP2 extends StatelessWidget {
  EnterRequestNoOTP2({Key? key}) : super(key: key);
  final SelectionController selectionController =
      Get.put(SelectionController());

  final OTPController otpController = Get.put(OTPController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.th1whtbackgrd,
      appBar: myAppBar(
        //backgroundColor: AppColors.white,
        title: 'Verify OTP',
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
                height: size.height * 0.15,
              ),

              SizedBox(height: size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.0),
                      child: Text(
                        'Request No :',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: size.height * 0.019,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.0),
                      child: Text(
                        ' 523433222244',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: size.height * 0.018,
                          color: AppColors.textmaroon505,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    'Enter OTP*',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: size.width * 0.032,
                      color: AppColors.a15,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.005,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    'Enter Request No received on Mobile No registered while applying for new Connection.',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: size.width * 0.029,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: PhysicalModel(
                  color: Colors.white,
                  elevation: 4,
                  shadowColor: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: size.height * 0.12,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: AppColors.th1wht2,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: size.height * 0.012),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: List.generate(
                          4,
                          (index) => _buildOTPTextField(context, index),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              HorizontalButton(
                text: 'Verify',
                onClick: () {
                  //Get.to(EnterApplicationDetails1());
                  // Your onClick logic here
                  print('Container next');
                },
              ),

              SizedBox(
                height: size.height * 0.01,
              ),
              // Observe only the parts of UI that depend on observable variables
              const SizedBox(
                height: 10,
              ),

              ///

              Obx(() {
                if (otpController.resendButtonEnabled) {
                  return ElevatedButton(
                    onPressed: () {
                      otpController.resetTimer();
                      showOtpDialogOTP(context);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.disabled)) {
                            // Button is disabled
                            return Colors.grey; // Change to disabled color
                          }
                          // Button is enabled
                          return AppColors.th1org; // Change to enabled color
                        },
                      ),
                      foregroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.disabled)) {
                            // Button is disabled
                            return Colors.black.withOpacity(
                                0.5); // Change to disabled text color
                          }
                          // Button is enabled
                          return Colors.white; // Change to enabled text color
                        },
                      ),
                    ),
                    child: Text('Resend OTP'),
                  );
                } else {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "'Resend OTP' button will enable in ",
                        style: GoogleFonts.roboto(
                          color: AppColors.black,
                          //fontSize: 14
                        ),
                      ),
                      Text(
                        ' ${otpController.timerCountdown} s',
                        style: GoogleFonts.roboto(
                          color: AppColors.th1org,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  );
                }
              }),

              SizedBox(
                height: size.height * 0.005,
              ),

              SizedBox(
                height: size.height * 0.005,
              ),
              //नया लोड वर्तमान लोड से अधिक होना चाहिए।

              SizedBox(
                height: size.height * 0.007,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    'Change Request No',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: size.width * 0.029,
                      color: AppColors.a15,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),

              //नया लोड वर्तमान लोड से अधिक होना चाहिए।

              SizedBox(
                height: size.height * 0.005,
              ),

              //नया लोड वर्तमान लोड से अधिक होना चाहिए।
              SizedBox(
                height: size.height * 0.02,
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
          titleText: 'Resend OTP Sent',
          //contentText
          contentText: '\nResend OTP Sent Successfully to mobile no',
          additionalText1: "*********233",
          cancelText: 'Cancel',
          submitText: 'OK',
          onCancelPressed: () {
            Get.back();
          },
          onSubmitPressed: () {
            Get.back();

            //Get.to(EnterRequestNoOTP2());
            // Get.back();
          },
        );
      },
    );
  }
}

Widget _buildOTPTextField(BuildContext context, int index) {
  final OTPController otpController = Get.put(OTPController());
  Size size = MediaQuery.of(context).size;

  return PhysicalModel(
    color: Colors.transparent,
    shadowColor: AppColors.a1,
    elevation: 5,
    borderRadius: BorderRadius.circular(5),
    child: SizedBox(
      width: 59,
      // height: 70,
      child: TextFormField(
        style: TextStyle(
          color: AppColors.white,
          fontSize: size.height * 0.023,
          fontWeight: FontWeight.bold,
        ),
        controller: TextEditingController(
            text: otpController.otp[index]), // Set initial text
        focusNode: otpController.focusNodes[index],
        onChanged: (value) {
          if (value.length > 1) {
            otpController.otp[index] = value.substring(value.length - 1);
            otpController.otpController.text = otpController.otp[index];
            otpController.focusNodes[index].unfocus();
            if (index < otpController.focusNodes.length - 1) {
              otpController.requestFocus(index + 1, () {
                FocusScope.of(context)
                    .requestFocus(otpController.focusNodes[index + 1]);
              });
            }
          } else if (value.isEmpty) {
            otpController.otp[index] = '';
            if (index > 0) {
              otpController.requestFocus(index - 1, () {
                FocusScope.of(context)
                    .requestFocus(otpController.focusNodes[index - 1]);
              });
            }
          } else {
            otpController.otp[index] = value;
            if (index < otpController.focusNodes.length - 1) {
              otpController.requestFocus(index + 1, () {
                FocusScope.of(context)
                    .requestFocus(otpController.focusNodes[index + 1]);
              });
            }
          }
        },
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        cursorColor: AppColors.th1blue,
        decoration: InputDecoration(
          counterText: '',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
                color: Colors.transparent, width: 2), // Change color as needed
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
                color: AppColors.th1wht2, width: 3), // Change color as needed
          ),
          fillColor: AppColors.a17,
          filled: true,
        ),
      ),
    ),
  );
}
