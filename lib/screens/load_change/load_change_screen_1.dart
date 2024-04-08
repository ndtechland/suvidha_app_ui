import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/buttons/circular_horizontal_buttom.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/text_field_custon_weight/textfield_weight.dart';
import 'package:suvidha_app_ui/controllers/my_connection_controller/my_connection_controllerrr.dart';
import 'package:suvidha_app_ui/screens/load_change/load_inc_dec_page.dart';

import '../../constants/reusable_appbar/reusable_appbar.dart';

class LoadChangeScreen1 extends StatelessWidget {
  final GlobalKey<FormState> _formconnectionKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    MyConnectionController _myconnection = Get.put(MyConnectionController());
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: myAppBar(
        //backgroundColor: AppColors.white,
        title: 'Load Change - लोड परिवर्तन',
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
                    'Enter Consumer Id/ CA Number for which Load Change is needed.',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: size.width * 0.03,
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
                    'उपभोक्ता आईडी/सीए नंबर दर्ज करें जिसके लिए लोड परिवर्तन की आवश्यकता है।',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: size.width * 0.03,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.01,
              ),

              SizedBox(height: size.height * 0.02),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                  child: Text(
                    'Customer ID/ CA Number.',
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
                  hintText: 'Enter Customer ID / CA No',
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
                          Icons.person,
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

              SizedBox(height: size.height * 0.02),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    'HELP',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: size.width * 0.035,
                      color: AppColors.a15,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),

              HorizontalCircularButton(
                height: size.height * 0.045,
                width: size.width * 0.4,
                text: "FETCH DETAIL",
                onPressed: () {
                  // if (_formKey.currentState!.validate()) {
                  //   // If all fields are valid, toggle selection and navigate
                  //   selectionController.toggleSelection(0);
                  Get.to(LoadChangeIncDec());
                  // }
                },
                //isSelected: selectionController.selectedIndices.contains(0),
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
