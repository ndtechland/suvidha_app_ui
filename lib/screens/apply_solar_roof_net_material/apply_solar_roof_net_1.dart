import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/buttons/circular_horizontal_buttom.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/reusable_appbar/reusable_appbar.dart';
import 'package:suvidha_app_ui/constants/text_field_custon_weight/textfield_weight.dart';
import 'package:suvidha_app_ui/controllers/application_detail_controller.dart';
import 'package:suvidha_app_ui/screens/apply_solar_roof_net_material/apply_soolar_roof_net_2.dart';

//import '../../constants/reusable_appbar/reusable_appbar.dart';

class ApplySolarRoofNetMaterial1 extends StatelessWidget {
  ApplySolarRoofNetMaterial1({Key? key}) : super(key: key);
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
        title: 'Apply for Solar net Roof 1',

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
            height: size.height * 0.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.02, vertical: size.height * 0.01),
            child: PhysicalModel(
              color: Colors.black,
              elevation: 0,
              child: Container(
                height: size.height * 0.1,
                width: size.width,
                decoration: BoxDecoration(
                  //color: AppColors.a20,
                  gradient: AppColors.gradient18,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.0),
                    child: Text(
                      'Applicant For Solar Rooftop Net\n                         Metering',
                      style: GoogleFonts.poppins(
                        fontSize: size.width * 0.042,
                        fontWeight: FontWeight.bold,
                        color: AppColors.a15,
                        shadows: [
                          Shadow(
                            color: Colors.black45,
                            blurRadius: 0,
                            offset: Offset(0.5, 0.5),
                          ),
                        ],
                      ),
                    ),
                  ),
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
                '* Only for those Consumers who already have Solar Panel installed in their premises. Such Consumers can Apply for Net Metering from here. ',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: size.width * 0.029,
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
              child: Text(
                '* केवल उन उपभोक्ताओं के लिए जिनके परिसर में पहले से ही सोलर पैनल लगा हुआ है। ऐसे उपभोक्ता यहां से नेट मीटरिंग के लिए आवेदन कर सकते हैं। ',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: size.width * 0.029,
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          SizedBox(
            height: size.height * 0.007,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
              child: Text(
                'Enter Your Consumer Id/ CA Number.',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: size.width * 0.037,
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
              hintText: 'Enter Customer Id/ CA Number',
              keyboardType: TextInputType.text,

              prefixIcon: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(
                      Icons.account_box,
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
            height: size.height * 0.02,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
              child: Text(
                'CA NUMBER /CONSUMER ID HELP.',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: size.width * 0.030,
                  color: AppColors.a15,
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.007,
          ),
          SizedBox(height: 30),
          HorizontalCircularButton(
            height: size.height * 0.06,
            width: size.width * 0.5,
            text: "Fetch Consumer Detail",
            onPressed: () {
              Get.to(ApplySolarRoofNetMaterial2());
              // if (_formKey.currentState!.validate()) {
              //   // If all fields are valid, toggle selection and navigate
              //   selectionController.toggleSelection(0);
              //   //Get.to(UploadReport1());
              // }
            },
            //isSelected: selectionController.selectedIndices.contains(0),
          ),
          SizedBox(height: size.height * 0.02),
        ],
      ),

      // },
      //),
    );
  }
}
