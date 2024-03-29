import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/reusable_appbar/reusable_appbar.dart';
import 'package:suvidha_app_ui/controllers/application_detail_controller.dart';

//import '../../constants/reusable_appbar/reusable_appbar.dart';

class PreviewFormmsDetails extends StatelessWidget {
  PreviewFormmsDetails({Key? key}) : super(key: key);
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
        title: """Application Form Details""",
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
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.001,
            ),
            Container(
              height: size.height * 0.05,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(0),
                // border: Border.all(color: Colors.grey)
              ),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  height: size.height * 0.04,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: AppColors.a19,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Center(
                    child: Text(
                      'Status: Incomplete',
                      style: GoogleFonts.poppins(
                        fontSize: size.width * 0.043,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.001,
            ),
            Container(
              height: size.height * 0.43,
              width: size.width,
              decoration: BoxDecoration(
                  //color: Colors.white30,
                  gradient: AppColors.gradient10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: size.height * 0.43,
                    width: size.width * 0.5,
                    decoration: BoxDecoration(
                        //color: Colors.white,
                        // gradient: AppColors.gradient10,
                        ),
                    child: Column(
                      children: [
                        ListTile(
                          dense:
                              true, // Add this line to reduce vertical padding

                          title: Text(
                            'Request No',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.035,
                            ),
                          ),
                          subtitle: Text(
                            '5233445555',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * 0.040,
                                color: Colors.white),
                          ),
                        ),
                        ListTile(
                          dense:
                              true, // Add this line to reduce vertical padding

                          title: Text(
                            'District',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.035,
                            ),
                          ),
                          subtitle: Text(
                            'LAKHISARAI',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * 0.040,
                                color: Colors.white),
                          ),
                        ),
                        ListTile(
                          dense:
                              true, // Add this line to reduce vertical padding

                          title: Text(
                            'Panchayat',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.035,
                            ),
                          ),
                          subtitle: Text(
                            'SURAJGARHA',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * 0.040,
                                color: Colors.white),
                          ),
                        ),
                        ListTile(
                          dense:
                              true, // Add this line to reduce vertical padding

                          title: Text(
                            'Division',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.035,
                            ),
                          ),
                          subtitle: Text(
                            'MUNGER',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * 0.040,
                                color: Colors.white),
                          ),
                        ),
                        ListTile(
                          dense:
                              true, // Add this line to reduce vertical padding
                          title: Text(
                            'Section',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.035,
                            ),
                          ),
                          subtitle: Text(
                            'Lakhisarai',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * 0.040,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: size.height * 0.43,
                    width: size.width * 0.5,
                    decoration: BoxDecoration(
                        //color: Colors.white,
                        // gradient: AppColors.gradient10,
                        ),
                    child: Column(
                      children: [
                        ListTile(
                          dense:
                              true, // Add this line to reduce vertical padding

                          title: Text(
                            'Mobile No',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.035,
                            ),
                          ),
                          subtitle: Text(
                            '7987664533',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * 0.040,
                                color: Colors.white),
                          ),
                        ),
                        ListTile(
                          dense:
                              true, // Add this line to reduce vertical padding

                          title: Text(
                            'Block',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.035,
                            ),
                          ),
                          subtitle: Text(
                            'Surajgarha',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * 0.040,
                                color: Colors.white),
                          ),
                        ),
                        ListTile(
                          dense:
                              true, // Add this line to reduce vertical padding

                          title: Text(
                            'Village',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.035,
                            ),
                          ),
                          subtitle: Text(
                            'Salempur',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * 0.040,
                                color: Colors.white),
                          ),
                        ),
                        ListTile(
                          dense:
                              true, // Add this line to reduce vertical padding

                          title: Text(
                            'SubDivision',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.035,
                            ),
                          ),
                          subtitle: Text(
                            'Lakhisarai',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * 0.040,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.001,
            ),

            ///todo: connection details
            Container(
              height: size.height * 0.05,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(0),
                // border: Border.all(color: Colors.grey)
              ),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  height: size.height * 0.04,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: AppColors.a19,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Center(
                    child: Text(
                      'Connection Details',
                      style: GoogleFonts.poppins(
                        fontSize: size.width * 0.043,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.001,
            ),
            Container(
              height: size.height * 0.26,
              width: size.width,
              decoration: BoxDecoration(
                  //color: Colors.white30,
                  gradient: AppColors.gradient10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: size.height * 0.26,
                    width: size.width * 0.5,
                    decoration: BoxDecoration(
                        //color: Colors.white,
                        // gradient: AppColors.gradient10,
                        ),
                    child: Column(
                      children: [
                        ListTile(
                          dense:
                              true, // Add this line to reduce vertical padding

                          title: Text(
                            'Connection Type',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.035,
                            ),
                          ),
                          subtitle: Text(
                            'Industrial',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * 0.040,
                                color: Colors.white),
                          ),
                        ),
                        ListTile(
                          dense:
                              true, // Add this line to reduce vertical padding

                          title: Text(
                            'Tariff',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.035,
                            ),
                          ),
                          subtitle: Text(
                            'HTS-I',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * 0.040,
                                color: Colors.white),
                          ),
                        ),
                        ListTile(
                          dense:
                              true, // Add this line to reduce vertical padding

                          title: Text(
                            'Phase',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.035,
                            ),
                          ),
                          subtitle: Text(
                            '3',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * 0.040,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: size.height * 0.26,
                    width: size.width * 0.5,
                    decoration: BoxDecoration(
                        //color: Colors.white,
                        // gradient: AppColors.gradient10,
                        ),
                    child: Column(
                      children: [
                        ListTile(
                          dense:
                              true, // Add this line to reduce vertical padding

                          title: Text(
                            'Connection Sub Type',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.035,
                            ),
                          ),
                          subtitle: Text(
                            'High Tension',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * 0.040,
                                color: Colors.white),
                          ),
                        ),
                        ListTile(
                          dense:
                              true, // Add this line to reduce vertical padding

                          title: Text(
                            'Load',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.035,
                            ),
                          ),
                          subtitle: Text(
                            '88kVA',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * 0.040,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            ///todo: personal details.
            SizedBox(
              height: size.height * 0.001,
            ),
            Container(
              height: size.height * 0.05,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(0),
                // border: Border.all(color: Colors.grey)
              ),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  height: size.height * 0.04,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: AppColors.a19,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Center(
                    child: Text(
                      'Personal Details',
                      style: GoogleFonts.poppins(
                        fontSize: size.width * 0.043,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.001,
            ),
            Container(
              //height: size.height * 0.444,
              width: size.width,
              decoration: BoxDecoration(
                  //color: Colors.white30,
                  gradient: AppColors.gradient10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    //height: size.height * 0.444,
                    width: size.width * 0.5,
                    decoration: BoxDecoration(
                        //color: Colors.white,
                        // gradient: AppColors.gradient10,
                        ),
                    child: Column(
                      children: [
                        ListTile(
                          dense:
                              true, // Add this line to reduce vertical padding

                          title: Text(
                            'Ownership Type',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.031,
                            ),
                          ),
                          subtitle: Text(
                            'Partnership',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * 0.036,
                                color: Colors.white),
                          ),
                        ),
                        ListTile(
                          dense:
                              true, // Add this line to reduce vertical padding

                          title: Text(
                            'Name Of Applicant',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.031,
                            ),
                          ),
                          subtitle: Text(
                            'Kavi Singh',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * 0.036,
                                color: Colors.white),
                          ),
                        ),
                        ListTile(
                          dense:
                              true, // Add this line to reduce vertical padding

                          title: Text(
                            'Name of Business Firm/Industry',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.031,
                            ),
                          ),
                          subtitle: Text(
                            'Kavi Corp',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * 0.036,
                                color: Colors.white),
                          ),
                        ),
                        ListTile(
                          dense:
                              true, // Add this line to reduce vertical padding

                          title: Text(
                            'Descriptions of Business Firm/Industry',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.031,
                            ),
                          ),
                          subtitle: Text(
                            'For Agriculture purpose',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * 0.036,
                                color: Colors.white),
                          ),
                        ),
                        ListTile(
                          dense:
                              true, // Add this line to reduce vertical padding
                          title: Text(
                            'Father\'s/Husband Name',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.031,
                            ),
                          ),
                          subtitle: Text(
                            'Ravi Singh',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * 0.036,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    //height: size.height * 0.444,
                    width: size.width * 0.5,
                    decoration: BoxDecoration(
                        //color: Colors.white,
                        // gradient: AppColors.gradient10,
                        ),
                    child: Column(
                      children: [
                        ListTile(
                          dense:
                              true, // Add this line to reduce vertical padding

                          title: Text(
                            'New Connection Installation Address',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.031,
                            ),
                          ),
                          subtitle: Text(
                            'House1 Street 1 Adress Line 1 Lakhisarai 811106',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * 0.036,
                                color: Colors.white),
                          ),
                        ),
                        ListTile(
                          dense:
                              true, // Add this line to reduce vertical padding

                          title: Text(
                            'Patmanent Address',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.031,
                            ),
                          ),
                          subtitle: Text(
                            'House1 Street 1 Adress Line 1 Lakhisarai 811106',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * 0.036,
                                color: Colors.white),
                          ),
                        ),
                        ListTile(
                          dense:
                              true, // Add this line to reduce vertical padding

                          title: Text(
                            'Email Id',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.031,
                            ),
                          ),
                          subtitle: Text(
                            'kavi@gmail.com',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * 0.036,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.001,
            ),

            // Spacer(),
          ],
        ),
      ),

      // },
      //),
    );
  }
}
