import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/buttons/horizontal_button.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/text_field_custon_weight/textfield_weight.dart';
import 'package:suvidha_app_ui/controllers/my_connection_controller/my_connection_controllerrr.dart';
import 'package:suvidha_app_ui/screens/verify_mobilescreens/verify_otp2.dart';

import '../../constants/reusable_appbar/reusable_appbar.dart';

class VerifyMobilenumber extends StatelessWidget {
  final GlobalKey<FormState> _formconnectionKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    MyConnectionController _myconnection = Get.put(MyConnectionController());
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: myAppBar(
        //backgroundColor: AppColors.white,
        title: 'Verify Mobile No.',
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
      body: SafeArea(
        child: Form(
          key: _formconnectionKey,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.02,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    'Please verify if the Mobile No entered is correct.',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: size.width * 0.035,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.05),
                      child: Text(
                        'Selected District.',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: size.width * 0.035,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.05),
                    child: Icon(
                      Icons.edit_outlined,
                      color: Colors.grey.shade700,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.height * 0.01),
                  child:
                      // Obx(() =>
                      Container(
                    height: size.height * 0.07,
                    decoration: BoxDecoration(
                      // color: AppColors.a18,
                      gradient: AppColors.gradient5,

                      //  borderRadius: ,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Container(
                            height: size.height * 0.06,
                            width: size.width * 0.4,
                            decoration: BoxDecoration(
                              color: AppColors.a19,
                              //  borderRadius: ,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Your District:',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: size.width * 0.042,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(-1.0, -1.0),
                                      blurRadius: 3.0,
                                      color: Colors.black.withOpacity(0.2),
                                    ),
                                    Shadow(
                                      offset: Offset(1.0, 1.0),
                                      blurRadius: 3.0,
                                      color: Colors.white.withOpacity(0.7),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Icon(Icons.double_arrow),
                        Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Container(
                            height: size.height * 0.06,
                            width: size.width * 0.44,
                            decoration: BoxDecoration(
                              color: AppColors.a1,
                              // gradient: AppColors.gradient6,
                              //  borderRadius: ,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'PATNA',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: size.width * 0.039,
                                  color: AppColors.a11,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(-1.0, -1.0),
                                      blurRadius: 3.0,
                                      color: Colors.black.withOpacity(0.2),
                                    ),
                                    Shadow(
                                      offset: Offset(1.0, 1.0),
                                      blurRadius: 3.0,
                                      color: Colors.white.withOpacity(0.7),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                  //),
                  ),
              SizedBox(height: size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.05),
                      child: Text(
                        'Your Mobile No.',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: size.width * 0.035,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.05),
                    child: Icon(
                      Icons.edit_outlined,
                      color: Colors.grey.shade700,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.005,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.height * 0.01),
                  child:
                      // Obx(() =>
                      Container(
                    height: size.height * 0.07,
                    decoration: BoxDecoration(
                      // color: AppColors.a18,
                      gradient: AppColors.gradient5,

                      //  borderRadius: ,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Container(
                            height: size.height * 0.06,
                            width: size.width * 0.4,
                            decoration: BoxDecoration(
                              color: AppColors.a19,
                              //  borderRadius: ,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Your Phone No:',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: size.width * 0.042,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(-1.0, -1.0),
                                      blurRadius: 3.0,
                                      color: Colors.black.withOpacity(0.2),
                                    ),
                                    Shadow(
                                      offset: Offset(1.0, 1.0),
                                      blurRadius: 3.0,
                                      color: Colors.white.withOpacity(0.7),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Icon(Icons.double_arrow),
                        Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Container(
                            height: size.height * 0.06,
                            width: size.width * 0.44,
                            decoration: BoxDecoration(
                              color: AppColors.a1,
                              // gradient: AppColors.gradient6,
                              //  borderRadius: ,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '7019380033',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: size.width * 0.039,
                                  color: AppColors.a11,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(-1.0, -1.0),
                                      blurRadius: 3.0,
                                      color: Colors.black.withOpacity(0.2),
                                    ),
                                    Shadow(
                                      offset: Offset(1.0, 1.0),
                                      blurRadius: 3.0,
                                      color: Colors.white.withOpacity(0.7),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                  //),
                  ),
              SizedBox(height: size.height * 0.02),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                  child: Text(
                    'Enter OTP sent to Mobile No entered.',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: size.width * 0.035,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.005,
              ),
              Directionality(
                textDirection: TextDirection.ltr,
                child: CustomTextField(
                  obscureText: false,
                  hintText: 'Enter Your OTP',
                  keyboardType: TextInputType.number,
                  // validator: (value) {
                  //   if (value == null || value.isEmpty) {
                  //     return 'Please enter a phone number';
                  //   } else if (value.length != 5) {
                  //     return 'Phone number must be 10 digits long';
                  //   }
                  //   return null;
                  // },
                  //suffixIcon: Icon(Icons.remove_red_eye_outlined),

                  prefixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Icon(
                          Icons.pin,
                          color: Colors.black,
                        ),
                      ),

                      ///
                      // Text(
                      //   '+91 ',
                      //   style: GoogleFonts.poppins(
                      //     fontSize: 15.0,
                      //     fontWeight: FontWeight.w500,
                      //     color: Colors.black, // Added text color
                      //   ),
                      // ),
                    ],
                  ),
                  // Icon(
                  //   Icons.phone_android_outlined,
                  //   color: Colors.black,
                  // ),
                ),
              ),
              SizedBox(height: 50),
              HorizontalButton(
                text: 'Verify OTP',
                onClick: () {
                  Get.to(Verifyotp2());
                  // Your onClick logic here
                  print('Container clicked!');
                },
              ),
              // ElevatedButton(
              //   onPressed: () {
              //     Get.to(Verifyotp2());
              //     // if (_formconnectionKey.currentState!.validate()) {
              //     //   // Form is valid, proceed with submission
              //     //   // You can access the form fields' values using _formKey.currentState!.value
              //     // }
              //     // Handle form submission
              //   },
              //   style: ElevatedButton.styleFrom(
              //     primary: AppColors.a15, // Change the button color here
              //     onPrimary: Colors.white, // Change the text color here
              //     minimumSize: Size(double.infinity,
              //         50), // Change the button height and width here
              //     padding: EdgeInsets.symmetric(
              //         vertical: 16.0), // Adjust vertical padding as needed
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(
              //           0), // Adjust border radius as needed
              //     ),
              //   ),
              //   child: Text(
              //     'Verify OTP',
              //     style: GoogleFonts.poppins(
              //       fontWeight: FontWeight.w600,
              //       fontSize: size.width * 0.041,
              //     ),
              //   ),
              // ),
              SizedBox(height: size.height * 0.02),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    'Resend OTP button enable in 91 secs',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: size.width * 0.035,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.005,
              ),
              // HorizontalButton
              // HorizontalButton(
              //   text: 'Verify OTP',
              //   onClick: () {
              //     Get.to(Verifyotp2());
              //     // Your onClick logic here
              //     print('Container clicked!');
              //   },
              // )
            ],
          ),
        ),
      ),
    );
  }
}
