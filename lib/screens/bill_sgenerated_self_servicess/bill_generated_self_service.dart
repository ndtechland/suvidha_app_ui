import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/buttons/circular_horizontal_buttom.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/reusable_3Dtext/3d_textreusable.dart';
import 'package:suvidha_app_ui/constants/reusable_appbar/reusable_appbar.dart';
import 'package:suvidha_app_ui/constants/text_field_custon_weight/textfield_weight.dart';
import 'package:suvidha_app_ui/controllers/application_detail_controller.dart';

//import '../../constants/reusable_appbar/reusable_appbar.dart';

class BillGeneratedSelfServicePage extends StatelessWidget {
  BillGeneratedSelfServicePage({Key? key}) : super(key: key);
  final SelectionController selectionController =
      Get.put(SelectionController());
  //String micccallnumber = "7666008833";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: myAppBar(
        //backgroundColor: AppColors.white,
        title: 'Bill Generated Self Service',

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
            gradient: AppColors.gradient11,
            image: DecorationImage(
                image: NetworkImage(
                    //
                    // 'https://images.unsplash.com/photo-1508514023703-7332e6c3f407?q=80&w=2187&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                    // 'https://images.unsplash.com/photo-1556341984-69c93f636618?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fHx8'
                    'https://images.unsplash.com/photo-1654512270536-d8244a23e878?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDd8fHxlbnwwfHx8fHw%3D'
                    //'https://images.unsplash.com/photo-1672545556384-369582b1b7f5?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D'
                    //  'https://images.unsplash.com/photo-1634148677018-5b6593666884?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDR8fHxlbnwwfHx8fHw%3D'
                    //'https://images.unsplash.com/photo-1696971275047-5d62468bcfb4?q=80&w=2235&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                    //
                    ),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 8, vertical: size.height * 0.02),
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: size.height * 0.05,
                  width: size.width * 0.3,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ThreeDtext(
                    text: 'Guidelines',
                    fontWeight: FontWeight.bold,
                    fontColor: AppColors.white,
                    // color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.02, vertical: size.height * 0.0),
              child: PhysicalModel(
                color: Colors.black,
                elevation: 2,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  // height: size.height * 0.12,
                  width: size.width,
                  decoration: BoxDecoration(
                    // color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                    gradient: AppColors.gradient11,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 20),

                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.03),
                          child: Text(
                            'Generated Bill',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w800,
                              fontSize: size.width * 0.047,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                      //SizedBox(height: size.height * 0.02),

                      SizedBox(
                        height: size.height * 0.03,
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
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
                      SizedBox(height: 20),
                      HorizontalCircularButton(
                        height: size.height * 0.04,
                        width: size.width * 0.3,
                        text: "Proceed*",
                        onPressed: () {},
                        //isSelected: selectionController.selectedIndices.contains(0),
                      ),
                      SizedBox(height: 20),

                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.03),
                          child: Text(
                            '* Kindly Follow all instructions carefully before proceeding Refer "Guideline" for the same',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: size.width * 0.027,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                      //SizedBox(height: size.height * 0.02),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.02, vertical: size.height * 0.0),
              child: PhysicalModel(
                color: Colors.black,
                elevation: 2,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  // height: size.height * 0.12,
                  width: size.width,
                  decoration: BoxDecoration(
                    // color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                    gradient: AppColors.gradient11,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 20),

                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.03),
                          child: Text(
                            'Check Request Status',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w800,
                              fontSize: size.width * 0.047,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                      //SizedBox(height: size.height * 0.02),

                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Directionality(
                        textDirection: TextDirection.ltr,
                        child: CustomTextField(
                          obscureText: false,
                          hintText: 'Enter Reference Number',
                          keyboardType: TextInputType.text,

                          prefixIcon: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
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
                      SizedBox(height: 20),
                      HorizontalCircularButton(
                        height: size.height * 0.04,
                        width: size.width * 0.3,
                        text: "Get Status",
                        onPressed: () {},
                        //isSelected: selectionController.selectedIndices.contains(0),
                      ),
                      SizedBox(height: 20),

                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.03),
                          child: Text(
                            '* You will be get a reference no after successful submission of request.',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: size.width * 0.027,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.03),
                          child: Text(
                            '* Reference No is combination of Consumer Id and Date of submission of request from this app, Eg. Consumer Id: 1999999 Date of submission of Request: 01/01/2022 then Reference No: 1999999910111',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: size.width * 0.027,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),

                      //SizedBox(height: size.height * 0.02),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.015,
            ),
          ],
        ),
      ),

      // },
      //),
    );
  }
}
