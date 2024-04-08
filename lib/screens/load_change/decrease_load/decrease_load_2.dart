//DecreaseLoad2
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

class DecreaseLoad2 extends StatelessWidget {
  DecreaseLoad2({Key? key}) : super(key: key);
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
        title: 'Decrease Load - लोड घटायें',
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
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(''
                    //
                    ///'https://images.unsplash.com/photo-1609780252796-ff1937cbeb92?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEyfHx8ZW58MHx8fHx8'
                    //'https://images.unsplash.com/photo-1628021778961-74ba4acdc8c6?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDl8fHxlbnwwfHx8fHw%3D'
                    //'https://images.unsplash.com/photo-1610056494085-05e9fb6673ee?q=80&w=2187&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                    ////'https://images.unsplash.com/photo-1551715909-80e5b0ded6a0?q=80&w=2235&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                    //'https://images.unsplash.com/photo-1553119179-1992c69de2de?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEyfHx8ZW58MHx8fHx8'

                    //'https://images.unsplash.com/photo-1579970474466-22301c101d27?q=80&w=2187&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                    //'https://images.unsplash.com/photo-1492011221367-f47e3ccd77a0?q=80&w=2187&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                    //'https://plus.unsplash.com/premium_photo-1679917152960-b9e43c2141f1?q=80&w=3027&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                    /// 'https://images.unsplash.com/photo-1517358133568-31ec5656304e?q=80&w=2187&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                    //
                    ),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
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
                    height: size.height * 0.26,
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: size.height * 0.0,
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
                                        'Consumer ID:',
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
                                        '102167392',
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
                              height: size.height * 0.0,
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
                                        'Er. Kavi Singh',
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
                                        'Enter Load:',
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
                                        '2.0000000 KV',
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
                                        'No Of Phase:',
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
                                        '1 Phase',
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
                                        'Load Type:',
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
                                        'DS-IID',
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
                            // Row(
                            //   children: [
                            //     SizedBox(
                            //       width: size.width * 0.44,
                            //       height: size.height * 0.05,
                            //       child: Align(
                            //         alignment: Alignment.centerLeft,
                            //         child: Padding(
                            //           padding: EdgeInsets.symmetric(
                            //               horizontal: size.width * 0.03),
                            //           child: Text(
                            //             'Last Recharge:',
                            //             style: GoogleFonts.poppins(
                            //                 fontWeight: FontWeight.w600,
                            //                 fontSize: size.width * 0.035,
                            //                 color: Colors.white),
                            //           ),
                            //         ),
                            //       ),
                            //     ),
                            //     SizedBox(
                            //       width: size.width * 0.44,
                            //       height: size.height * 0.05,
                            //       child: Column(
                            //         children: [
                            //           Align(
                            //             alignment: Alignment.centerLeft,
                            //             child: Padding(
                            //               padding: EdgeInsets.symmetric(
                            //                   horizontal: size.width * 0.03),
                            //               child: Text(
                            //                 'Rs.10000',
                            //                 style: GoogleFonts.poppins(
                            //                     fontWeight: FontWeight.w600,
                            //                     fontSize: size.width * 0.035,
                            //                     color: AppColors.a11),
                            //               ),
                            //             ),
                            //           ),
                            //           Align(
                            //             alignment: Alignment.centerLeft,
                            //             child: Padding(
                            //               padding: EdgeInsets.symmetric(
                            //                   horizontal: size.width * 0.03),
                            //               child: Text(
                            //                 '29/12/2023 09:00:47',
                            //                 style: GoogleFonts.poppins(
                            //                     fontWeight: FontWeight.w600,
                            //                     fontSize: size.width * 0.025,
                            //                     color: AppColors.a11),
                            //               ),
                            //             ),
                            //           ),
                            //         ],
                            //       ),
                            //     ),
                            //   ],
                            // ),
                            // SizedBox(
                            //   height: size.height * 0.0,
                            // ),
                            // Row(
                            //   children: [
                            //     SizedBox(
                            //       width: size.width * 0.44,
                            //       height: size.height * 0.05,
                            //       child: Align(
                            //         alignment: Alignment.centerLeft,
                            //         child: Padding(
                            //           padding: EdgeInsets.symmetric(
                            //               horizontal: size.width * 0.03),
                            //           child: Text(
                            //             'Balance:',
                            //             style: GoogleFonts.poppins(
                            //                 fontWeight: FontWeight.w600,
                            //                 fontSize: size.width * 0.035,
                            //                 color: Colors.white),
                            //           ),
                            //         ),
                            //       ),
                            //     ),
                            //     SizedBox(
                            //       width: size.width * 0.44,
                            //       height: size.height * 0.05,
                            //       child: Column(
                            //         children: [
                            //           Align(
                            //             alignment: Alignment.centerLeft,
                            //             child: Padding(
                            //               padding: EdgeInsets.symmetric(
                            //                   horizontal: size.width * 0.03),
                            //               child: Text(
                            //                 'Rs.1065.26',
                            //                 style: GoogleFonts.poppins(
                            //                     fontWeight: FontWeight.w600,
                            //                     fontSize: size.width * 0.035,
                            //                     color: AppColors.a11),
                            //               ),
                            //             ),
                            //           ),
                            //           Align(
                            //             alignment: Alignment.centerLeft,
                            //             child: Padding(
                            //               padding: EdgeInsets.symmetric(
                            //                   horizontal: size.width * 0.03),
                            //               child: Text(
                            //                 '28/12/2023 09:00:47',
                            //                 style: GoogleFonts.poppins(
                            //                     fontWeight: FontWeight.w600,
                            //                     fontSize: size.width * 0.025,
                            //                     color: AppColors.a11),
                            //               ),
                            //             ),
                            //           ),
                            //         ],
                            //       ),
                            //     ),
                            //   ],
                            // ),
                            SizedBox(
                              height: size.height * 0.00,
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: PhysicalModel(
                  color: Colors.black,
                  elevation: 5,
                  child: Container(
                    height: size.height * 0.14,
                    width: size.width,
                    decoration: BoxDecoration(
                      //color: AppColors.a20,
                      gradient: AppColors.gradient19,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        height: size.height * 0.08,
                        width: size.width,
                        decoration: BoxDecoration(
                          gradient: AppColors.gradient19,
                        ),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // SizedBox(
                            //   height: size.height * 0.007,
                            // ),
                            // Align(
                            //   alignment: Alignment.center,
                            //   child: Padding(
                            //     padding: EdgeInsets.symmetric(
                            //         horizontal: size.width * 0.03),
                            //     child: Text(
                            //       'OTP Verification for Increase Load',
                            //       style: GoogleFonts.poppins(
                            //         fontWeight: FontWeight.w700,
                            //         fontSize: size.width * 0.035,
                            //         color: AppColors.a15,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            SizedBox(
                              //height: size.height * 0.05,
                              width: size.width * 0.6,
                              child: Directionality(
                                textDirection: TextDirection.ltr,
                                child: CustomTextField(
                                  obscureText: false,
                                  hintText: 'Enter OTP',
                                  keyboardType: TextInputType.text,

                                  prefixIcon: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
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
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.03),
                                child: Text(
                                  'Resend OTP (111)',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: size.width * 0.028,
                                    color: AppColors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    'Decrease Load',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w900,
                      fontSize: size.height * 0.016,
                      color: AppColors.black,
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
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    '*New Load (नया लोड)',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: size.width * 0.033,
                      color: AppColors.a15,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.005,
              ),
              SizedBox(
                //height: size.height * 0.05,
                width: size.width * 0.99,
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: CustomTextField(
                    obscureText: false,
                    hintText: 'Enter New Load',
                    keyboardType: TextInputType.text,

                    prefixIcon: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Icon(
                            Icons.gas_meter,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),

                    // Icon(
                    //   Icons.phone_android_outlined,
                    //   color: Colors.black,
                    // ),
                    suffixIcon: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: size.height * 0.02),
                      child: Text(
                        'KW',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: size.width * 0.033,
                          color: AppColors.a15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),

              //नया लोड वर्तमान लोड से अधिक होना चाहिए।
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    '* New Load must be grater than current load.',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: size.width * 0.022,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.005,
              ),
              //नया लोड वर्तमान लोड से अधिक होना चाहिए।
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    '* नया लोड वर्तमान लोड से अधिक होना चाहिए।',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: size.width * 0.022,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.005,
              ),

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
                  child: Text(
                    'Do you want to change Phase? (क्या आप Phase बदलना चाहते हैं?)',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: size.width * 0.027,
                      color: AppColors.a15,
                    ),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Obx(
                      () => RadioListTile(
                        title: Text('Yes - हाँ'),
                        value: 0,
                        groupValue:
                            selectionController.selectedValueradio.value,
                        onChanged: (value) {
                          selectionController.setSelectedValue(value!);
                        },
                      ),
                    ),
                  ),
                  SizedBox(width: 0), // Adjust the gap as needed

                  Flexible(
                    child: Obx(
                      () => RadioListTile(
                        title: Text('No - नहीं'),
                        value: 1,
                        groupValue:
                            selectionController.selectedValueradio.value,
                        onChanged: (value) {
                          selectionController.setSelectedValue(value!);
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: PhysicalModel(
                  color: Colors.black,
                  elevation: 5,
                  child: Container(
                    height: size.height * 0.2,
                    width: size.width,
                    decoration: BoxDecoration(
                      //color: AppColors.a20,
                      gradient: AppColors.gradient11,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        height: size.height * 0.08,
                        width: size.width,
                        decoration: BoxDecoration(
                          gradient: AppColors.gradient11,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: size.height * 0.0,
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.03),
                                child: Text(
                                  'Help - सहायता',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w800,
                                    fontSize: size.width * 0.035,
                                    color: AppColors.containercolor1,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.013,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.03),
                                  child: Text(
                                    'Phase:',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: size.width * 0.035,
                                        color: AppColors.a1),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.03),
                                  child: Text(
                                    'Load Range:                     ',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: size.width * 0.035,
                                        color: AppColors.a1),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.03,
                                  vertical: size.height * 0.01),
                              child: Divider(
                                color: Colors.black,
                                height: 1,
                                thickness: 1,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: size.width * 0.44,
                                  height: size.height * 0.03,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.03),
                                      child: Text(
                                        '      1',
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
                                        '1.000 - 7.000',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            fontSize: size.width * 0.035,
                                            color: AppColors.a1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
                                        '      3',
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
                                        '5.000 - 7.000',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            fontSize: size.width * 0.035,
                                            color: AppColors.a1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),

              //नया लोड वर्तमान लोड से अधिक होना चाहिए।
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    '* Press Validate for Load/Phase Change',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: size.width * 0.022,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.005,
              ),
              //नया लोड वर्तमान लोड से अधिक होना चाहिए।
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    '* लोड/फेज परिवर्तन के लिए वैलिडेट बटन दबाएँ।',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: size.width * 0.022,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.005,
              ),
              //नया लोड वर्तमान लोड से अधिक होना चाहिए।
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    '* On Successful validation, Submit Button will be appear at button',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: size.width * 0.022,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.005,
              ),

              //नया लोड वर्तमान लोड से अधिक होना चाहिए।
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    '* सफल सत्यापन पर, सबमिट बटन बटन पर दिखाई देगा।',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: size.width * 0.022,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: HorizontalCircularButton(
                  height: size.height * 0.04,
                  width: size.width * 0.3,
                  text: 'Validate*',
                  borderRadius: 10,
                  onPressed: () {
                    //showOtpDialog2(context);
                  },
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
            ],
          ),
        ),
      ),

      // },
      //),
    );
  }

