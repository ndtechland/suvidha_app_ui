import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/buttons/horizontal_button.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/reusable_appbar/reusable_appbar.dart';
import 'package:suvidha_app_ui/constants/text_field_custon_weight/textfield_weight.dart';
import 'package:suvidha_app_ui/controllers/application_detail_controller.dart';
import 'package:suvidha_app_ui/screens/select_connection_dashbord/application_details_pages/enter_application_details_3.dart';

//import '../../constants/reusable_appbar/reusable_appbar.dart';

class EnterApplicationDetails2 extends StatelessWidget {
  EnterApplicationDetails2({Key? key}) : super(key: key);
  final SelectionController selectionController =
      Get.put(SelectionController());

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
    //String filteredText = text.replaceAll(RegExp(r'[^\w\s.,!*\'$\\\/]'), '');

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: myAppBar(
        //backgroundColor: AppColors.white,
        title: """Enter New Connection Installation \nAddress""",
        //'Enter New Connection Installation \nAddress',

        leadingIcon: Icons.arrow_back_ios_outlined,

        centerTitle: true,
        titleFontSize: size.width * 0.043, // Specify font size here

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.01,
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: Text(
                  'Enter Address of premise where New Connection\nis desired',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: size.width * 0.036,
                    color: AppColors.a14,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: size.height * 0.005,
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: Text(
                  '* indicates mandatory fields',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: size.width * 0.030,
                    color: AppColors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.005,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: Text(
                  '* Maximum 40 chars for any field of Address',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: size.width * 0.030,
                    color: AppColors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.005,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: Text(
                  '* Special characters(* \' \$ & + : ; =\\ ? @ | / . > < ^ * % !) are\n   not allowed.',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: size.width * 0.030,
                    color: AppColors.black,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: size.height * 0.02,
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: Text(
                  'House No/Building No*',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: size.width * 0.035,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),

            Directionality(
              textDirection: TextDirection.ltr,
              child: CustomTextField(
                obscureText: false,
                hintText: 'House 1',
                keyboardType: TextInputType.text,

                prefixIcon: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Icon(
                        Icons.house,
                        color: Colors.black,
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
            SizedBox(
              height: size.height * 0.007,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: Text(
                  'Street *',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: size.width * 0.035,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.007,
            ),

            Directionality(
              textDirection: TextDirection.ltr,
              child: CustomTextField(
                obscureText: false,
                hintText: 'Street',
                keyboardType: TextInputType.text,

                prefixIcon: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Icon(
                        Icons.streetview,
                        color: Colors.black,
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

            SizedBox(
              height: size.height * 0.007,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: Text(
                  'Address Line 1',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: size.width * 0.035,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.007,
            ),

            Directionality(
              textDirection: TextDirection.ltr,
              child: CustomTextField(
                obscureText: false,
                hintText: 'Address Line 1',
                keyboardType: TextInputType.text,

                prefixIcon: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Icon(
                        Icons.pin_drop_outlined,
                        color: Colors.black,
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
            SizedBox(
              height: size.height * 0.007,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: Text(
                  'Address Line 2',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: size.width * 0.035,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.007,
            ),

            Directionality(
              textDirection: TextDirection.ltr,
              child: CustomTextField(
                obscureText: false,
                hintText: 'Address Line 2',
                keyboardType: TextInputType.text,

                prefixIcon: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Icon(
                        Icons.pin_drop,
                        color: Colors.black,
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

            SizedBox(
              height: size.height * 0.007,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: Text(
                  'Address Line 3',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: size.width * 0.035,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.007,
            ),

            Directionality(
              textDirection: TextDirection.ltr,
              child: CustomTextField(
                obscureText: false,
                hintText: 'Address Line 3',
                keyboardType: TextInputType.text,

                prefixIcon: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Icon(
                        Icons.pin_drop_sharp,
                        color: Colors.black,
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
            SizedBox(
              height: size.height * 0.007,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: Text(
                  'City *',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: size.width * 0.035,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.007,
            ),

            Directionality(
              textDirection: TextDirection.ltr,
              child: CustomTextField(
                obscureText: false,
                hintText: 'City',
                keyboardType: TextInputType.text,

                prefixIcon: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Icon(
                        Icons.location_city_rounded,
                        color: Colors.black,
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
            SizedBox(
              height: size.height * 0.007,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: Text(
                  'PinCode*',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: size.width * 0.035,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.007,
            ),

            Directionality(
              textDirection: TextDirection.ltr,
              child: CustomTextField(
                obscureText: false,
                hintText: 'Pin Code',
                keyboardType: TextInputType.number,

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
                  ],
                ),
                // Icon(
                //   Icons.phone_android_outlined,
                //   color: Colors.black,
                // ),
              ),
            ),

            SizedBox(
              height: size.height * 0.007,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: Text(
                  'Email',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: size.width * 0.035,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.007,
            ),

            Directionality(
              textDirection: TextDirection.ltr,
              child: CustomTextField(
                obscureText: false,
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,

                prefixIcon: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Icon(
                        Icons.email,
                        color: Colors.black,
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

            SizedBox(height: 30),
            HorizontalButton(
              text: 'NEXT',
              onClick: () {
                Get.to(EnterApplicationDetails3());
                // Your onClick logic here
                print('Container next');
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
          ],
        ),
      ),

      // },
      //),
    );
  }
}
