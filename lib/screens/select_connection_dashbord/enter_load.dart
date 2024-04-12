import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/buttons/horizontal_button.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/reusable_3Dtext/3d_textreusable.dart';
import 'package:suvidha_app_ui/constants/reusable_3Dtext/3dtext2.dart';
import 'package:suvidha_app_ui/constants/text_field_custon_weight/textfield_weight.dart';
import 'package:suvidha_app_ui/screens/select_connection_dashbord/application_details_pages/enter_appliocation_detail.dart';

import '../../constants/reusable_appbar/reusable_appbar.dart';

class EnterLoad extends StatelessWidget {
  const EnterLoad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> title1 = [
      'LTIS1D',
      'LTIS1D',
      'LTIS2D',
      'LTIS1D',
      'LTIS1D',
      'LTIS2D',
      'LTIS1D',
      'LTIS1D',
      'LTIS2D',
      'LTIS1D',
    ];
    final List<String> subtitle1 = [
      'INDUSTRIAL',
      'INDUSTRIAL',
      'INDUSTRIAL',
      'INDUSTRIAL',
      'INDUSTRIAL',
      'INDUSTRIAL',
      'INDUSTRIAL',
      'INDUSTRIAL',
      'INDUSTRIAL',
      'INDUSTRIAL',
      'INDUSTRIAL',
    ];

    final List<String> title2 = [
      'Phase',
      'Phase',
      'Phase',
      'Phase',
      'Phase',
      'Phase',
      'Phase',
      'Phase',
      'Phase',
      'Phase',
    ];
    final List<String> subtitle2 = [
      '1',
      '3',
      '3',
      '2',
      '1',
      '3',
      '2',
      '3',
      '1',
      '3',
    ];
    final List<String> title3 = [
      'Load Range',
      'Load Range',
      'Load Range',
      'Load Range',
      'Load Range',
      'Load Range',
      'Load Range',
      'Load Range',
      'Load Range',
      'Load Range',
    ];
    final List<String> subtitle3 = [
      '1 - 7 KW',
      '1 - 19 KW',
      '20 - 74 KW',
      '1 - 7 KW',
      '1 - 19 KW',
      '20 - 74 KW',
      '1 - 7 KW',
      '1 - 19 KW',
      '20 - 74 KW',
      '1 - 7 KW',
    ];
    final List<Color> tileColors = [
      AppColors.a24,
      AppColors.a16,
      // AppColors.a14,
      //AppColors.a6,
      //AppColors.a7,
      // AppColors.a3,
      //AppColors.a5,
      //AppColors.a14,
      //AppColors.a6,
      //AppColors.a7,
    ];
    final List<Gradient> tilegradient = [
      AppColors.gradient7,
      AppColors.gradient11,
    ];

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.th1whtbackgrd,
      appBar: myAppBar(
        //backgroundColor: AppColors.white,
        title: 'Enter Load',

        ///
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
      body:
          // ListView.builder(
          //   itemCount: title1.length,
          //   itemBuilder: (BuildContext context, int index) {
          //     // Ensure the index is within bounds of tileColors list
          //     int colorIndex = index % tileColors.length;
          //     Color tileColor = tileColors[colorIndex];
          //     Gradient gradient = tilegradient[index % tilegradient.length];

          // return
          Column(
        children: [
          SizedBox(
            height: size.height * 0.03,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
              child: Text(
                'Enter Load desired for New Connection',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: size.width * 0.035,
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
            child: PhysicalModel(
              color: Colors.black,
              elevation: 5,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: size.height * 0.09,
                width: size.width,
                decoration: BoxDecoration(
                    color: AppColors.th1wht2,
                    borderRadius: BorderRadius.circular(10)
                    // gradient: AppColors.gradient11,
                    ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ThreeDtext(
                            text: "HTS-I",
                            //title1[index],
                            fontColor: Colors.black,
                            fontSize: size.width * 0.035,
                            fontWeight: FontWeight.bold,
                          ),
                          //ThreeDtext2
                          ThreeDtext2(
                            text: "INDUSTRIAL",
                            //subtitle1
                            //[index],
                            fontColor: Colors.black,
                            fontSize: size.width * 0.035,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ThreeDtext(
                            text: "Line",
                            fontColor: Colors.black,
                            fontSize: size.width * 0.035,
                            fontWeight: FontWeight.bold,
                          ),
                          //ThreeDtext2
                          ThreeDtext2(
                            text: '11',
                            fontColor: Colors.black,
                            fontSize: size.width * 0.035,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ThreeDtext(
                            text: 'Phase',
                            fontColor: Colors.black,
                            fontSize: size.width * 0.035,
                            fontWeight: FontWeight.bold,
                          ),
                          //ThreeDtext2
                          ThreeDtext2(
                            text: '3',
                            fontColor: Colors.black,
                            fontSize: size.width * 0.035,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ThreeDtext(
                            text: 'Load Range',
                            fontColor: Colors.black,
                            fontSize: size.width * 0.035,
                            fontWeight: FontWeight.bold,
                          ),
                          //ThreeDtext2
                          ThreeDtext2(
                            text: '50 - 1500 KVA',
                            fontColor: Colors.black,
                            fontSize: size.width * 0.035,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
              child: Text(
                'Enter Load in the "Load Range" selected above.',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
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
              hintText: 'Enter Your Load',
              keyboardType: TextInputType.number,
              suffixIcon: Padding(
                padding: EdgeInsets.symmetric(vertical: size.height * 0.018),
                child: Text(
                  'KVA',
                  style: GoogleFonts.poppins(
                    fontSize: 15.0,
                    backgroundColor: Colors.white30,
                    fontWeight: FontWeight.w600,
                    color: Colors.black, // Added text color
                  ),
                ),
              ),

              prefixIcon: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(
                      Icons.electric_meter_sharp,
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
          SizedBox(height: 50),
          HorizontalButton(
            text: 'NEXT',
            onClick: () {
              Get.to(EnterApplicationDetails1());
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

      // },
      //),
    );
  }
}
