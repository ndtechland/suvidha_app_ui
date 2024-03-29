import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/buttons/horizontal_button.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/reusable_3Dtext/3d_textreusable.dart';
import 'package:suvidha_app_ui/constants/reusable_appbar/reusable_appbar.dart';
import 'package:suvidha_app_ui/constants/text_field_custon_weight/textfield_weight.dart';
import 'package:suvidha_app_ui/controllers/application_detail_controller.dart';

import 'enter_application_detail_2.dart';

//import '../../constants/reusable_appbar/reusable_appbar.dart';

class EnterApplicationDetails1 extends StatelessWidget {
  EnterApplicationDetails1({Key? key}) : super(key: key);
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
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: myAppBar(
        //backgroundColor: AppColors.white,
        title: 'Enter Application Details',

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
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.03,
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
            child: PhysicalModel(
              color: Colors.black,
              elevation: 5,
              child: Container(
                height: size.height * 0.27,
                width: size.width,
                decoration: BoxDecoration(
                  //color: AppColors.a20,
                  gradient: AppColors.sweepGradient1,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    height: size.height * 0.25,
                    width: size.width,
                    decoration: BoxDecoration(
                      gradient: AppColors.gradient11,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.03),
                            child: Text(
                              'Select Type of Ownership',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: size.width * 0.035,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            selectionController.toggleSelection(0);
                          },
                          child: Obx(
                            () => Container(
                              height: size.height * 0.05,
                              width: size.width * 0.8,
                              decoration: BoxDecoration(
                                // color: selectionController.selectedIndices
                                //         .contains(0)
                                //     ? Colors.blue
                                //     : Colors.red,
                                border: Border.all(
                                  color: selectionController.selectedIndices
                                          .contains(0)
                                      ? Colors.white
                                      : Colors.transparent,
                                  width: 3,
                                ),
                                gradient: selectionController.selectedIndices
                                        .contains(0)
                                    ? AppColors.gradient5
                                    : AppColors.gradient10,
                              ),
                              child: ThreeDtext(
                                text: "Proprietary",
                                fontColor: selectionController.selectedIndices
                                        .contains(0)
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: size.width * 0.035,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            selectionController.toggleSelection(1);
                          },
                          child: Obx(
                            () => Container(
                              height: size.height * 0.05,
                              width: size.width * 0.8,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: selectionController.selectedIndices
                                          .contains(1)
                                      ? Colors.white
                                      : Colors.transparent,
                                  width: 3,
                                ),
                                // color: selectionController.selectedIndices
                                //         .contains(1)
                                //     ? Colors.blue
                                //     : Colors.red,
                                gradient: selectionController.selectedIndices
                                        .contains(1)
                                    ? AppColors.gradient5
                                    : AppColors.gradient10,
                              ),
                              child: ThreeDtext(
                                text: "Partnership",
                                fontColor: selectionController.selectedIndices
                                        .contains(1)
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: size.width * 0.035,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            selectionController.toggleSelection(2);
                          },
                          child: Obx(
                            () => Container(
                              height: size.height * 0.05,
                              width: size.width * 0.8,
                              decoration: BoxDecoration(
                                // color: selectionController.selectedIndices
                                //         .contains(2)
                                //     ? Colors.blue
                                //     : Colors.red,
                                gradient: selectionController.selectedIndices
                                        .contains(2)
                                    ? AppColors.gradient5
                                    : AppColors.gradient10,
                                border: Border.all(
                                  color: selectionController.selectedIndices
                                          .contains(2)
                                      ? Colors.white
                                      : Colors.transparent,
                                  width: 3,
                                ),
                              ),
                              child: ThreeDtext(
                                text: "Company",
                                fontColor: selectionController.selectedIndices
                                        .contains(2)
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: size.width * 0.035,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.005,
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
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
              child: Text(
                'Name of Applicant',
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
              hintText: 'Enter name',
              keyboardType: TextInputType.text,
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
                ],
              ),
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
                'Name of Business Firm/Industry',
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
              hintText: 'Enter Business name',
              keyboardType: TextInputType.text,

              prefixIcon: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(
                      Icons.business,
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
                'Description of Business Firm/Industry',
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
              hintText: 'Enter Business description',
              keyboardType: TextInputType.text,
              prefixIcon: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(
                      Icons.description,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
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
                'Father\'s/Husband Name',
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
              hintText: 'Enter Father\'s/Husband name',
              keyboardType: TextInputType.text,
              prefixIcon: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(
                      Icons.people,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          HorizontalButton(
            text: 'NEXT',
            onClick: () {
              Get.to(EnterApplicationDetails2());
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
