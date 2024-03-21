import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/screens/new_connections/new_connections2.dart';

import '../../constants/reusable_appbar/reusable_appbar.dart';

class NewConnectionGuideline extends StatelessWidget {
  //final GlobalKey<FormState> _formconnectionKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //  MyConnectionController _myconnection = Get.put(MyConnectionController());
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: myAppBar(
        //backgroundColor: AppColors.white,
        title: 'Guideline',
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
              // SizedBox(
              //   height: size.height * 0.02,
              // ),
              ///
              // SizedBox(
              //   height: size.height * 0.03,
              // ),
              PhysicalModel(
                color: Colors.white,
                elevation: 0,

                shadowColor: Colors.grey,
                // borderRadius: BorderRadius.circular(5),
                // color: Colors.red,
                child: Container(
                  //height: size.height * 0.55,
                  width: size.width,
                  decoration: BoxDecoration(
                      //borderRadius: BorderRadius.circular(5),
                      ),
                  child: Column(
                    children: [
                      Material(
                        elevation: 10,
                        color: Colors.grey.shade700,
                        // borderRadius: BorderRadius.only(
                        //     topRight: Radius.circular(5),
                        //     topLeft: Radius.circular(5)),
                        child: Container(
                          height: size.height * 0.05,
                          decoration: BoxDecoration(
                            color: AppColors.a19,
                            // borderRadius: BorderRadius.only(
                            //     topRight: Radius.circular(5),
                            //     topLeft: Radius.circular(5)),
                            //borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.05),
                                child: Text(
                                  'For All Applications',
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

                      //SizedBox(height: size.height * 0.03),
                      Container(
                        //height: size.height * 0.29,
                        width: size.width,
                        // decoration: BoxDecoration(
                        //     border: Border.all(color: Colors.black)),
                        child: Column(
                          children: [
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
                                  '1. Mobile Number of all Application is required for all future communications.',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    //fontStyle: FontStyle.italic,
                                    fontSize: size.width * 0.033,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: size.height * 0.001,
                                    horizontal: size.width * 0.02),
                                child: Text(
                                  '2. New Service Connection Application is consist\nwith two parts:\n    a. Basic Details.\n    b. Documents Upload.',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    //fontStyle: FontStyle.italic,
                                    fontSize: size.width * 0.033,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: size.height * 0.001,
                                    horizontal: size.width * 0.02),
                                child: Text(
                                  '3. Both parts are required to be filled and submitted.',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    //fontStyle: FontStyle.italic,
                                    fontSize: size.width * 0.033,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: size.height * 0.001,
                                    horizontal: size.width * 0.02),
                                child: Text(
                                  '4. Upon successful submission of application, a\nMessage connecting Request Number will be sent on',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    //fontStyle: FontStyle.italic,
                                    fontSize: size.width * 0.033,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: size.height * 0.001,
                                    horizontal: size.width * 0.02),
                                child: Text(
                                  '5. Following documents are required for filling up\n'
                                  'the application form:    \n'
                                  '    a. Application Photo.     \n'
                                  '    b. Property Ownership Proof where New.\n        Connection is required    \n'
                                  '    c.Rent Agreement with No-Objection\n       Certificate from the owner, if on rent\n'
                                  '    d.Id Proof. (one of the following- Passport,\n       Ration Card, Aadhar Card, Votor Card, Driving\n       License, PAN Card, Photo Id isssues by any\n       Government Agency)    \n'
                                  '    e.Address Proof (one of the followings- LPG\n       Connecting Card, Government Issues Land\n       Line Telephone Bill, BPL Card)',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    //fontStyle: FontStyle.italic,
                                    fontSize: size.width * 0.033,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Container(
                              width: size.width,
                              // height: size.height * 0.05,
                              decoration: BoxDecoration(
                                color: AppColors.a19,
                                // borderRadius: BorderRadius.only(
                                //     topRight: Radius.circular(5),
                                //     topLeft: Radius.circular(5)),
                                //borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                children: [
                                  Center(
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: size.width * 0.01),
                                        child: Text(
                                          'Industrial Connection Applications',
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w700,
                                            fontSize: size.width * 0.040,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: size.width * 0.01,
                                            vertical: size.height * 0.01),
                                        child: Text(
                                          'For 11 kV/33kV/132/220kV Voltage line and\nabove 59KW Industrial Connection Applications.',
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w700,
                                            fontSize: size.width * 0.033,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: size.height * 0.001,
                                    horizontal: size.width * 0.02),
                                child: Text(
                                  '5. Points 1-5 above',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    //fontStyle: FontStyle.italic,
                                    fontSize: size.width * 0.033,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: size.height * 0.001,
                                    horizontal: size.width * 0.02),
                                child: Text(
                                  '6. Industrial Connection Applicants are required\nto select Type of Ownership as Proprietary,\nPartnership or Company in their business/industry.',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    //fontStyle: FontStyle.italic,
                                    fontSize: size.width * 0.033,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: size.height * 0.001,
                                    horizontal: size.width * 0.02),
                                child: Text(
                                  '8. For Onership type "Propreitary", applicant will be required to upload "Self Ownership Document"while for Ownership Type :Partnership and "Company","power of Attorney" and "Article Of Association'
                                  ' documents will be required to upload.',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    //fontStyle: FontStyle.italic,
                                    fontSize: size.width * 0.033,
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
                height: size.height * 0.005,
              ),

              PhysicalModel(
                color: Colors.white,
                elevation: 6,

                shadowColor: Colors.grey,
                borderRadius: BorderRadius.circular(5),
                // color: Colors.red,
                child: Container(
                  height: size.height * 0.07,
                  width: size.width * 0.97,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: InkWell(
                    onTap: () {
                      Get.to(NewConnectionPage2());
                    },
                    child: Container(
                      height: size.height * 0.05,
                      width: size.width,
                      child: Padding(
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
                              'PROCEED',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.white,
                                  fontSize: size.width * 0.045,
                                  letterSpacing: 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
