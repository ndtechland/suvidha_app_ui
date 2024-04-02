import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/buttons/horizontal_button_green.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/dailloge_box_reusable/reusable_dailoge_box.dart';
import 'package:suvidha_app_ui/constants/reusable_appbar/reusable_appbar.dart';
import 'package:suvidha_app_ui/controllers/application_detail_controller.dart';

//import '../../constants/reusable_appbar/reusable_appbar.dart';

class Go_Green_1 extends StatelessWidget {
  Go_Green_1({Key? key}) : super(key: key);
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
      backgroundColor: AppColors.g33,
      appBar: myAppBar(
        //backgroundColor: AppColors.white,
        title: 'Go Green 1',

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
                        'GO Green',
                        style: GoogleFonts.poppins(
                          fontSize: size.width * 0.062,
                          fontWeight: FontWeight.bold,
                          color: AppColors.g1,
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
                  height: size.height * 0.30,
                  width: size.width,
                  decoration: BoxDecoration(
                    //color: AppColors.a20,
                    gradient: AppColors.gradient4,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      height: size.height * 0.08,
                      width: size.width,
                      decoration: BoxDecoration(
                        gradient: AppColors.gradient21,
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
                                  color: AppColors.g1,
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
                                '* The initiative is taken by Bihar State Power Holding\n   Company Limited to save Trees, environment',
                                style: GoogleFonts.poppins(
                                  fontSize: size.width * 0.027,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.g1,
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
                                '* Under this scheme:',
                                // 'Consumer is required to first settle all dues pending on him/\n   her before disconnection',
                                style: GoogleFonts.poppins(
                                  fontSize: size.width * 0.027,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.g1,
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
                                '* Bill will be provided to consumer on his/her Mobile No, \n   Email Id Registered with us.',
                                //'Consumer will be contacted by our team for the follow up \n   process after applying for disconnection from here',
                                style: GoogleFonts.poppins(
                                  fontSize: size.width * 0.027,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.g1,
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
                                '* After opting for Go Green Service, No PAPER BILL will be \n   served to consumer by Meter Reader when he goes for \n   billing.\n   Consumers are hence requested to register their Mobile No\n   and Email Id, If not already registered, through this mobile\n   application',
                                //'Final disconnection will happen only when all dues pending\n   from Consumer side will be settled and other conditions are\n   fulfilled as per norms of BERC.',
                                style: GoogleFonts.poppins(
                                  fontSize: size.width * 0.027,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.g1,
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
                            .g1, // Change the color of the selected checkbox
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
                          'Terms and Conditions of Go Green initiative',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: size.width * 0.033,
                            color: AppColors.g1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
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
                    fontWeight: FontWeight.w500,
                    fontSize: size.width * 0.031,
                    color: AppColors.g1,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.007,
            ),
            Directionality(
                textDirection: TextDirection.ltr,
                child: Container(
                  height: 50.0,
                  width: size.width,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: AppColors.g2,
                    //a8,
                    //t1bacgroundcolors1,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black, // Added text color
                    ),
                    cursorHeight: size.height * 0.03,
                    obscureText: false,
                    cursorColor: AppColors.black,
                    //controller: controller,
                    // validator: validator,
                    //keyboardType: keyboardType,
                    // maxLength: 10, // Limit the input to 10 digits

                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.account_box,
                        color: Colors.black,
                      ), // Use prefixIcon if provided
                      // Used ?? operator for null check
                      hintText: 'Enter ConId/CA No',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: AppColors.greyColor, // Added hint text color
                      ),
                      contentPadding: const EdgeInsets.only(top: 13.0),
                    ),
                  ),
                )),
            SizedBox(
              height: size.height * 0.005,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: Text(
                  'CA NUMBER /CONSUMER ID HELP.',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: size.width * 0.030,
                    color: AppColors.g1,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.007,
            ),
            SizedBox(height: 30),
            HorizontalgreenButton(
              height: size.height * 0.05,
              width: size.width * 0.7,
              text: "Fetch Consumer Detail",
              onPressed: () {
                ///Get.to(ApplySolarRoofNetMaterial2());
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
