import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/buttons/horizontal_button.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/text_field_custon_weight/textfield_weight.dart';
import 'package:suvidha_app_ui/controllers/my_connection_controller/my_connection_controllerrr.dart';
import 'package:suvidha_app_ui/screens/verify_mobilescreens/verify_mobile1.dart';

import '../../constants/reusable_appbar/reusable_appbar.dart';

class NewConnectionPage2 extends StatelessWidget {
  final GlobalKey<FormState> _formconnectionKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    MyConnectionController _myconnection = Get.put(MyConnectionController());
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: myAppBar(
        //backgroundColor: AppColors.white,
        title: 'Select Area',
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(
              //   height: size.height * 0.03,
              // ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                  child: Text(
                    'Selected District Where Connection is desired.',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: size.width * 0.035,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.height * 0.01),
                child: Obx(() => Container(
                      height: size.height * 0.07,
                      decoration: BoxDecoration(
                        //  borderRadius: ,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          border: InputBorder.none,

                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 10.0,
                          ),
                          // Adjust content padding as needed
// Remove outer border completely

                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ), // Remove border color
                            borderRadius: BorderRadius.circular(10),
                          ),
                          // border: OutlineInputBorder(
                          //   borderSide: BorderSide(
                          //       color:
                          //           Colors.transparent), // Remove border color
                          //   borderRadius: BorderRadius.circular(20),
                          // ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(
                                10), // Apply border radius here
                          ),
                          filled: true,
                          fillColor: AppColors.a18,
                        ),
                        dropdownColor: AppColors.white,
                        value: _myconnection.selectedValue.value,
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            _myconnection.updateSelectedValue(newValue);
                          }
                        },
                        items: ['PATNA', 'MUNGER', 'MOKAMA', 'LAKHISARAI']
                            .map((item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: GoogleFonts.poppins(
                                fontSize: size.height * 0.017,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    )),
              ),
              SizedBox(height: size.height * 0.03),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                  child: Text(
                    'Enter Mobile No.',
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
                  hintText: 'Enter Your Mobile',
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a phone number';
                    } else if (value.length != 10) {
                      return 'Phone number must be 10 digits long';
                    }
                    return null;
                  },

                  prefixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      //   child: Icon(
                      //     Icons.call,
                      //     color: Colors.black,
                      //   ),
                      // ),
                      Text(
                        '+91 ',
                        style: GoogleFonts.poppins(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black, // Added text color
                        ),
                      ),
                    ],
                  ),
                  // Icon(
                  //   Icons.phone_android_outlined,
                  //   color: Colors.black,
                  // ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: size.height * 0.006,
                      horizontal: size.width * 0.05),
                  child: Text(
                    '* Enter a valid 10 digit Mobile No.',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: size.width * 0.029,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: size.height * 0.006,
                      horizontal: size.width * 0.05),
                  child: Text(
                    '* Mobile No Will be used for all Future communications.',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: size.width * 0.029,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: size.height * 0.006,
                      horizontal: size.width * 0.05),
                  child: Text(
                    '* An OTP will be sent to Mobile No entered above.',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: size.width * 0.029,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              HorizontalButton(
                text: 'NEXT',
                onClick: () {
                  Get.to(VerifyMobilenumber());

                  //Get.to(Verifyotp2());
                  // Your onClick logic here
                  print('Container clicked!');
                },
              ),
              // ElevatedButton(
              //   onPressed: () {
              //     Get.to(VerifyMobilenumber());
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
              //     'Send OTP',
              //     style: GoogleFonts.poppins(
              //       fontWeight: FontWeight.w600,
              //       fontSize: size.width * 0.041,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
