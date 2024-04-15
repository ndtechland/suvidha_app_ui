import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/buttons/horizontal_button.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/handle_image_selection/handle_image_1.dart';
import 'package:suvidha_app_ui/constants/handle_image_selection/handle_image_controller1.dart';
import 'package:suvidha_app_ui/constants/reusable_appbar/reusable_appbar.dart';
import 'package:suvidha_app_ui/controllers/application_detail_controller.dart';
import 'package:suvidha_app_ui/screens/select_connection_dashbord/application_details_pages/upload_documents/document_successfull.dart';

//import '../../constants/reusable_appbar/reusable_appbar.dart';

class UploadReport1 extends StatelessWidget {
  UploadReport1({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formuploadKey = GlobalKey<FormState>();

  final SelectionController selectionController =
      Get.put(SelectionController());

  final OptionsController optionsController = Get.put(OptionsController());

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
      backgroundColor: AppColors.th1whtbackgrd,
      appBar: myAppBar(
        //backgroundColor: AppColors.white,
        title: """Upload Documents""",
        //'Enter New Connection Installation \nAddress',

        leadingIcon: Icons.arrow_back_ios_outlined,

        centerTitle: true,
        titleFontSize: size.width * 0.045, // Specify font size here

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
      body: Form(
        key: _formuploadKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.01,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    'Request No : 5234556654555',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w700,
                      fontSize: size.width * 0.036,
                      color: AppColors.a14,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    'Icons Descriptions',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w700,
                      fontSize: size.width * 0.034,
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
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: size.height * 0.022,
                      ),
                      Text(
                        ' Upload success',
                        style: GoogleFonts.roboto(
                          // fontWeight: FontWeight.w500,
                          fontSize: size.width * 0.033,
                          color: AppColors.black,
                        ),
                      ),
                    ],
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
                  child: Row(
                    children: [
                      Icon(
                        Icons.cancel,
                        color: Colors.red,
                        size: size.height * 0.022,
                      ),
                      Text(
                        ' Pending for upload, application incomplete.',
                        style: GoogleFonts.roboto(
                          //fontWeight: FontWeight.w500,
                          fontSize: size.width * 0.033,
                          color: AppColors.black,
                        ),
                      ),
                    ],
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
                  child: Row(
                    children: [
                      Icon(
                        Icons.camera_alt,
                        color: Colors.black,
                        size: size.height * 0.022,
                      ),
                      Text(
                        ' Ready for update.',
                        style: GoogleFonts.roboto(
                          //fontWeight: FontWeight.w500,
                          fontSize: size.width * 0.033,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: size.height * 0.002,
                  width: size.width,
                  color: AppColors.black,
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
                    'Applicant Photo',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w600,
                      fontSize: size.width * 0.036,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap: handleImageSelection1,
                        child: Obx(
                          () => selectionController.selectedPath.value != ''
                              ? PhysicalModel(
                                  color: AppColors.white,
                                  shadowColor: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                  elevation: 5,
                                  child: Container(
                                    height: size.height * 0.13,
                                    width: size.width * 0.45,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: AppColors.g3,
                                          //.withOpacity(1), // Shadow color
                                          spreadRadius: 1, // Spread radius
                                          blurRadius: 0, // Blur radius
                                          offset: Offset(
                                              0, 0), // Offset from the top-left
                                        ),
                                        BoxShadow(
                                          color: AppColors.containercolor8,
                                          spreadRadius:
                                              -0, // Negative spread radius for inner shadow
                                          blurRadius: 10, // Blur radius
                                          offset: Offset(-0,
                                              -0), // Offset from the bottom-right
                                        ),
                                      ],
                                      gradient: LinearGradient(
                                        // Gradient to give it a softer look
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.green.shade200,
                                          Colors.green.shade300,
                                        ],
                                      ),
                                      border: Border.all(
                                        width: size.width * 0.01,
                                        color: AppColors.g3,

                                        //.withOpacity(0.8), // Border color
                                      ),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.file(
                                        File(selectionController
                                            .selectedPath.value),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                )

                              ///

                              : PhysicalModel(
                                  color: AppColors.white,
                                  shadowColor: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                  elevation: 5,
                                  child: Container(
                                    height: size.height * 0.13,
                                    width: size.width * 0.45,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      border: Border.all(
                                        width: size.width * 0.01,
                                        color: AppColors.th1wht2,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: AppColors.th1wht3,
                                          //Colors.red.withOpacity(0.5),
                                          spreadRadius: 0,
                                          blurRadius: 2,
                                          offset: Offset(0, 0),
                                        ),
                                      ],
                                    ),
                                    child: Icon(
                                      Icons.camera_alt,
                                      color: AppColors.greyColor,
                                      size: size.width * 0.09,
                                    ),
                                  ),
                                ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Obx(() {
                          if (selectionController.selectedPath.value != '') {
                            return GestureDetector(
                              onTap: () {
                                handleImageSelection1();
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.02),
                                child: Container(
                                  height: size.height * 0.05,
                                  width: size.width * 0.07,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      FontAwesomeIcons.edit,
                                      size: size.height * 0.02,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          } else {
                            return Icon(
                              Icons.add,
                              color: Colors.transparent,
                            );
                            //   IconButton(
                            //   icon: Icon(
                            //     Icons.add,
                            //     color: Colors.transparent,
                            //   ),
                            //   onPressed: () {
                            //     // Handle add action
                            //   },
                            // );
                          }
                        }),
                      ),
                      Obx(() {
                        if (selectionController.selectedPath.value != '') {
                          return Positioned.fill(
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.02),
                                  child: Container(
                                    height: size.height * 0.05,
                                    width: size.width * 0.072,
                                    decoration: BoxDecoration(
                                      color: Colors.white70,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.check_circle,
                                        size: size.height * 0.033,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        } else {
                          return Positioned.fill(
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.02),
                                  child: Container(
                                    height: size.height * 0.05,
                                    width: size.width * 0.072,
                                    decoration: BoxDecoration(
                                      color: Colors.white70,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.cancel,
                                        size: size.height * 0.033,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }
                      }),
                    ],
                  ),
                ),
              ),

              ///

              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: size.height * 0.002,
                  width: size.width,
                  color: AppColors.black,
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
                    'Select Id Proof Documents',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w600,
                      fontSize: size.width * 0.036,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.007,
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
                        value: selectionController.selectedValue.value,
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            selectionController.updateSelectedValue(newValue);
                          }
                        },
                        items: [
                          'Select Id Proof',
                          'Passport',
                          'Pan Card',
                          'Aadhaar Card',
                          'Voter Card',
                          'Driving License',
                          'Other Photo Id issues by any Government',
                          'Ration Card',
                          'BPL Card'
                        ].map((item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: GoogleFonts.roboto(
                                fontSize: size.height * 0.017,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    )),
              ),
              SizedBox(
                height: size.height * 0.009,
              ),

              ///todo: Id proof,,,,
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.04),
                      child: Text(
                        'Id Proof Front',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: size.width * 0.035,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.15,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.06),
                      child: Text(
                        'Id Proof Back',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: size.width * 0.035,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.02),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: handleImageSelection1,
                            child: Obx(
                              () => selectionController.selectedPath.value != ''
                                  ? Container(
                                      height: size.height * 0.13,
                                      width: size.width * 0.46,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            //.withOpacity(1), // Shadow color
                                            spreadRadius: 2, // Spread radius
                                            blurRadius: 0, // Blur radius
                                            offset: Offset(1,
                                                1), // Offset from the top-left
                                          ),
                                          BoxShadow(
                                            color:
                                                Colors.white, // Highlight color
                                            spreadRadius:
                                                -2, // Negative spread radius for inner shadow
                                            blurRadius: 10, // Blur radius
                                            offset: Offset(-2,
                                                -2), // Offset from the bottom-right
                                          ),
                                        ],
                                        gradient: LinearGradient(
                                          // Gradient to give it a softer look
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Colors.green.shade200,
                                            Colors.green.shade300,
                                          ],
                                        ),
                                        border: Border.all(
                                          width: size.width * 0.01,
                                          color: Colors.green
                                              .withOpacity(0.8), // Border color
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.file(
                                          File(selectionController
                                              .selectedPath.value),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    )

                                  ///todo: id proof 1

                                  : PhysicalModel(
                                      color: AppColors.white,
                                      shadowColor: Colors.black,
                                      borderRadius: BorderRadius.circular(10),
                                      elevation: 5,
                                      child: Container(
                                        height: size.height * 0.13,
                                        width: size.width * 0.45,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          border: Border.all(
                                            width: size.width * 0.01,
                                            color: AppColors.th1wht2,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: AppColors.th1wht3,
                                              //Colors.red.withOpacity(0.5),
                                              spreadRadius: 0,
                                              blurRadius: 2,
                                              offset: Offset(0, 0),
                                            ),
                                          ],
                                        ),
                                        child: Icon(
                                          Icons.camera_alt,
                                          color: AppColors.greyColor,
                                          size: size.width * 0.09,
                                        ),
                                      ),
                                    ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Obx(() {
                              if (selectionController.selectedPath.value !=
                                  '') {
                                return GestureDetector(
                                  onTap: () {
                                    handleImageSelection1();
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.02),
                                    child: Container(
                                      height: size.height * 0.05,
                                      width: size.width * 0.07,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          FontAwesomeIcons.edit,
                                          size: size.height * 0.02,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              } else {
                                return Icon(
                                  Icons.add,
                                  color: Colors.transparent,
                                );
                                //   IconButton(
                                //   icon: Icon(
                                //     Icons.add,
                                //     color: Colors.transparent,
                                //   ),
                                //   // onPressed: () {
                                //   //   // Handle add action
                                //   // },
                                // );
                              }
                            }),
                          ),
                          Obx(() {
                            if (selectionController.selectedPath.value != '') {
                              return Positioned.fill(
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.02),
                                      child: Container(
                                        height: size.height * 0.05,
                                        width: size.width * 0.072,
                                        decoration: BoxDecoration(
                                          color: Colors.white70,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.check_circle,
                                            size: size.height * 0.033,
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            } else {
                              return Positioned.fill(
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.02),
                                      child: Container(
                                        height: size.height * 0.05,
                                        width: size.width * 0.072,
                                        decoration: BoxDecoration(
                                          color: Colors.white70,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.cancel,
                                            size: size.height * 0.033,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }
                          }),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.02),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: handleImageSelection1,
                            child: Obx(
                              () => selectionController.selectedPath.value != ''
                                  ? Container(
                                      height: size.height * 0.13,
                                      width: size.width * 0.43,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            //.withOpacity(1), // Shadow color
                                            spreadRadius: 2, // Spread radius
                                            blurRadius: 0, // Blur radius
                                            offset: Offset(1,
                                                1), // Offset from the top-left
                                          ),
                                          BoxShadow(
                                            color:
                                                Colors.white, // Highlight color
                                            spreadRadius:
                                                -2, // Negative spread radius for inner shadow
                                            blurRadius: 10, // Blur radius
                                            offset: Offset(-2,
                                                -2), // Offset from the bottom-right
                                          ),
                                        ],
                                        gradient: LinearGradient(
                                          // Gradient to give it a softer look
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Colors.green.shade200,
                                            Colors.green.shade300,
                                          ],
                                        ),
                                        border: Border.all(
                                          width: size.width * 0.01,
                                          color: Colors.green
                                              .withOpacity(0.8), // Border color
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.file(
                                          File(selectionController
                                              .selectedPath.value),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    )

                                  ///todo: id proof 2

                                  : PhysicalModel(
                                      color: AppColors.white,
                                      shadowColor: Colors.black,
                                      borderRadius: BorderRadius.circular(10),
                                      elevation: 5,
                                      child: Container(
                                        height: size.height * 0.13,
                                        width: size.width * 0.45,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          border: Border.all(
                                            width: size.width * 0.01,
                                            color: AppColors.th1wht2,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: AppColors.th1wht3,
                                              //Colors.red.withOpacity(0.5),
                                              spreadRadius: 0,
                                              blurRadius: 2,
                                              offset: Offset(0, 0),
                                            ),
                                          ],
                                        ),
                                        child: Icon(
                                          Icons.camera_alt,
                                          color: AppColors.greyColor,
                                          size: size.width * 0.09,
                                        ),
                                      ),
                                    ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Obx(() {
                              if (selectionController.selectedPath.value !=
                                  '') {
                                return GestureDetector(
                                  onTap: () {
                                    handleImageSelection1();
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.02),
                                    child: Container(
                                      height: size.height * 0.05,
                                      width: size.width * 0.07,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          FontAwesomeIcons.edit,
                                          size: size.height * 0.02,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              } else {
                                return IconButton(
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.transparent,
                                  ),
                                  onPressed: () {
                                    // Handle add action
                                  },
                                );
                              }
                            }),
                          ),
                          Obx(() {
                            if (selectionController.selectedPath.value != '') {
                              return Positioned.fill(
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.02),
                                      child: Container(
                                        height: size.height * 0.05,
                                        width: size.width * 0.072,
                                        decoration: BoxDecoration(
                                          color: Colors.white70,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.check_circle,
                                            size: size.height * 0.033,
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            } else {
                              return Positioned.fill(
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.02),
                                      child: Container(
                                        height: size.height * 0.05,
                                        width: size.width * 0.072,
                                        decoration: BoxDecoration(
                                          color: Colors.white70,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.cancel,
                                            size: size.height * 0.033,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }
                          }),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              ///todo: end Id prooof...

              SizedBox(
                height: 20,
              ),

              ///todo: divider...
              SizedBox(
                height: size.height * 0.00,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: size.height * 0.002,
                  width: size.width,
                  color: AppColors.black,
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
                    'Ownership Documents',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w600,
                      fontSize: size.width * 0.036,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.007,
              ),
              SizedBox(
                height: 5,
              ),

              ///todo: upload documents 1...
              GetBuilder<SelectionController>(
                builder: (_) => Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.02),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Stack(
                          children: [
                            GestureDetector(
                              onTap: () async {
                                //await selectionController.pickPDF();
                              },
                              child: Obx(
                                () => selectionController
                                            .selectedPDFPath.value !=
                                        ''
                                    ? Container(
                                        height: size.height * 0.13,
                                        width: size.width * 0.65,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              //.withOpacity(1), // Shadow color
                                              spreadRadius: 2, // Spread radius
                                              blurRadius: 0, // Blur radius
                                              offset: Offset(1,
                                                  1), // Offset from the top-left
                                            ),
                                            BoxShadow(
                                              color: Colors
                                                  .white, // Highlight color
                                              spreadRadius:
                                                  -2, // Negative spread radius for inner shadow
                                              blurRadius: 10, // Blur radius
                                              offset: Offset(-2,
                                                  -2), // Offset from the bottom-right
                                            ),
                                          ],
                                          gradient: LinearGradient(
                                            // Gradient to give it a softer look
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Colors.green.shade200,
                                              Colors.green.shade300,
                                            ],
                                          ),
                                          border: Border.all(
                                            width: size.width * 0.01,
                                            color: Colors.green.withOpacity(
                                                0.8), // Border color
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Center(
                                            child: Obx(() => Text(
                                                  'PDF Name: \n${selectionController.selectedPDFName.value}',
                                                  style: GoogleFonts.roboto(
                                                    //fontWeight: FontWeight.w600,
                                                    fontSize:
                                                        size.width * 0.034,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,

                                                    shadows: [
                                                      Shadow(
                                                        color: Colors.black45,
                                                        blurRadius: 1,
                                                        offset:
                                                            Offset(0.5, 0.5),
                                                      ),
                                                    ],
                                                    // color: Colors.white,
                                                  ),
                                                )),
                                          ),
                                          // Image.file(
                                          //   File(selectionController
                                          //       .selectedPath.value),
                                          //   fit: BoxFit.fill,
                                          // ),
                                        ),
                                      )

                                    ///

                                    : InkWell(
                                        onTap: () async {
                                          //await selectionController.pickPDF();
                                        },
                                        child: PhysicalModel(
                                          color: AppColors.white,
                                          shadowColor: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          elevation: 5,
                                          child: Container(
                                            height: size.height * 0.13,
                                            width: size.width * 0.65,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              border: Border.all(
                                                width: size.width * 0.01,
                                                color: AppColors.th1wht2,
                                              ),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: AppColors.th1wht3,
                                                  spreadRadius: 1,
                                                  blurRadius: 1,
                                                  offset: Offset(0, 1),
                                                ),
                                              ],
                                            ),
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text(
                                                    '',
                                                    style: GoogleFonts.roboto(
                                                      //fontWeight: FontWeight.w600,
                                                      fontSize:
                                                          size.width * 0.032,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,

                                                      shadows: [
                                                        Shadow(
                                                          color: Colors.black45,
                                                          blurRadius: 0,
                                                          offset: Offset(0, 0),
                                                        ),
                                                      ],
                                                      // color: Colors.white,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.picture_as_pdf,
                                                    color: AppColors.greyColor,
                                                    size: size.width * 0.09,
                                                  ),
                                                  Text(
                                                    'Document Pending',
                                                    style: GoogleFonts.roboto(
                                                      //fontWeight: FontWeight.w600,
                                                      fontSize:
                                                          size.width * 0.032,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,

                                                      shadows: [
                                                        Shadow(
                                                          color: Colors.black45,
                                                          blurRadius: 0,
                                                          offset: Offset(0, 0),
                                                        ),
                                                      ],
                                                      // color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            // Icon(
                                            //   Icons.add_box,
                                            //   color: Colors.black,
                                            // ),
                                          ),
                                        ),
                                      ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Obx(() {
                                if (selectionController.selectedPDFPath.value !=
                                    '') {
                                  return GestureDetector(
                                    onTap: () async {
                                      await selectionController.pickPDF();
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.02),
                                      child: Container(
                                        height: size.height * 0.05,
                                        width: size.width * 0.07,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            FontAwesomeIcons.edit,
                                            size: size.height * 0.02,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                } else {
                                  return Icon(
                                    Icons.add,
                                    color: Colors.transparent,
                                  );
                                  //   IconButton(
                                  //   icon: Icon(
                                  //     Icons.add,
                                  //     color: Colors.transparent,
                                  //   ),
                                  //   onPressed: () {
                                  //     //await selectionController.pickPDF();
                                  //
                                  //     // Handle add action
                                  //   },
                                  // );
                                }
                              }),
                            ),
                            Obx(() {
                              if (selectionController.selectedPDFPath.value !=
                                  '') {
                                return Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: size.width * 0.02),
                                        child: Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.072,
                                          decoration: BoxDecoration(
                                            color: Colors.white70,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.check_circle,
                                              size: size.height * 0.033,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              } else {
                                return Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: size.width * 0.02),
                                        child: Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.072,
                                          decoration: BoxDecoration(
                                            color: Colors.white70,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.cancel,
                                              size: size.height * 0.033,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }
                            }),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.02),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Stack(
                          children: [
                            Obx(
                              () => selectionController.selectedPDFPath.value !=
                                      ''
                                  ? Container(
                                      height: size.height * 0.07,
                                      width: size.width * 0.23,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            //.withOpacity(1), // Shadow color
                                            spreadRadius: 2, // Spread radius
                                            blurRadius: 0, // Blur radius
                                            offset: Offset(1,
                                                1), // Offset from the top-left
                                          ),
                                          BoxShadow(
                                            color:
                                                Colors.white, // Highlight color
                                            spreadRadius:
                                                -2, // Negative spread radius for inner shadow
                                            blurRadius: 10, // Blur radius
                                            offset: Offset(-2,
                                                -2), // Offset from the bottom-right
                                          ),
                                        ],
                                        gradient: LinearGradient(
                                          // Gradient to give it a softer look
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Colors.green.shade200,
                                            Colors.green.shade300,
                                          ],
                                        ),
                                        border: Border.all(
                                          width: size.width * 0.01,
                                          color: Colors.green
                                              .withOpacity(0.8), // Border color
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    )

                                  ///todo: add documents........

                                  : InkWell(
                                      onTap: () async {
                                        await selectionController.pickPDF();
                                      },
                                      child: PhysicalModel(
                                        color: AppColors.white,
                                        shadowColor: Colors.black,
                                        borderRadius: BorderRadius.circular(20),
                                        elevation: 5,
                                        child: Container(
                                          height: size.height * 0.07,
                                          width: size.width * 0.25,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                            border: Border.all(
                                              width: size.width * 0.01,
                                              color: AppColors.th1wht2,
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: AppColors.th1wht3,
                                                //Colors.red.withOpacity(0.5),
                                                spreadRadius: 0,
                                                blurRadius: 2,
                                                offset: Offset(0, 0),
                                              ),
                                            ],
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Add+',
                                              style: GoogleFonts.poppins(
                                                //fontWeight: FontWeight.w600,
                                                fontSize: size.width * 0.033,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,

                                                shadows: [
                                                  Shadow(
                                                    color: Colors.black45,
                                                    blurRadius: 0,
                                                    offset: Offset(0, 0),
                                                  ),
                                                ],
                                                // color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                            ),
                            // Positioned(
                            //   top: 0,
                            //   right: 0,
                            //   child: Obx(() {
                            //     if (selectionController.selectedPDFPath.value !=
                            //         '') {
                            //       return InkWell(
                            //         onTap: () {
                            //           selectionController.pickPDF();
                            //           //handleImageSelection1();
                            //         },
                            //         child: Padding(
                            //           padding: EdgeInsets.symmetric(
                            //               horizontal: size.width * 0.02),
                            //           child: Container(
                            //             height: size.height * 0.04,
                            //             width: size.width * 0.06,
                            //             decoration: BoxDecoration(
                            //               color: Colors.white,
                            //               shape: BoxShape.circle,
                            //             ),
                            //             child: Center(
                            //               child: Icon(
                            //                 FontAwesomeIcons.edit,
                            //                 size: size.height * 0.017,
                            //               ),
                            //             ),
                            //           ),
                            //         ),
                            //       );
                            //     } else {
                            //       return SizedBox();
                            //       //   IconButton(
                            //       //   icon: Icon(
                            //       //     Icons.add,
                            //       //     color: Colors.transparent,
                            //       //   ),
                            //       //   onPressed: () {
                            //       //     // Handle add action
                            //       //   },
                            //       // );
                            //     }
                            //   }),
                            // ),
                            Obx(() {
                              if (selectionController.selectedPDFPath.value !=
                                  '') {
                                return SizedBox();
                                //Positioned.fill(
                                //   child: Align(
                                //     alignment: Alignment.bottomRight,
                                //     child: GestureDetector(
                                //       onTap: () {},
                                //       child: Padding(
                                //         padding: EdgeInsets.symmetric(
                                //             horizontal: size.width * 0.02),
                                //         child: Container(
                                //           height: size.height * 0.04,
                                //           width: size.width * 0.065,
                                //           decoration: BoxDecoration(
                                //             color: Colors.white,
                                //             shape: BoxShape.circle,
                                //           ),
                                //           child: Center(
                                //             child: Icon(
                                //               Icons.check_circle,
                                //               size: size.height * 0.02,
                                //               color: Colors.green,
                                //             ),
                                //           ),
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // );
                              } else {
                                return SizedBox(
                                  height: size.height * 0.0,
                                  width: size.width * 0.0,
                                );
                                //   Positioned.fill(
                                //   child: Align(
                                //     alignment: Alignment.bottomRight,
                                //     child: GestureDetector(
                                //       onTap: () {},
                                //       child: Padding(
                                //         padding: EdgeInsets.symmetric(
                                //             horizontal: size.width * 0.02),
                                //         child: Container(
                                //           height: size.height * 0.04,
                                //           width: size.width * 0.065,
                                //           decoration: BoxDecoration(
                                //             color: Colors.white70,
                                //             shape: BoxShape.circle,
                                //           ),
                                //           child: Center(
                                //             child: Icon(
                                //               Icons.cancel,
                                //               size: size.height * 0.02,
                                //               color: Colors.red,
                                //             ),
                                //           ),
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // );
                              }
                            }),
                            Obx(() {
                              if (selectionController.selectedPDFPath.value !=
                                  '') {
                                return Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: size.width * 0.02),
                                        child: Center(
                                          child: Text(
                                            'Upload Success!',
                                            style: GoogleFonts.poppins(
                                              //fontWeight: FontWeight.w600,
                                              fontSize: size.width * 0.035,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              shadows: [
                                                Shadow(
                                                  color: Colors.black45,
                                                  blurRadius: 0,
                                                  offset: Offset(1, 1),
                                                ),
                                              ],
                                              // color: Colors.white,
                                            ),
                                          ),
                                          // Icon(
                                          //   Icons.check_circle,
                                          //   size: size.height * 0.033,
                                          //   color: Colors.green,
                                          // ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              } else {
                                return SizedBox();
                                //   Positioned.fill(
                                //   child: Align(
                                //     alignment: Alignment.bottomRight,
                                //     child: GestureDetector(
                                //       onTap: () {},
                                //       child: Padding(
                                //         padding: EdgeInsets.symmetric(
                                //             horizontal: size.width * 0.02),
                                //         child: Container(
                                //           height: size.height * 0.05,
                                //           width: size.width * 0.072,
                                //           decoration: BoxDecoration(
                                //             color: Colors.white70,
                                //             shape: BoxShape.circle,
                                //           ),
                                //           child: Center(
                                //             child: Icon(
                                //               Icons.cancel,
                                //               size: size.height * 0.033,
                                //               color: Colors.red,
                                //             ),
                                //           ),
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // );
                              }
                            }),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              ///todo: upload documents...button.

              ///
              //
              // SizedBox(
              //   height: 20,
              // ),
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: Padding(
              //     padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
              //     child: Text(
              //       'Selected Documents: No Documents selected',
              //       style: GoogleFonts.roboto(
              //         fontWeight: FontWeight.w600,
              //         fontSize: size.width * 0.035,
              //       ),
              //     ),
              //   ),
              // ),
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
                  child: Row(
                    children: [
                      Icon(
                        Icons.picture_as_pdf,
                        color: Colors.black,
                        size: size.height * 0.015,
                      ),
                      Text(
                        ' Documents must be in .pdf format only, max size 10 MB.',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: size.width * 0.03,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // SizedBox(
              //   height: size.height * 0.005,
              // ),
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: Padding(
              //     padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
              //     child: Row(
              //       children: [
              //         Icon(
              //           Icons.folder_copy,
              //           color: Colors.black,
              //           size: size.height * 0.025,
              //         ),
              //         Text(
              //           ' Documents must be in this device to select. If not copy\n the documents to this device and proceed.',
              //           style: GoogleFonts.poppins(
              //             fontWeight: FontWeight.w500,
              //             fontSize: size.width * 0.03,
              //             color: AppColors.black,
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              SizedBox(
                height: size.height * 0.0,
              ),

              ///todo: divider...
              SizedBox(
                height: size.height * 0.00,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: size.height * 0.002,
                  width: size.width,
                  color: AppColors.black,
                ),
              ),

              ///todo: address proof....
              SizedBox(
                height: size.height * 0.007,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    'Select Address Proof',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w600,
                      fontSize: size.width * 0.036,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.007,
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
                        value: selectionController.selectedValue.value,
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            selectionController.updateSelectedValue(newValue);
                          }
                        },
                        items: [
                          'Select Id Proof',
                          'Passport',
                          'Pan Card',
                          'Aadhar Card',
                          'Voter Card',
                          'Driving License',
                          'Other Photo Id issues by any Government',
                          'Ration Card',
                          'BPL Card'
                        ].map((item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: GoogleFonts.roboto(
                                fontSize: size.height * 0.017,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    )),
              ),
              SizedBox(
                height: size.height * 0.007,
              ),

              ///todo: Id proof,,,,
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.03),
                      child: Text(
                        'Address proof Front',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: size.width * 0.035,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.07,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.06),
                      child: Text(
                        'Address proof back',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: size.width * 0.036,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.02),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: handleImageSelection1,
                            child: Obx(
                              () => selectionController.selectedPath.value != ''
                                  ? Container(
                                      height: size.height * 0.13,
                                      width: size.width * 0.46,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            //.withOpacity(1), // Shadow color
                                            spreadRadius: 2, // Spread radius
                                            blurRadius: 0, // Blur radius
                                            offset: Offset(1,
                                                1), // Offset from the top-left
                                          ),
                                          BoxShadow(
                                            color:
                                                Colors.white, // Highlight color
                                            spreadRadius:
                                                -2, // Negative spread radius for inner shadow
                                            blurRadius: 10, // Blur radius
                                            offset: Offset(-2,
                                                -2), // Offset from the bottom-right
                                          ),
                                        ],
                                        gradient: LinearGradient(
                                          // Gradient to give it a softer look
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Colors.green.shade200,
                                            Colors.green.shade300,
                                          ],
                                        ),
                                        border: Border.all(
                                          width: size.width * 0.01,
                                          color: Colors.green
                                              .withOpacity(0.8), // Border color
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.file(
                                          File(selectionController
                                              .selectedPath.value),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    )

                                  ///todo: address proof 1...

                                  : PhysicalModel(
                                      color: AppColors.white,
                                      shadowColor: Colors.black,
                                      borderRadius: BorderRadius.circular(10),
                                      elevation: 5,
                                      child: Container(
                                        height: size.height * 0.13,
                                        width: size.width * 0.45,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          border: Border.all(
                                            width: size.width * 0.01,
                                            color: AppColors.th1wht2,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: AppColors.th1wht3,
                                              //Colors.red.withOpacity(0.5),
                                              spreadRadius: 0,
                                              blurRadius: 2,
                                              offset: Offset(0, 0),
                                            ),
                                          ],
                                        ),
                                        child: Icon(
                                          Icons.camera_alt,
                                          color: AppColors.greyColor,
                                          size: size.width * 0.09,
                                        ),
                                      ),
                                    ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Obx(() {
                              if (selectionController.selectedPath.value !=
                                  '') {
                                return GestureDetector(
                                  onTap: () {
                                    handleImageSelection1();
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.02),
                                    child: Container(
                                      height: size.height * 0.05,
                                      width: size.width * 0.07,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          FontAwesomeIcons.edit,
                                          size: size.height * 0.02,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              } else {
                                return Icon(
                                  Icons.add,
                                  color: Colors.transparent,
                                );
                                //   IconButton(
                                //   icon: Icon(
                                //     Icons.add,
                                //     color: Colors.transparent,
                                //   ),
                                //   onPressed: () {
                                //     // Handle add action
                                //   },
                                // );
                              }
                            }),
                          ),
                          Obx(() {
                            if (selectionController.selectedPath.value != '') {
                              return Positioned.fill(
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.02),
                                      child: Container(
                                        height: size.height * 0.05,
                                        width: size.width * 0.072,
                                        decoration: BoxDecoration(
                                          color: Colors.white70,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.check_circle,
                                            size: size.height * 0.033,
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            } else {
                              return Positioned.fill(
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.02),
                                      child: Container(
                                        height: size.height * 0.05,
                                        width: size.width * 0.072,
                                        decoration: BoxDecoration(
                                          color: Colors.white70,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.cancel,
                                            size: size.height * 0.033,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }
                          }),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.02),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: handleImageSelection1,
                            child: Obx(
                              () => selectionController.selectedPath.value != ''
                                  ? Container(
                                      height: size.height * 0.13,
                                      width: size.width * 0.43,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            //.withOpacity(1), // Shadow color
                                            spreadRadius: 2, // Spread radius
                                            blurRadius: 0, // Blur radius
                                            offset: Offset(1,
                                                1), // Offset from the top-left
                                          ),
                                          BoxShadow(
                                            color:
                                                Colors.white, // Highlight color
                                            spreadRadius:
                                                -2, // Negative spread radius for inner shadow
                                            blurRadius: 10, // Blur radius
                                            offset: Offset(-2,
                                                -2), // Offset from the bottom-right
                                          ),
                                        ],
                                        gradient: LinearGradient(
                                          // Gradient to give it a softer look
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Colors.green.shade200,
                                            Colors.green.shade300,
                                          ],
                                        ),
                                        border: Border.all(
                                          width: size.width * 0.01,
                                          color: Colors.green
                                              .withOpacity(0.8), // Border color
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.file(
                                          File(selectionController
                                              .selectedPath.value),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    )

                                  ///todo: address proof back 2..

                                  : PhysicalModel(
                                      color: AppColors.white,
                                      shadowColor: Colors.black,
                                      borderRadius: BorderRadius.circular(10),
                                      elevation: 5,
                                      child: Container(
                                        height: size.height * 0.13,
                                        width: size.width * 0.45,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          border: Border.all(
                                            width: size.width * 0.01,
                                            color: AppColors.th1wht2,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: AppColors.th1wht3,
                                              //Colors.red.withOpacity(0.5),
                                              spreadRadius: 0,
                                              blurRadius: 2,
                                              offset: Offset(0, 0),
                                            ),
                                          ],
                                        ),
                                        child: Icon(
                                          Icons.camera_alt,
                                          color: AppColors.greyColor,
                                          size: size.width * 0.09,
                                        ),
                                      ),
                                    ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Obx(() {
                              if (selectionController.selectedPath.value !=
                                  '') {
                                return GestureDetector(
                                  onTap: () {
                                    handleImageSelection1();
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.02),
                                    child: Container(
                                      height: size.height * 0.05,
                                      width: size.width * 0.07,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          FontAwesomeIcons.edit,
                                          size: size.height * 0.02,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              } else {
                                return Icon(
                                  Icons.add,
                                  color: Colors.transparent,
                                );
                                //   IconButton(
                                //   icon: Icon(
                                //     Icons.add,
                                //     color: Colors.transparent,
                                //   ),
                                //   onPressed: () {
                                //     // Handle add action
                                //   },
                                // );
                              }
                            }),
                          ),
                          Obx(() {
                            if (selectionController.selectedPath.value != '') {
                              return Positioned.fill(
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.02),
                                      child: Container(
                                        height: size.height * 0.05,
                                        width: size.width * 0.072,
                                        decoration: BoxDecoration(
                                          color: Colors.white70,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.check_circle,
                                            size: size.height * 0.033,
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            } else {
                              return Positioned.fill(
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.02),
                                      child: Container(
                                        height: size.height * 0.05,
                                        width: size.width * 0.072,
                                        decoration: BoxDecoration(
                                          color: Colors.white70,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.cancel,
                                            size: size.height * 0.033,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }
                          }),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              ///

              SizedBox(
                height: 20,
              ),

              ///todo: divider...
              SizedBox(
                height: size.height * 0.00,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: size.height * 0.002,
                  width: size.width,
                  color: AppColors.black,
                ),
              ),
              SizedBox(
                height: size.height * 0.007,
              ),

              ///todo:power of Attorney Documents
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    'Power of Attorney Document',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w600,
                      fontSize: size.width * 0.036,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.007,
              ),
              SizedBox(
                height: 5,
              ),

              ///todo: upload documents 2 attorny...
              GetBuilder<SelectionController>(
                builder: (_) => Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.02),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Stack(
                          children: [
                            GestureDetector(
                              onTap: () async {
                                //await selectionController.pickPDF();
                              },
                              child: Obx(
                                () => selectionController
                                            .selectedPDFPath.value !=
                                        ''
                                    ? Container(
                                        height: size.height * 0.13,
                                        width: size.width * 0.65,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              //.withOpacity(1), // Shadow color
                                              spreadRadius: 2, // Spread radius
                                              blurRadius: 0, // Blur radius
                                              offset: Offset(1,
                                                  1), // Offset from the top-left
                                            ),
                                            BoxShadow(
                                              color: Colors
                                                  .white, // Highlight color
                                              spreadRadius:
                                                  -2, // Negative spread radius for inner shadow
                                              blurRadius: 10, // Blur radius
                                              offset: Offset(-2,
                                                  -2), // Offset from the bottom-right
                                            ),
                                          ],
                                          gradient: LinearGradient(
                                            // Gradient to give it a softer look
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Colors.green.shade200,
                                              Colors.green.shade300,
                                            ],
                                          ),
                                          border: Border.all(
                                            width: size.width * 0.01,
                                            color: Colors.green.withOpacity(
                                                0.8), // Border color
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Center(
                                            child: Obx(() => Text(
                                                  'PDF Name: \n${selectionController.selectedPDFName.value}',
                                                  style: GoogleFonts.roboto(
                                                    //fontWeight: FontWeight.w600,
                                                    fontSize:
                                                        size.width * 0.035,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,

                                                    shadows: [
                                                      Shadow(
                                                        color: Colors.black45,
                                                        blurRadius: 1,
                                                        offset:
                                                            Offset(0.1, 0.1),
                                                      ),
                                                    ],
                                                    // color: Colors.white,
                                                  ),
                                                )),
                                          ),
                                          // Image.file(
                                          //   File(selectionController
                                          //       .selectedPath.value),
                                          //   fit: BoxFit.fill,
                                          // ),
                                        ),
                                      )

                                    ///

                                    : InkWell(
                                        onTap: () async {
                                          //await selectionController.pickPDF();
                                        },
                                        child: PhysicalModel(
                                          color: AppColors.white,
                                          shadowColor: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          elevation: 5,
                                          child: Container(
                                            height: size.height * 0.13,
                                            width: size.width * 0.65,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              border: Border.all(
                                                width: size.width * 0.01,
                                                color: AppColors.th1wht2,
                                              ),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: AppColors.th1wht3,
                                                  spreadRadius: 1,
                                                  blurRadius: 1,
                                                  offset: Offset(0, 1),
                                                ),
                                              ],
                                            ),
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text(
                                                    '',
                                                    style: GoogleFonts.roboto(
                                                      //fontWeight: FontWeight.w600,
                                                      fontSize:
                                                          size.width * 0.032,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,

                                                      shadows: [
                                                        Shadow(
                                                          color: Colors.black45,
                                                          blurRadius: 0,
                                                          offset: Offset(0, 0),
                                                        ),
                                                      ],
                                                      // color: Colors.white,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.picture_as_pdf,
                                                    color: AppColors.greyColor,
                                                    size: size.width * 0.09,
                                                  ),
                                                  Text(
                                                    'Document Pending',
                                                    style: GoogleFonts.roboto(
                                                      //fontWeight: FontWeight.w600,
                                                      fontSize:
                                                          size.width * 0.032,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,

                                                      shadows: [
                                                        Shadow(
                                                          color: Colors.black45,
                                                          blurRadius: 0,
                                                          offset: Offset(0, 0),
                                                        ),
                                                      ],
                                                      // color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            // Icon(
                                            //   Icons.add_box,
                                            //   color: Colors.black,
                                            // ),
                                          ),
                                        ),
                                      ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Obx(() {
                                if (selectionController.selectedPDFPath.value !=
                                    '') {
                                  return GestureDetector(
                                    onTap: () async {
                                      await selectionController.pickPDF();
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.02),
                                      child: Container(
                                        height: size.height * 0.05,
                                        width: size.width * 0.07,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            FontAwesomeIcons.edit,
                                            size: size.height * 0.02,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                } else {
                                  return IconButton(
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.transparent,
                                    ),
                                    onPressed: () {
                                      //await selectionController.pickPDF();

                                      // Handle add action
                                    },
                                  );
                                }
                              }),
                            ),
                            Obx(() {
                              if (selectionController.selectedPDFPath.value !=
                                  '') {
                                return Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: size.width * 0.02),
                                        child: Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.072,
                                          decoration: BoxDecoration(
                                            color: Colors.white70,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.check_circle,
                                              size: size.height * 0.033,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              } else {
                                return Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: size.width * 0.02),
                                        child: Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.072,
                                          decoration: BoxDecoration(
                                            color: Colors.white70,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.cancel,
                                              size: size.height * 0.033,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }
                            }),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.02),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Stack(
                          children: [
                            Obx(
                              () => selectionController.selectedPDFPath.value !=
                                      ''
                                  ? Container(
                                      height: size.height * 0.07,
                                      width: size.width * 0.23,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            //.withOpacity(1), // Shadow color
                                            spreadRadius: 2, // Spread radius
                                            blurRadius: 0, // Blur radius
                                            offset: Offset(1,
                                                1), // Offset from the top-left
                                          ),
                                          BoxShadow(
                                            color:
                                                Colors.white, // Highlight color
                                            spreadRadius:
                                                -2, // Negative spread radius for inner shadow
                                            blurRadius: 10, // Blur radius
                                            offset: Offset(-2,
                                                -2), // Offset from the bottom-right
                                          ),
                                        ],
                                        gradient: LinearGradient(
                                          // Gradient to give it a softer look
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Colors.green.shade200,
                                            Colors.green.shade300,
                                          ],
                                        ),
                                        border: Border.all(
                                          width: size.width * 0.01,
                                          color: Colors.green
                                              .withOpacity(0.8), // Border color
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    )

                                  ///add button power attorney...

                                  : InkWell(
                                      onTap: () async {
                                        await selectionController.pickPDF();
                                      },
                                      child: PhysicalModel(
                                        color: AppColors.white,
                                        shadowColor: Colors.black,
                                        borderRadius: BorderRadius.circular(20),
                                        elevation: 5,
                                        child: Container(
                                          height: size.height * 0.07,
                                          width: size.width * 0.25,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                            border: Border.all(
                                              width: size.width * 0.01,
                                              color: AppColors.th1wht2,
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: AppColors.th1wht3,
                                                //Colors.red.withOpacity(0.5),
                                                spreadRadius: 0,
                                                blurRadius: 2,
                                                offset: Offset(0, 0),
                                              ),
                                            ],
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Add+',
                                              style: GoogleFonts.poppins(
                                                //fontWeight: FontWeight.w600,
                                                fontSize: size.width * 0.033,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,

                                                shadows: [
                                                  Shadow(
                                                    color: Colors.black45,
                                                    blurRadius: 0,
                                                    offset: Offset(0, 0),
                                                  ),
                                                ],
                                                // color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                            ),
                            // Positioned(
                            //   top: 0,
                            //   right: 0,
                            //   child: Obx(() {
                            //     if (selectionController.selectedPDFPath.value !=
                            //         '') {
                            //       return InkWell(
                            //         onTap: () {
                            //           selectionController.pickPDF();
                            //           //handleImageSelection1();
                            //         },
                            //         child: Padding(
                            //           padding: EdgeInsets.symmetric(
                            //               horizontal: size.width * 0.02),
                            //           child: Container(
                            //             height: size.height * 0.04,
                            //             width: size.width * 0.06,
                            //             decoration: BoxDecoration(
                            //               color: Colors.white,
                            //               shape: BoxShape.circle,
                            //             ),
                            //             child: Center(
                            //               child: Icon(
                            //                 FontAwesomeIcons.edit,
                            //                 size: size.height * 0.017,
                            //               ),
                            //             ),
                            //           ),
                            //         ),
                            //       );
                            //     } else {
                            //       return SizedBox();
                            //       //   IconButton(
                            //       //   icon: Icon(
                            //       //     Icons.add,
                            //       //     color: Colors.transparent,
                            //       //   ),
                            //       //   onPressed: () {
                            //       //     // Handle add action
                            //       //   },
                            //       // );
                            //     }
                            //   }),
                            // ),
                            Obx(() {
                              if (selectionController.selectedPDFPath.value !=
                                  '') {
                                return SizedBox();
                                //Positioned.fill(
                                //   child: Align(
                                //     alignment: Alignment.bottomRight,
                                //     child: GestureDetector(
                                //       onTap: () {},
                                //       child: Padding(
                                //         padding: EdgeInsets.symmetric(
                                //             horizontal: size.width * 0.02),
                                //         child: Container(
                                //           height: size.height * 0.04,
                                //           width: size.width * 0.065,
                                //           decoration: BoxDecoration(
                                //             color: Colors.white,
                                //             shape: BoxShape.circle,
                                //           ),
                                //           child: Center(
                                //             child: Icon(
                                //               Icons.check_circle,
                                //               size: size.height * 0.02,
                                //               color: Colors.green,
                                //             ),
                                //           ),
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // );
                              } else {
                                return SizedBox(
                                  height: size.height * 0.0,
                                  width: size.width * 0.0,
                                );
                                //   Positioned.fill(
                                //   child: Align(
                                //     alignment: Alignment.bottomRight,
                                //     child: GestureDetector(
                                //       onTap: () {},
                                //       child: Padding(
                                //         padding: EdgeInsets.symmetric(
                                //             horizontal: size.width * 0.02),
                                //         child: Container(
                                //           height: size.height * 0.04,
                                //           width: size.width * 0.065,
                                //           decoration: BoxDecoration(
                                //             color: Colors.white70,
                                //             shape: BoxShape.circle,
                                //           ),
                                //           child: Center(
                                //             child: Icon(
                                //               Icons.cancel,
                                //               size: size.height * 0.02,
                                //               color: Colors.red,
                                //             ),
                                //           ),
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // );
                              }
                            }),
                            Obx(() {
                              if (selectionController.selectedPDFPath.value !=
                                  '') {
                                return Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: size.width * 0.02),
                                        child: Center(
                                          child: Text(
                                            'Upload Success!',
                                            style: GoogleFonts.poppins(
                                              //fontWeight: FontWeight.w600,
                                              fontSize: size.width * 0.035,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              shadows: [
                                                Shadow(
                                                  color: Colors.black45,
                                                  blurRadius: 0,
                                                  offset: Offset(1, 1),
                                                ),
                                              ],
                                              // color: Colors.white,
                                            ),
                                          ),
                                          // Icon(
                                          //   Icons.check_circle,
                                          //   size: size.height * 0.033,
                                          //   color: Colors.green,
                                          // ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              } else {
                                return SizedBox();
                                //   Positioned.fill(
                                //   child: Align(
                                //     alignment: Alignment.bottomRight,
                                //     child: GestureDetector(
                                //       onTap: () {},
                                //       child: Padding(
                                //         padding: EdgeInsets.symmetric(
                                //             horizontal: size.width * 0.02),
                                //         child: Container(
                                //           height: size.height * 0.05,
                                //           width: size.width * 0.072,
                                //           decoration: BoxDecoration(
                                //             color: Colors.white70,
                                //             shape: BoxShape.circle,
                                //           ),
                                //           child: Center(
                                //             child: Icon(
                                //               Icons.cancel,
                                //               size: size.height * 0.033,
                                //               color: Colors.red,
                                //             ),
                                //           ),
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // );
                              }
                            }),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              ///todo: upload documents..attorney.
              SizedBox(
                height: 10,
              ),
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: Padding(
              //     padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
              //     child: Text(
              //       'Selected Documents: No Documents selected',
              //       style: GoogleFonts.poppins(
              //         fontWeight: FontWeight.w600,
              //         fontSize: size.width * 0.035,
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: size.height * 0.007,
              // ),
              SizedBox(
                height: size.height * 0.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Row(
                    children: [
                      Icon(
                        Icons.picture_as_pdf,
                        color: Colors.black,
                        size: size.height * 0.015,
                      ),
                      Text(
                        ' Documents must be in .pdf format only, max size 10 MB.',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: size.width * 0.03,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.00,
              ),
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: Padding(
              //     padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
              //     child: Row(
              //       children: [
              //         Icon(
              //           Icons.folder_copy,
              //           color: Colors.black,
              //           size: size.height * 0.025,
              //         ),
              //         Text(
              //           ' Documents must be in this device to select. If not copy\n the documents to this device and proceed.',
              //           style: GoogleFonts.poppins(
              //             fontWeight: FontWeight.w500,
              //             fontSize: size.width * 0.03,
              //             color: AppColors.black,
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: size.height * 0.02,
              // ),

              ///todo:end power of attorney...
              ///
              ///todo: Article of association Document.....
              SizedBox(
                height: 0,
              ),

              ///todo: divider...
              SizedBox(
                height: size.height * 0.00,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: size.height * 0.002,
                  width: size.width,
                  color: AppColors.black,
                ),
              ),
              SizedBox(
                height: size.height * 0.007,
              ),

              ///todo:power of Attorney Documents
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    'Article Of Association Documents',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w600,
                      fontSize: size.width * 0.036,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.007,
              ),
              SizedBox(
                height: 5,
              ),

              ///todo: upload documents 1...
              GetBuilder<SelectionController>(
                builder: (_) => Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.02),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Stack(
                          children: [
                            GestureDetector(
                              onTap: () async {
                                //await selectionController.pickPDF();
                              },
                              child: Obx(
                                () => selectionController
                                            .selectedPDFPath.value !=
                                        ''
                                    ? Container(
                                        height: size.height * 0.13,
                                        width: size.width * 0.65,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              //.withOpacity(1), // Shadow color
                                              spreadRadius: 2, // Spread radius
                                              blurRadius: 0, // Blur radius
                                              offset: Offset(1,
                                                  1), // Offset from the top-left
                                            ),
                                            BoxShadow(
                                              color: Colors
                                                  .white, // Highlight color
                                              spreadRadius:
                                                  -2, // Negative spread radius for inner shadow
                                              blurRadius: 10, // Blur radius
                                              offset: Offset(-2,
                                                  -2), // Offset from the bottom-right
                                            ),
                                          ],
                                          gradient: LinearGradient(
                                            // Gradient to give it a softer look
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Colors.green.shade200,
                                              Colors.green.shade300,
                                            ],
                                          ),
                                          border: Border.all(
                                            width: size.width * 0.01,
                                            color: Colors.green.withOpacity(
                                                0.8), // Border color
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Center(
                                            child: Obx(() => Text(
                                                  'PDF Name: \n${selectionController.selectedPDFName.value}',
                                                  style: GoogleFonts.roboto(
                                                    //fontWeight: FontWeight.w600,
                                                    fontSize:
                                                        size.width * 0.034,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,

                                                    shadows: [
                                                      Shadow(
                                                        color: Colors.black45,
                                                        blurRadius: 0,
                                                        offset:
                                                            Offset(0.1, 0.1),
                                                      ),
                                                    ],
                                                    // color: Colors.white,
                                                  ),
                                                )),
                                          ),
                                          // Image.file(
                                          //   File(selectionController
                                          //       .selectedPath.value),
                                          //   fit: BoxFit.fill,
                                          // ),
                                        ),
                                      )

                                    ///

                                    : InkWell(
                                        onTap: () async {
                                          //await selectionController.pickPDF();
                                        },
                                        child: PhysicalModel(
                                          color: AppColors.white,
                                          shadowColor: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          elevation: 5,
                                          child: Container(
                                            height: size.height * 0.13,
                                            width: size.width * 0.65,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              border: Border.all(
                                                width: size.width * 0.01,
                                                color: AppColors.th1wht2,
                                              ),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: AppColors.th1wht3,
                                                  spreadRadius: 1,
                                                  blurRadius: 1,
                                                  offset: Offset(0, 1),
                                                ),
                                              ],
                                            ),
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text(
                                                    '',
                                                    style: GoogleFonts.roboto(
                                                      //fontWeight: FontWeight.w600,
                                                      fontSize:
                                                          size.width * 0.032,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,

                                                      shadows: [
                                                        Shadow(
                                                          color: Colors.black45,
                                                          blurRadius: 0,
                                                          offset: Offset(0, 0),
                                                        ),
                                                      ],
                                                      // color: Colors.white,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.picture_as_pdf,
                                                    color: AppColors.greyColor,
                                                    size: size.width * 0.09,
                                                  ),
                                                  Text(
                                                    'Document Pending',
                                                    style: GoogleFonts.roboto(
                                                      //fontWeight: FontWeight.w600,
                                                      fontSize:
                                                          size.width * 0.032,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,

                                                      shadows: [
                                                        Shadow(
                                                          color: Colors.black45,
                                                          blurRadius: 0,
                                                          offset: Offset(0, 0),
                                                        ),
                                                      ],
                                                      // color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            // Icon(
                                            //   Icons.add_box,
                                            //   color: Colors.black,
                                            // ),
                                          ),
                                        ),
                                      ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Obx(() {
                                if (selectionController.selectedPDFPath.value !=
                                    '') {
                                  return GestureDetector(
                                    onTap: () async {
                                      await selectionController.pickPDF();
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.02),
                                      child: Container(
                                        height: size.height * 0.05,
                                        width: size.width * 0.07,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            FontAwesomeIcons.edit,
                                            size: size.height * 0.02,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                } else {
                                  return IconButton(
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.transparent,
                                    ),
                                    onPressed: () {
                                      //await selectionController.pickPDF();

                                      // Handle add action
                                    },
                                  );
                                }
                              }),
                            ),
                            Obx(() {
                              if (selectionController.selectedPDFPath.value !=
                                  '') {
                                return Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: size.width * 0.02),
                                        child: Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.072,
                                          decoration: BoxDecoration(
                                            color: Colors.white70,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.check_circle,
                                              size: size.height * 0.033,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              } else {
                                return Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: size.width * 0.02),
                                        child: Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.072,
                                          decoration: BoxDecoration(
                                            color: Colors.white70,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.cancel,
                                              size: size.height * 0.033,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }
                            }),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.02),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Stack(
                          children: [
                            Obx(
                              () => selectionController.selectedPDFPath.value !=
                                      ''
                                  ? Container(
                                      height: size.height * 0.07,
                                      width: size.width * 0.23,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            //.withOpacity(1), // Shadow color
                                            spreadRadius: 2, // Spread radius
                                            blurRadius: 0, // Blur radius
                                            offset: Offset(1,
                                                1), // Offset from the top-left
                                          ),
                                          BoxShadow(
                                            color:
                                                Colors.white, // Highlight color
                                            spreadRadius:
                                                -2, // Negative spread radius for inner shadow
                                            blurRadius: 10, // Blur radius
                                            offset: Offset(-2,
                                                -2), // Offset from the bottom-right
                                          ),
                                        ],
                                        gradient: LinearGradient(
                                          // Gradient to give it a softer look
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Colors.green.shade200,
                                            Colors.green.shade300,
                                          ],
                                        ),
                                        border: Border.all(
                                          width: size.width * 0.01,
                                          color: Colors.green
                                              .withOpacity(0.8), // Border color
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    )

                                  ///

                                  : InkWell(
                                      onTap: () async {
                                        await selectionController.pickPDF();
                                      },
                                      child: PhysicalModel(
                                        color: AppColors.white,
                                        shadowColor: Colors.black,
                                        borderRadius: BorderRadius.circular(20),
                                        elevation: 5,
                                        child: Container(
                                          height: size.height * 0.07,
                                          width: size.width * 0.25,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                            border: Border.all(
                                              width: size.width * 0.01,
                                              color: AppColors.th1wht2,
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: AppColors.th1wht3,
                                                //Colors.red.withOpacity(0.5),
                                                spreadRadius: 0,
                                                blurRadius: 2,
                                                offset: Offset(0, 0),
                                              ),
                                            ],
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Add+',
                                              style: GoogleFonts.poppins(
                                                //fontWeight: FontWeight.w600,
                                                fontSize: size.width * 0.033,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,

                                                shadows: [
                                                  Shadow(
                                                    color: Colors.black45,
                                                    blurRadius: 0,
                                                    offset: Offset(0, 0),
                                                  ),
                                                ],
                                                // color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                            ),
                            // Positioned(
                            //   top: 0,
                            //   right: 0,
                            //   child: Obx(() {
                            //     if (selectionController.selectedPDFPath.value !=
                            //         '') {
                            //       return InkWell(
                            //         onTap: () {
                            //           selectionController.pickPDF();
                            //           //handleImageSelection1();
                            //         },
                            //         child: Padding(
                            //           padding: EdgeInsets.symmetric(
                            //               horizontal: size.width * 0.02),
                            //           child: Container(
                            //             height: size.height * 0.04,
                            //             width: size.width * 0.06,
                            //             decoration: BoxDecoration(
                            //               color: Colors.white,
                            //               shape: BoxShape.circle,
                            //             ),
                            //             child: Center(
                            //               child: Icon(
                            //                 FontAwesomeIcons.edit,
                            //                 size: size.height * 0.017,
                            //               ),
                            //             ),
                            //           ),
                            //         ),
                            //       );
                            //     } else {
                            //       return SizedBox();
                            //       //   IconButton(
                            //       //   icon: Icon(
                            //       //     Icons.add,
                            //       //     color: Colors.transparent,
                            //       //   ),
                            //       //   onPressed: () {
                            //       //     // Handle add action
                            //       //   },
                            //       // );
                            //     }
                            //   }),
                            // ),
                            Obx(() {
                              if (selectionController.selectedPDFPath.value !=
                                  '') {
                                return SizedBox();
                                //Positioned.fill(
                                //   child: Align(
                                //     alignment: Alignment.bottomRight,
                                //     child: GestureDetector(
                                //       onTap: () {},
                                //       child: Padding(
                                //         padding: EdgeInsets.symmetric(
                                //             horizontal: size.width * 0.02),
                                //         child: Container(
                                //           height: size.height * 0.04,
                                //           width: size.width * 0.065,
                                //           decoration: BoxDecoration(
                                //             color: Colors.white,
                                //             shape: BoxShape.circle,
                                //           ),
                                //           child: Center(
                                //             child: Icon(
                                //               Icons.check_circle,
                                //               size: size.height * 0.02,
                                //               color: Colors.green,
                                //             ),
                                //           ),
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // );
                              } else {
                                return SizedBox(
                                  height: size.height * 0.0,
                                  width: size.width * 0.0,
                                );
                                //   Positioned.fill(
                                //   child: Align(
                                //     alignment: Alignment.bottomRight,
                                //     child: GestureDetector(
                                //       onTap: () {},
                                //       child: Padding(
                                //         padding: EdgeInsets.symmetric(
                                //             horizontal: size.width * 0.02),
                                //         child: Container(
                                //           height: size.height * 0.04,
                                //           width: size.width * 0.065,
                                //           decoration: BoxDecoration(
                                //             color: Colors.white70,
                                //             shape: BoxShape.circle,
                                //           ),
                                //           child: Center(
                                //             child: Icon(
                                //               Icons.cancel,
                                //               size: size.height * 0.02,
                                //               color: Colors.red,
                                //             ),
                                //           ),
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // );
                              }
                            }),
                            Obx(() {
                              if (selectionController.selectedPDFPath.value !=
                                  '') {
                                return Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: size.width * 0.02),
                                        child: Center(
                                          child: Text(
                                            'Upload Success!',
                                            style: GoogleFonts.poppins(
                                              //fontWeight: FontWeight.w600,
                                              fontSize: size.width * 0.035,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              shadows: [
                                                Shadow(
                                                  color: Colors.black45,
                                                  blurRadius: 0,
                                                  offset: Offset(1, 1),
                                                ),
                                              ],
                                              // color: Colors.white,
                                            ),
                                          ),
                                          // Icon(
                                          //   Icons.check_circle,
                                          //   size: size.height * 0.033,
                                          //   color: Colors.green,
                                          // ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              } else {
                                return SizedBox();
                                //   Positioned.fill(
                                //   child: Align(
                                //     alignment: Alignment.bottomRight,
                                //     child: GestureDetector(
                                //       onTap: () {},
                                //       child: Padding(
                                //         padding: EdgeInsets.symmetric(
                                //             horizontal: size.width * 0.02),
                                //         child: Container(
                                //           height: size.height * 0.05,
                                //           width: size.width * 0.072,
                                //           decoration: BoxDecoration(
                                //             color: Colors.white70,
                                //             shape: BoxShape.circle,
                                //           ),
                                //           child: Center(
                                //             child: Icon(
                                //               Icons.cancel,
                                //               size: size.height * 0.033,
                                //               color: Colors.red,
                                //             ),
                                //           ),
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // );
                              }
                            }),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              ///todo: upload documents...button.
              // SizedBox(
              //   height: 20,
              // ),
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: Padding(
              //     padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
              //     child: Text(
              //       'Selected Documents: No Documents selected',
              //       style: GoogleFonts.poppins(
              //         fontWeight: FontWeight.w600,
              //         fontSize: size.width * 0.035,
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: size.height * 0.01,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Row(
                    children: [
                      Icon(
                        Icons.picture_as_pdf,
                        color: Colors.black,
                        size: size.height * 0.015,
                      ),
                      Text(
                        ' Documents must be in .pdf format only, max size 10 MB.',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: size.width * 0.03,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // SizedBox(
              //   height: size.height * 0.005,
              // ),
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: Padding(
              //     padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
              //     child: Row(
              //       children: [
              //         Icon(
              //           Icons.folder_copy,
              //           color: Colors.black,
              //           size: size.height * 0.025,
              //         ),
              //         Text(
              //           ' Documents must be in this device to select. If not copy\n the documents to this device and proceed.',
              //           style: GoogleFonts.poppins(
              //             fontWeight: FontWeight.w500,
              //             fontSize: size.width * 0.03,
              //             color: AppColors.black,
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              SizedBox(
                height: size.height * 0.0,
              ),

              ///todo: end of article of association documents...

              SizedBox(height: 30),
              HorizontalButton(
                text: 'SUBMIT',
                onClick: () async {
                  ///todo: calling api....
                  /// await _doctorrUploadReportController.postdoctorUploadreportApi();

                  // Clear selected image path
                  selectionController.selectedPath.value = '';

                  // Clear dropdown value
                  /// _doctorrUploadReportController.selectedpatient.value = null;

                  await Get.to(SucessfullDocumentsupload());

                  ///Clear dropdown value
                  //  _doctorrUploadReportController.selectedpatient.value = null;
                  selectionController.imagePath.clear();
                  selectionController.selectedImagePath.close();

                  //resetSelection();
                  optionsController.resetSelection();

                  print('Container next');
                },
              ),
              SizedBox(height: size.height * 0.02),
            ],
          ),
        ),
      ),

      // },
      //),
    );
  }
}
