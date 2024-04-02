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
import 'package:suvidha_app_ui/screens/bill_and_payment_service/biling_2.dart';

//import '../../constants/reusable_appbar/reusable_appbar.dart';

class BillingPage1 extends StatelessWidget {
  BillingPage1({Key? key}) : super(key: key);
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
        title: 'Billing',

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
                    //'https://images.unsplash.com/photo-1654512270536-d8244a23e878?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDd8fHxlbnwwfHx8fHw%3D'
                    'https://images.unsplash.com/photo-1672545556384-369582b1b7f5?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D'
                    //  'https://images.unsplash.com/photo-1634148677018-5b6593666884?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDR8fHxlbnwwfHx8fHw%3D'
                    //'https://images.unsplash.com/photo-1696971275047-5d62468bcfb4?q=80&w=2235&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                    //
                    ),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                      SizedBox(height: 30),
                      HorizontalCircularButton(
                        height: size.height * 0.04,
                        width: size.width * 0.3,
                        text: "Get Bill",
                        onPressed: () {
                          Get.to(BillingPage2());
                          // if (_formKey.currentState!.validate()) {
                          //   // If all fields are valid, toggle selection and navigate
                          //   selectionController.toggleSelection(0);
                          //   //Get.to(UploadReport1());
                          // }
                        },
                        //isSelected: selectionController.selectedIndices.contains(0),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.03),
                          child: Text(
                            'HELP',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.040,
                              color: AppColors.textmaroon,
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
              height: size.height * 0.0001,
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
