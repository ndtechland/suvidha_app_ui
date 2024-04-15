//DecreaseLoad2
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/buttons/circular_horizontal_buttom.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/dailloge_box_reusable/reusable_dailoge_box.dart';
import 'package:suvidha_app_ui/constants/reusable_appbar/reusable_appbar.dart';
import 'package:suvidha_app_ui/constants/text_field_custon_weight/textfield_weight.dart';
import 'package:suvidha_app_ui/controllers/application_detail_controller.dart';
import 'package:suvidha_app_ui/controllers/vrify_mobile_controllers11.dart';

class DecreaseLoad2 extends StatelessWidget {
  DecreaseLoad2({Key? key}) : super(key: key);
  final SelectionController selectionController =
      Get.put(SelectionController());

  final OTPController otpController = Get.put(OTPController());

  @override
  Widget build(BuildContext context) {
    final List<Color> tileColors = [
      AppColors.a24,
      AppColors.a16,
    ];
    final List<Gradient> tilegradient = [
      AppColors.gradient7,
      AppColors.gradient11,
    ];

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: myAppBar(
        //backgroundColor: AppColors.white,
        title: 'Decrease Load - लोड घटायें',
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: PhysicalModel(
                  color: Colors.transparent,
                  elevation: 5,
                  shadowColor: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: size.height * 0.26,
                    width: size.width,
                    decoration: BoxDecoration(
                      //color: AppColors.a20,
                      color: AppColors.th1blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        height: size.height * 0.08,
                        width: size.width,
                        decoration: BoxDecoration(
                          //color: AppColors.th1blue2,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: size.height * 0.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: size.width * 0.44,
                                  height: size.height * 0.05,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.03),
                                      child: Text(
                                        'Consumer ID:',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            fontSize: size.width * 0.035,
                                            color: AppColors.a18
                                            //
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.44,
                                  height: size.height * 0.05,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.03),
                                      child: Text(
                                        '102167392',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            fontSize: size.width * 0.035,
                                            color: AppColors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: size.width * 0.44,
                                  height: size.height * 0.05,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.03),
                                      child: Text(
                                        'Consumer Name:',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            fontSize: size.width * 0.035,
                                            color: AppColors.a18),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.44,
                                  height: size.height * 0.05,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.03),
                                      child: Text(
                                        'Er. Kavi Singh',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            fontSize: size.width * 0.035,
                                            color: AppColors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: size.width * 0.44,
                                  height: size.height * 0.05,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.03),
                                      child: Text(
                                        'Enter Load:',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            fontSize: size.width * 0.035,
                                            color: AppColors.a18),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.44,
                                  height: size.height * 0.05,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.03),
                                      child: Text(
                                        '2.0000000 KV',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            fontSize: size.width * 0.035,
                                            color: AppColors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: size.width * 0.44,
                                  height: size.height * 0.05,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.03),
                                      child: Text(
                                        'No Of Phase:',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            fontSize: size.width * 0.035,
                                            color: AppColors.a18),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.44,
                                  height: size.height * 0.05,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.03),
                                      child: Text(
                                        '1 Phase',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            fontSize: size.width * 0.035,
                                            color: AppColors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: size.width * 0.44,
                                  height: size.height * 0.05,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.03),
                                      child: Text(
                                        'Load Type:',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            fontSize: size.width * 0.035,
                                            color: AppColors.a18),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.44,
                                  height: size.height * 0.05,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.03),
                                      child: Text(
                                        'DS-IID',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            fontSize: size.width * 0.035,
                                            color: AppColors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.00,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    '   Enter Your OTP',
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
              Container(
                /// height: size.height * 0.12,
                width: size.width,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: size.height * 0.012),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(
                      4,
                      (index) => _buildOTPTextField(context, index),
                    ),
                  ),
                ),
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
              SizedBox(height: size.height * 0.02),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    'Decrease Load',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: size.height * 0.016,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    '*New Load (नया लोड)',
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
              SizedBox(
                //height: size.height * 0.05,
                width: size.width * 0.99,
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: CustomTextField(
                    obscureText: false,
                    hintText: 'Enter New Load',
                    keyboardType: TextInputType.text,

                    prefixIcon: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Icon(
                            Icons.gas_meter,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),

                    // Icon(
                    //   Icons.phone_android_outlined,
                    //   color: Colors.black,
                    // ),
                    suffixIcon: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: size.height * 0.02),
                      child: Text(
                        'KW',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: size.width * 0.033,
                          color: AppColors.a15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),

              //नया लोड वर्तमान लोड से अधिक होना चाहिए।
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    '* New Load must be grater than current load.',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: size.width * 0.022,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.005,
              ),
              //नया लोड वर्तमान लोड से अधिक होना चाहिए।
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    '* नया लोड वर्तमान लोड से अधिक होना चाहिए।',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: size.width * 0.022,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.005,
              ),

              SizedBox(
                height: size.height * 0.007,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    'Do you want to change Phase? (क्या आप Phase बदलना चाहते हैं?)',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: size.width * 0.027,
                      color: AppColors.a15,
                    ),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Obx(
                      () => RadioListTile(
                        title: Text('Yes - हाँ'),
                        value: 0,
                        groupValue:
                            selectionController.selectedValueradio.value,
                        onChanged: (value) {
                          selectionController.setSelectedValue(value!);
                        },
                      ),
                    ),
                  ),
                  SizedBox(width: 0), // Adjust the gap as needed

                  Flexible(
                    child: Obx(
                      () => RadioListTile(
                        title: Text('No - नहीं'),
                        value: 1,
                        groupValue:
                            selectionController.selectedValueradio.value,
                        onChanged: (value) {
                          selectionController.setSelectedValue(value!);
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: PhysicalModel(
                  color: Colors.transparent,
                  elevation: 5,
                  shadowColor: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: size.height * 0.2,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: AppColors.th1blue,
                      borderRadius: BorderRadius.circular(10),
                      //color: AppColors.a20,
                      // gradient: AppColors.gradient11,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        height: size.height * 0.08,
                        width: size.width,
                        decoration: BoxDecoration(

                            //gradient: AppColors.gradient11,
                            ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: size.height * 0.0,
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.03),
                                child: Text(
                                  'Help - सहायता',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w800,
                                    fontSize: size.width * 0.035,
                                    color: AppColors.containercolor1,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.013,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.03),
                                  child: Text(
                                    'Phase:',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: size.width * 0.035,
                                        color: AppColors.a1),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.03),
                                  child: Text(
                                    'Load Range:                     ',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: size.width * 0.035,
                                        color: AppColors.a1),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.03,
                                  vertical: size.height * 0.01),
                              child: Divider(
                                color: Colors.black,
                                height: 1,
                                thickness: 1,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: size.width * 0.44,
                                  height: size.height * 0.03,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.03),
                                      child: Text(
                                        '      1',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            fontSize: size.width * 0.035,
                                            //color: Colors.                                             color: AppColors.a18
                                            color: AppColors.a18),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.44,
                                  height: size.height * 0.05,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.03),
                                      child: Text(
                                        '1.000 - 7.000',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            fontSize: size.width * 0.035,
                                            color: AppColors.a1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: size.width * 0.44,
                                  height: size.height * 0.05,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.03),
                                      child: Text(
                                        '      3',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            fontSize: size.width * 0.035,
                                            color: AppColors.a18),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.44,
                                  height: size.height * 0.05,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.03),
                                      child: Text(
                                        '5.000 - 7.000',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            fontSize: size.width * 0.035,
                                            color: AppColors.a1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),

              //नया लोड वर्तमान लोड से अधिक होना चाहिए।
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    '* Press Validate for Load/Phase Change',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: size.width * 0.022,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.005,
              ),
              //नया लोड वर्तमान लोड से अधिक होना चाहिए।
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    '* लोड/फेज परिवर्तन के लिए वैलिडेट बटन दबाएँ।',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: size.width * 0.022,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.005,
              ),
              //नया लोड वर्तमान लोड से अधिक होना चाहिए।
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    '* On Successful validation, Submit Button will be appear at bottom',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: size.width * 0.022,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.005,
              ),

              //नया लोड वर्तमान लोड से अधिक होना चाहिए।
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    '* सफल सत्यापन पर, सबमिट बटन नीचे दिखाई देगा।',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: size.width * 0.022,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.02,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: HorizontalCircularButton(
                  height: size.height * 0.04,
                  width: size.width * 0.3,
                  text: 'Validate*',
                  borderRadius: 10,
                  onPressed: () {
                    //showOtpDialog2(context);
                  },
                ),
              ),
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