  showOtpDialog(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    showCupertinoDialog(
      barrierDismissible: true, // Set barrierDismissible to true
      context: context,
      builder: (BuildContext context) {
        return ReusableCustomDialog(
          contentColor: AppColors.black,
          titleColor: Colors.white,
          titleFontSize:
              size.height * 0.015, // Use provided or default font size

          additionalTextColor1: Colors.green,
          //additionalTextColor2: Colors.red,
          titleText: 'Confirm Service-सेवा की पुष्टि करें',
          //contentText
          contentText: '\nSelected Service - चयनित सेवा',
          additionalText1: "Increase Load"
              "\nलोड बढ़ाएँ",
          cancelText: 'Cancel- रद्द करें',
          submitText: 'Proceed-आगे बढ़ें',
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

  showOtpDialog2(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    showCupertinoDialog(
      barrierDismissible: true, // Set barrierDismissible to true
      context: context,
      builder: (BuildContext context) {
        return ReusableCustomDialog(
          contentColor: AppColors.black,
          titleColor: Colors.white,
          titleFontSize:
              size.height * 0.015, // Use provided or default font size

          additionalTextColor1: Colors.red,
          //additionalTextColor2: Colors.red,
          titleText: 'Confirm Service-सेवा की पुष्टि करें',
          //contentText
          contentText: '\nSelected Service - चयनित सेवा',
          additionalText1: "Decrease Load"
              "\nलोड घटायें",
          cancelText: 'Cancel- रद्द करें',
          submitText: 'Proceed-आगे बढ़ें',
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
