import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/buttons/circular_horizontal_buttom.dart';
import 'package:suvidha_app_ui/constants/buttons/horizontal_button_green.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/reusable_appbar/reusable_appbar.dart';
import 'package:suvidha_app_ui/controllers/application_detail_controller.dart';
import 'package:suvidha_app_ui/screens/bill_and_payment_service/billing_3.dart';

//import '../../constants/reusable_appbar/reusable_appbar.dart';

class BillingPage2 extends StatelessWidget {
  BillingPage2({Key? key}) : super(key: key);
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
        title: 'Bill Summary',

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
                    'https://images.unsplash.com/photo-1508514023703-7332e6c3f407?q=80&w=2187&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                    // 'https://images.unsplash.com/photo-1556341984-69c93f636618?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fHx8'
                    //'https://images.unsplash.com/photo-1654512270536-d8244a23e878?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDd8fHxlbnwwfHx8fHw%3D'
                    // 'https://images.unsplash.com/photo-1672545556384-369582b1b7f5?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D'
                    //  'https://images.unsplash.com/photo-1634148677018-5b6593666884?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDR8fHxlbnwwfHx8fHw%3D'
                    //'https://images.unsplash.com/photo-1696971275047-5d62468bcfb4?q=80&w=2235&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                    //
                    ),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.02, vertical: size.height * 0.01),
              child: PhysicalModel(
                color: Colors.black,
                elevation: 2,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  //height: size.height * 0.12,
                  width: size.width,
                  decoration: BoxDecoration(
                    // color: AppColors.white,
                    gradient: AppColors.gradient11,
                    borderRadius: BorderRadius.circular(10),
                    //gradient: AppColors.gradient19,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.0,
                                vertical: size.height * 0.00),
                            child: Text(
                              'Bill Summary',
                              style: GoogleFonts.poppins(
                                fontSize: size.width * 0.040,
                                fontWeight: FontWeight.bold,
                                color: AppColors.a12,
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
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.0,
                                vertical: size.height * 0.00),
                            child: Text(
                              'SAMBHU SAHANI',
                              style: GoogleFonts.poppins(
                                fontSize: size.width * 0.037,
                                fontWeight: FontWeight.w600,
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
                          height: size.height * 0.006,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.0,
                                vertical: size.height * 0.00),
                            child: Text(
                              'CONSUMER ID: 1234566667677',
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
                          height: size.height * 0.006,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.0,
                                vertical: size.height * 0.00),
                            child: Text(
                              'Billing Details',
                              style: GoogleFonts.poppins(
                                fontSize: size.width * 0.032,
                                fontWeight: FontWeight.w600,
                                color: AppColors.a12,
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
                          height: size.height * 0.006,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.0,
                                vertical: size.height * 0.00),
                            child: Text(
                              'Bill Month:Nov-22',
                              style: GoogleFonts.poppins(
                                fontSize: size.width * 0.03,
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
                          height: size.height * 0.006,
                        ),
                        SizedBox(
                          height: size.height * 0.006,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.0,
                                vertical: size.height * 0.00),
                            child: Text(
                              'Due Date: 07-Dec-2022',
                              style: GoogleFonts.poppins(
                                fontSize: size.width * 0.03,
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
                          height: size.height * 0.02,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.0,
                                vertical: size.height * 0.00),
                            child: Text(
                              'Payable Amount: Rs 11191',
                              style: GoogleFonts.poppins(
                                fontSize: size.width * 0.030,
                                fontWeight: FontWeight.w600,
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
                          height: size.height * 0.006,
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            HorizontalCircularButton(
                              height: size.height * 0.04,
                              width: size.width * 0.4,
                              text: "DOWNLOAD BILL",
                              onPressed: () {
                                // Get.to(ApplySolarRoofNetMaterial2());
                                // if (_formKey.currentState!.validate()) {
                                //   // If all fields are valid, toggle selection and navigate
                                //   selectionController.toggleSelection(0);
                                //   //Get.to(UploadReport1());
                                // }
                              },
                              //isSelected: selectionController.selectedIndices.contains(0),
                            ),
                            HorizontalgreenButton(
                              height: size.height * 0.04,
                              width: size.width * 0.4,
                              text: "Pay Bill",
                              onPressed: () {
                                Get.to(BillingPage3());
                                // if (_formKey.currentState!.validate()) {
                                //   // If all fields are valid, toggle selection and navigate
                                //   selectionController.toggleSelection(0);
                                //   //Get.to(UploadReport1());
                                // }
                              },
                              //isSelected: selectionController.selectedIndices.contains(0),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.006,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.05),
                            child: Text(
                              'See Your downloaded bill "Suvidha" folder in internal Storage of your mobile',
                              style: GoogleFonts.poppins(
                                fontSize: size.width * 0.027,
                                fontWeight: FontWeight.w500,
                                color: AppColors.containercolor18,
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
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.026,
            ),
          ],
        ),
      ),

      // },
      //),
    );
  }
}
