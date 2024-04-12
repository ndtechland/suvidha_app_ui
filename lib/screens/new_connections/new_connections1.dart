import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/screens/new_connections/new_connection_guideline.dart';
import 'package:suvidha_app_ui/screens/official_discome_login/discome_apply_new_connection.dart';

import '../../constants/reusable_appbar/reusable_appbar.dart';

class NewConnectionPage1 extends StatelessWidget {
  //final GlobalKey<FormState> _formconnectionKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //  MyConnectionController _myconnection = Get.put(MyConnectionController());
    return Scaffold(
      backgroundColor: AppColors.th1whtbackgrd,
      appBar: myAppBar(
        //backgroundColor: AppColors.white,
        title: 'New Connection Services',
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
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.02,
              ),
              // SizedBox(
              //   height: size.height * 0.03,
              // ),
              PhysicalModel(
                color: Colors.white,
                elevation: 8,

                shadowColor: Colors.grey,
                borderRadius: BorderRadius.circular(5),
                // color: Colors.red,
                child: Container(
                  height: size.height * 0.55,
                  width: size.width * 0.95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [
                      Material(
                        elevation: 10,
                        color: Colors.grey.shade700,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            topLeft: Radius.circular(5)),
                        child: Container(
                          height: size.height * 0.05,
                          decoration: BoxDecoration(
                            color: AppColors.a19,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5),
                                topLeft: Radius.circular(5)),
                            //borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.05),
                                child: Text(
                                  'Apply New Connection',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    fontSize: size.width * 0.045,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //Divider(),
                      SizedBox(
                        height: size.height * 0.0,
                      ),
                      SizedBox(height: size.height * 0.02),
                      Container(
                        height: size.height * 0.15,
                        width: size.width * 0.9,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: size.height * 0.012,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.02),
                              child: InkWell(
                                onTap: () {
                                  Get.to(NewConnectionGuideline());
                                },
                                child: Container(
                                  height: size.height * 0.06,
                                  width: size.width * 0.9,
                                  decoration: BoxDecoration(
                                    color: AppColors.a15,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Apply New Connection*',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.white,
                                        fontSize: size.width * 0.045,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: size.height * 0.006,
                                    horizontal: size.width * 0.02),
                                child: Text(
                                  '* Apply for any new type of new connection\n except for agriculture',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.italic,
                                    fontSize: size.width * 0.029,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),

                      //SizedBox(height: size.height * 0.03),
                      Container(
                        height: size.height * 0.29,
                        width: size.width * 0.9,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.05,
                                    vertical: size.height * 0.005),
                                child: Text(
                                  'Apply New Agriculture Connection',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    fontSize: size.width * 0.04,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: size.height * 0.003,
                                    horizontal: size.width * 0.02),
                                child: Text(
                                  '* Only JEE Supply is autorized to apply\n for Agriculture Connection.',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    //fontStyle: FontStyle.italic,
                                    fontSize: size.width * 0.032,
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
                                padding: EdgeInsets.symmetric(
                                    vertical: size.height * 0.001,
                                    horizontal: size.width * 0.02),
                                child: Text(
                                  '* For Agriculture Connection, Applicant must\n go to Discom Section Office of the area where\n New Agriculture connection is desired and\ncontact JEE Supply to apply.',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    //fontStyle: FontStyle.italic,
                                    fontSize: size.width * 0.025,
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
                                padding: EdgeInsets.symmetric(
                                    vertical: size.height * 0.001,
                                    horizontal: size.width * 0.02),
                                child: Text(
                                  '* JEE Supply will then Click Official Discom\n Login to proceed further.',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    //fontStyle: FontStyle.italic,
                                    fontSize: size.width * 0.025,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.02),
                              child: InkWell(
                                onTap: () {
                                  Get.to(NewConnectiondiscomeGuideline());
                                },
                                child: Container(
                                  height: size.height * 0.053,
                                  width: size.width * 0.9,
                                  decoration: BoxDecoration(
                                    color: AppColors.a15,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Official Discom Login',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.white,
                                        fontSize: size.width * 0.040,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.05),
                    child: Container(
                        height: size.height * 0.16,
                        width: size.width * 0.35,
                        decoration: BoxDecoration(
                          color: AppColors.a15,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Icon(
                                Icons.upload,
                                color: Colors.white,
                                size: size.height * 0.06,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: size.height * 0.006,
                                    horizontal: size.width * 0.05),
                                child: Text(
                                  'Upload/Update\n       Pending\n    Documents',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: size.width * 0.030,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.05),
                    child: Container(
                        height: size.height * 0.16,
                        width: size.width * 0.35,
                        decoration: BoxDecoration(
                          color: AppColors.a15,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Icon(
                                Icons.remove_red_eye,
                                color: Colors.white,
                                size: size.height * 0.06,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: size.height * 0.006,
                                    horizontal: size.width * 0.05),
                                child: Text(
                                  'view/Check\n Application\n     Status',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: size.width * 0.030,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.03,
              ),

              PhysicalModel(
                color: Colors.white,
                elevation: 8,

                shadowColor: Colors.grey,
                borderRadius: BorderRadius.circular(5),
                // color: Colors.red,
                child: Container(
                  height: size.height * 0.26,
                  width: size.width * 0.95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [
                      Material(
                        elevation: 10,
                        color: Colors.grey.shade700,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            topLeft: Radius.circular(5)),
                        child: Container(
                          height: size.height * 0.05,
                          decoration: BoxDecoration(
                            color: AppColors.a19,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5),
                                topLeft: Radius.circular(5)),
                            //borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.05),
                                child: Text(
                                  'Industrial Connection Applications',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    fontSize: size.width * 0.045,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //Divider(),
                      SizedBox(
                        height: size.height * 0.0,
                      ),
                      SizedBox(height: size.height * 0.02),
                      InkWell(
                        onTap: () {
                          //Get.to(NewConnectionPage2());
                        },
                        child: Container(
                          height: size.height * 0.18,
                          width: size.width * 0.9,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: size.height * 0.012,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: size.height * 0.006,
                                      horizontal: size.width * 0.02),
                                  child: Text(
                                    'For 11kV/132/220kV Voltage Line and above\n59KW Industrial ConnectionApplication',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      fontSize: size.width * 0.029,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: size.height * 0.00,
                                      horizontal: size.width * 0.02),
                                  child: Text(
                                    'After Infrastructure Verification Step for your\napplication is completed by Discom',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal,
                                      fontSize: size.width * 0.026,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.02,
                                    vertical: size.height * 0.013),
                                child: Container(
                                  height: size.height * 0.05,
                                  width: size.width * 0.9,
                                  decoration: BoxDecoration(
                                    color: AppColors.a15,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Proceed to complete the process',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.white,
                                        fontSize: size.width * 0.035,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
