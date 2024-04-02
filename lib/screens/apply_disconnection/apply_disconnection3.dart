import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/buttons/circular_horizontal_buttom.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/dailloge_box_reusable/reusable_dailoge_box.dart';
import 'package:suvidha_app_ui/constants/reusable_appbar/reusable_appbar.dart';
import 'package:suvidha_app_ui/constants/text_field_custon_weight/textfield_weight.dart';
import 'package:suvidha_app_ui/controllers/application_detail_controller.dart';

//import '../../constants/reusable_appbar/reusable_appbar.dart';

class ApplyDisconnection3 extends StatelessWidget {
  ApplyDisconnection3({Key? key}) : super(key: key);
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
        title: 'Apply Disconnection 3',

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
      body: SingleChildScrollView(
        child: Column(
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
                  height: size.height * 0.05,
                  width: size.width,
                  decoration: BoxDecoration(
                    //color: AppColors.a20,
                    gradient: AppColors.gradient18,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.0),
                      child: Text(
                        'Apply Disconnection',
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
              height: size.height * 0.01,
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
                    gradient: AppColors.gradient19,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      height: size.height * 0.08,
                      width: size.width,
                      decoration: BoxDecoration(
                        gradient: AppColors.gradient7,
                      ),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.02),
                              child: Text(
                                'Terms & Conditions',
                                style: GoogleFonts.poppins(
                                  fontSize: size.width * 0.030,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.white,
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
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.02),
                              child: Text(
                                '* Applying for Disconnection does not mean immediate\n   disconnection.',
                                style: GoogleFonts.poppins(
                                  fontSize: size.width * 0.027,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.white,
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
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.02),
                              child: Text(
                                '* Consumer is required to first settle all dues pending on him/\n   her before disconnection',
                                style: GoogleFonts.poppins(
                                  fontSize: size.width * 0.027,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.white,
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
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.02),
                              child: Text(
                                '* Consumer will be contacted by our team for the follow up \n   process after applying for disconnection from here',
                                style: GoogleFonts.poppins(
                                  fontSize: size.width * 0.027,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.white,
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
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.02),
                              child: Text(
                                '* Final disconnection will happen only when all dues pending\n   from Consumer side will be settled and other conditions are\n   fulfilled as per norms of BERC.',
                                style: GoogleFonts.poppins(
                                  fontSize: size.width * 0.027,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.white,
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
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.015,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Obx(() => Checkbox(
                        value: selectionController.isChecked.value,
                        onChanged: (newValue) {
                          selectionController.toggleCheckbox(newValue!);
                        },
                        checkColor: AppColors
                            .white, // Change the color of the checkmark
                        activeColor: AppColors
                            .a11, // Change the color of the selected checkbox
                        visualDensity: VisualDensity
                            .compact, // Adjust the size of the checkbox
                        materialTapTargetSize: MaterialTapTargetSize
                            .shrinkWrap, // Adjust tap target size
                      )),
                  Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left:
                                size.width * 0.014), // Adjust the padding here
                        child: Text(
                          'I have read, Understood and accept above\n'
                          'Terms and Conditions.',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: size.width * 0.033,
                            color: AppColors.a14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.015,
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
              child: PhysicalModel(
                color: Colors.black,
                elevation: 5,
                child: Container(
                  height: size.height * 0.16,
                  width: size.width,
                  decoration: BoxDecoration(
                    //color: AppColors.a20,
                    gradient: AppColors.gradient19,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      height: size.height * 0.08,
                      width: size.width,
                      decoration: BoxDecoration(
                        gradient: AppColors.gradient7,
                      ),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          SizedBox(
                            height: size.height * 0.007,
                          ),
                          SizedBox(
                            height: size.height * 0.063,
                            width: size.width * 0.6,
                            child: Directionality(
                              textDirection: TextDirection.ltr,
                              child: CustomTextField(
                                obscureText: false,
                                hintText: 'Enter OTP*',
                                keyboardType: TextInputType.text,

                                prefixIcon: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 0.0),
                                      child: Icon(
                                        Icons.numbers,
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
                          ),
                          SizedBox(
                            height: size.height * 0.015,
                          ),
                          InkWell(
                            onTap: () {
                              // Call the showAppleStyleDialog function
                              //showAppleStyleDialog1(context);
                              //showAppleStyleDialog(context);
                              showOtpDialog(context);
                            },
                            child: Container(
                              height: size.height * 0.04,
                              width: size.width * 0.33,
                              decoration: BoxDecoration(
                                color: Colors.white30,
                              ),
                              child: Center(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.03),
                                    child: Text(
                                      'Resend OTP (115)',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: size.width * 0.03,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.001,
                          ),
                        ],
                      ),
                    ),
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
                child: Container(
                  height: size.height * 0.15,
                  width: size.width,
                  decoration: BoxDecoration(
                    //color: AppColors.a20,
                    gradient: AppColors.gradient19,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      height: size.height * 0.1,
                      width: size.width,
                      decoration: BoxDecoration(
                        gradient: AppColors.gradient7,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: size.width * 0.44,
                                height: size.height * 0.05,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.03),
                                    child: Text(
                                      'Consumer ID/CA No:',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: size.width * 0.035,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.44,
                                height: size.height * 0.05,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.03),
                                    child: Text(
                                      '102167391',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: size.width * 0.035,
                                          color: AppColors.a11),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: size.width * 0.44,
                                height: size.height * 0.05,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.03),
                                    child: Text(
                                      'Consumer Name:',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: size.width * 0.035,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.44,
                                height: size.height * 0.05,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.03),
                                    child: Text(
                                      'Er. Kumar Prince',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: size.width * 0.035,
                                          color: AppColors.a11),
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
              height: size.height * 0.015,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Obx(() => Checkbox(
                        value: selectionController.isChecked.value,
                        onChanged: (newValue) {
                          selectionController.toggleCheckbox(newValue!);
                        },
                        checkColor: AppColors
                            .white, // Change the color of the checkmark
                        activeColor: AppColors
                            .a11, // Change the color of the selected checkbox
                        visualDensity: VisualDensity
                            .compact, // Adjust the size of the checkbox
                        materialTapTargetSize: MaterialTapTargetSize
                            .shrinkWrap, // Adjust tap target size
                      )),
                  Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left:
                                size.width * 0.014), // Adjust the padding here
                        child: Text(
                          'I want to apply for Disconnection agreeing to\n'
                          'Terms and Conditions mentioned above.',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: size.width * 0.033,
                            color: AppColors.a14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            HorizontalCircularButton(
              height: size.height * 0.045,
              width: size.width * 0.45,
              text: "APPLY",
              onPressed: () {
                // if (_formKey.currentState!.validate()) {
                //   // If all fields are valid, toggle selection and navigate
                //   selectionController.toggleSelection(0);
                //Get.to(ApplyDisconnection2());
                // }
              },
              //isSelected: selectionController.selectedIndices.contains(0),
            ),
            SizedBox(
              height: size.height * 0.009,
            ),
            SizedBox(
              height: size.height * 0.015,
            ),
            SizedBox(height: size.height * 0.02),
          ],
        ),
      ),

      // },
      //),
    );
  }

  // Define the showAppleStyleDialog function

  showOtpDialog(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    showCupertinoDialog(
      barrierDismissible: true, // Set barrierDismissible to true
      context: context,
      builder: (BuildContext context) {
        return ReusableCustomDialog(
          titleText: 'Otp Resend',
          contentText: 'OTP Sent Successfully to Mobile No\n   XXXXXXX0654',
          cancelText: 'Cancel',
          submitText: 'OK',
          onCancelPressed: () {
            Get.back();
          },
          onSubmitPressed: () {
            Get.back();
          },
        );
      },
    );
  }
}
