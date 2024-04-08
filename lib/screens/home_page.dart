import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/reusable_3Dtext/3d_textreusable.dart';
import 'package:suvidha_app_ui/constants/reusable_webview/webview_reusable.dart';
import 'package:suvidha_app_ui/screens/apply_disconnection/apply_disconnection1.dart';
import 'package:suvidha_app_ui/screens/apply_solar_roof_net_material/apply_solar_roof_net_1.dart';
import 'package:suvidha_app_ui/screens/bill_and_payment_service/billingdashbord.dart';
import 'package:suvidha_app_ui/screens/bill_sgenerated_self_servicess/bill_generated_self_service.dart';
import 'package:suvidha_app_ui/screens/go_green_pages/go_green_1.dart';
import 'package:suvidha_app_ui/screens/language_views/language_screenss.dart';
import 'package:suvidha_app_ui/screens/load_change/load_change_screen_1.dart';
import 'package:suvidha_app_ui/screens/new_connections/new_connections1.dart';
import 'package:suvidha_app_ui/screens/smart_meter_service/smart_meter_services_1.dart';
import 'package:url_launcher/url_launcher.dart';

List<Color> colorList = [
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.orange,
];
List<String> Services1 = [
  'Bill On Miss Call',
  'Customer Care 1912',
  'Report Electricity Theft',
  'Consumer Grievance',
];

List<String> Services2 = [
  'Bill Generated\n   Self Service',
  'Bill & Payment\n        Service',
  'Smart Meter\n      Services',
];
List<String> Services3 = [
  'Apply New Connection\n         for Solar Rooftop',
  'Apply For Solar Rooftop \n              NetMatering',
];
List<String> Services4 = [
  'Update Email & Mobile',
  'Address Correction',
  'Load Change',
  'Apply Disconnection',
  'Go Green/E-Bill',
  'Refund Security\n      Deposite',
];

List<IconData> iconList1 = [
  Icons.phone_missed,
  Icons.support_agent,
  Icons.whatsapp,
  Icons.report_problem,
  // Icons.settings,
];

List<IconData> iconList2 = [
  Icons.electrical_services,
  Icons.document_scanner,
  Icons.electric_meter_sharp,
  // Icons.settings,
];

List<IconData> iconList3 = [
  Icons.solar_power,
  Icons.sunny,
  //Icons.electric_meter_sharp,
  // Icons.settings,
];

List<IconData> iconList4 = [
  Icons.contact_phone_rounded,
  Icons.pin_drop,
  Icons.electric_bolt,
  Icons.cancel_presentation_rounded,
  Icons.grass_outlined,
  Icons.currency_rupee,
  //Icons.electric_meter_sharp,
  // Icons.settings,
];

List<String> imageList = [
  'https://images.unsplash.com/photo-1558449028-b53a39d100fc?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDJ8fHxlbnwwfHx8fHw%3D',
  'https://plus.unsplash.com/premium_photo-1661898205432-d648667b9c76?q=80&w=2231&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  //'https://images.unsplash.com/photo-1517925035435-7976539b920d?q=80&w=2352&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  //'https://images.unsplash.com/photo-1558449028-b53a39d100fc?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDJ8fHxlbnwwfHx8fHw%3D',
  'https://images.unsplash.com/photo-1468787737698-f5c03f0570dd?q=80&w=2230&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  //'https://images.unsplash.com/photo-1558449028-b53a39d100fc?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDJ8fHxlbnwwfHx8fHw%3D',
  'https://images.unsplash.com/photo-1571524522669-99d0c9e7264d?q=80&w=2231&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  //'https://images.unsplash.com/photo-1558449028-b53a39d100fc?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDJ8fHxlbnwwfHx8fHw%3D',
  'https://images.unsplash.com/photo-1473341304170-971dccb5ac1e?q=80&w=2340&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  // 'https://images.unsplash.com/photo-1558449028-b53a39d100fc?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDJ8fHxlbnwwfHx8fHw%3D',
];

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  String micccallnumber = "7666008833";

  String customercare = "1912";

  final Uri _url = Uri.parse(
      'http://hargharbijli.bsphcl.co.in/Grievanceportal/default.aspx');

  //http://hargharbijli.bsphcl.co.in/Grievanceportal/default.aspx
  ///whats app launcher for mobile..

  _launchWhatsApp() async {
    var whatsapp = "+917033355555";
    var message = "Hi SUVIDHA";

    if (Platform.isIOS) {
      var whatsappIOS =
          "whatsapp://wa.me/$whatsapp/?text=${Uri.encodeComponent(message)}";
      if (await canLaunch(whatsappIOS)) {
        await launch(whatsappIOS);
      } else {
        Get.snackbar(
          "WhatsApp not installed",
          "Please install WhatsApp",
          colorText: Colors.red.shade400,
          backgroundColor: Colors.white10,
          icon: Icon(Icons.person, color: Colors.red),
          snackPosition: SnackPosition.TOP,
        );
      }
    } else if (Platform.isAndroid) {
      var whatsappAndroid =
          "whatsapp://send?phone=$whatsapp&text=${Uri.encodeComponent(message)}";
      if (await canLaunch(whatsappAndroid)) {
        await launch(whatsappAndroid);
      } else {
        Get.snackbar(
          "WhatsApp not installed",
          "Please install WhatsApp",
          colorText: Colors.red.shade400,
          backgroundColor: Colors.white10,
          icon: Icon(Icons.person, color: Colors.red),
          snackPosition: SnackPosition.TOP,
        );
      }
    } else {
      // Platform not recognized
      Get.snackbar(
        "WhatsApp not supported on this platform",
        "WhatsApp is not supported on this platform",
        colorText: Colors.red.shade400,
        backgroundColor: Colors.white10,
        icon: Icon(Icons.person, color: Colors.red),
        snackPosition: SnackPosition.TOP,
      );
    }
  }

  ///url launcher for web...

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.white,

        //AppColors.a15,
        // centerTitle: true,
        // leading: Material(
        //   elevation: 0,
        //   // color: Colors.black12,
        //   //shadowColor: Colors.grey.shade100,
        //   borderRadius: BorderRadius.circular(100),
        //   child: Container(
        //     height: size.height * 0.04,
        //     width: size.width * 0.08,
        //     decoration: BoxDecoration(
        //         //shape: BoxShape.circle,
        //         color: AppColors.a15,
        //         image: DecorationImage(
        //             image: AssetImage('lib/assets/video/contact.gif'
        //                 //'lib/assets/video/right-arrow.gif'
        //                 ),
        //             fit: BoxFit.fitWidth)),
        //     // child: Image.asset('lib/assets/images/right-arrow.gif')
        //   ),
        // ),
        ///
        // Icon(
        //   Icons.support_agent,
        //   color: Colors.white,
        //   size: size.width * 0.09,
        // ),
        title: Padding(
          padding: EdgeInsets.only(right: size.width * 0.28),
          child: ThreeDtext(
            text: 'SUVIDHA',
            fontColor: AppColors.textmaroon505,
            fontSize: size.height * 0.034,
            fontWeight: FontWeight.w700,
            color: AppColors.black,
            letterSpacing: 1,
            shadowColor: AppColors.white,
            shadowBlurRadius: 3.0,
          ),
        )
        // Container(
        //   height: size.height * 0.05,
        //   width: size.width * 0.2,
        //   decoration: BoxDecoration(
        //       image: DecorationImage(
        //           image: AssetImage('lib/assets/video/suvidha33logo.jpeg'))),
        // ),
        ,
        actions: [
          // Icon(
          //   Icons.support_agent,
          //   color: Colors.white,
          //   size: size.width * 0.09,
          // ),
          // SizedBox(
          //   width: size.width * 0.04,
          // ),
          InkWell(
            onTap: () {
              Get.to(() => LanguagePagess());
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: size.height * 0.017,
              ),
              child: Container(
                  height: size.height * 0.04,
                  width: size.width * 0.22,
                  decoration: BoxDecoration(
                      //shape: BoxShape.circle,
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColors.textmaroon505)

                      //image:
                      // DecorationImage(
                      //     image: AssetImage('lib/assets/video/language23.gif'
                      //         //'lib/assets/video/right-arrow.gif'
                      //         ),
                      //     fit: BoxFit.fill)
                      ),
                  child: ThreeDtext(
                    text: 'English'.tr,
                    fontColor: AppColors.textmaroon505,
                    fontSize: size.width * 0.04,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                    shadowColor: AppColors.white,
                    shadowBlurRadius: 2,
                  )
                  // child: Image.asset('lib/assets/images/right-arrow.gif')
                  ),
            ),
            // Lottie.network(
            //   //https://lottie.host/b14c01a1-d38b-403e-ad43-c02da3404a19/QaZZTqLEwp.lottie
            //   'https://lottie.host/2adb7b33-4d1c-4977-ae68-9f148d2a036e/dts6uVWOCe.json',
            //   //'https://lottie.host/2adb7b33-4d1c-4977-ae68-9f148d2a036e/dts6uVWOCe.json',
            //   //'https://app.lottiefiles.com/animation/2fbfe658-4d63-4348-8cbf-254f00a89a29?panel=download',
            //   //'https://assets1.lottiefiles.com/private_files/lf30_QLsD8M.json',
            //   height: 400.0,
            //   repeat: true,
            //   reverse: true,
            //   animate: true,
            // ),
            ///
            // Icon(
            //   Icons.translate,
            //   color: Colors.white,
            //   size: size.width * 0.08,
            // ),
          ),
          SizedBox(
            width: size.width * 0.04,
          ),
        ],
        //Text("Suvidha"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: size.height * 0.19,
                width: size.width,
                decoration: BoxDecoration(
                  color: AppColors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    height: size.height * 0.15,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: size.height * 0.10,
                        decoration: BoxDecoration(
                          color: AppColors.textmaroon505,
                          //a13,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Mycrusial(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.02,
              ),
              //Spacer(),

              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: Services1.length, // Number of items in the grid
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, // Number of columns
                    crossAxisSpacing: 5, // Spacing between columns
                    mainAxisSpacing: 4,
                    mainAxisExtent: size.height * 0.14 // Spacing between rows
                    ),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () async {
                          //Get.to(() => IndustryHighTension());

                          if (index == 0) {
                            await FlutterPhoneDirectCaller.callNumber(
                                micccallnumber);
                            // makePhoneCall(
                            //     "123"); // Replace with the desired phone number

                            //Get.to(SelectPahseLineRange());

                            ///Get.to(() => FranchisesProfilePage());
                          } else if (index == 1) {
                            await FlutterPhoneDirectCaller.callNumber(
                                customercare);
                            //Get.to(() => IndustryHighTension());
                          } else if (index == 2) {
                            _launchWhatsApp();
                            //Get.to(() => IndustryHighTension());

                          } else if (index == 3) {
                            //_launchUrl();

                            Get.to(WebViewwebsitess(url: "$_url"));

                            //Get.to(() => IndustryHighTension());

                          }
                        },
                        child: Container(
                          height: size.height * 0.07,
                          width: size.width * 0.14,
                          decoration: BoxDecoration(
                              color: AppColors.textmaroon505,
                              shape: BoxShape.circle
                              //borderRadius: BorderRadius.circular(20),
                              ),
                          child: Center(
                            child: Icon(
                              iconList1[index],
                              size: size.height * 0.04,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.005,
                      ),
                      SizedBox(
                        height: size.height * 0.05,
                        width: size.width * 0.145,
                        child: Center(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "${Services1[index]}".tr,
                              style: GoogleFonts.poppins(
                                fontSize: size.height * 0.012,
                                fontWeight: FontWeight.w700,
                                color: AppColors.textmaroon505,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
              InkWell(
                onTap: () {
                  Get.to(NewConnectionPage1());
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
                  child: Container(
                    height: size.height * 0.054,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Container(
                        height: size.height * 0.054,
                        width: size.width,
                        decoration: BoxDecoration(
                          color: AppColors.a19,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Text(
                                'New Connection Services'.tr,
                                style: GoogleFonts.poppins(
                                  fontSize: size.width * 0.04,
                                  letterSpacing: 0.5,
                                  color: AppColors.a15,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            // Padding(
                            //   padding: EdgeInsets.symmetric(
                            //       horizontal: size.width * 0.01),
                            //   child: Material(
                            //     elevation: 2,
                            //     // color: Colors.black12,
                            //     //shadowColor: Colors.grey.shade100,
                            //     borderRadius: BorderRadius.circular(100),
                            //     child: Container(
                            //       height: size.height * 0.04,
                            //       width: size.width * 0.08,
                            //       decoration: BoxDecoration(
                            //           shape: BoxShape.circle,
                            //           image: DecorationImage(
                            //               image: AssetImage(
                            //                   //'lib/assets/video/contact.gif'
                            //                   'lib/assets/video/right-arrow.gif'),
                            //               fit: BoxFit.fitWidth)),
                            //       // child: Image.asset('lib/assets/images/right-arrow.gif')
                            //     ),
                            //   ),
                            //   // Text(
                            //   //   'My Connection'.tr,
                            //   //   style: GoogleFonts.poppins(
                            //   //       fontSize: size.height * 0.015,
                            //   //       fontWeight: FontWeight.w600,
                            //   //       color: AppColors.a15),
                            //   // ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.0,
              ),

              SizedBox(
                height: size.height * 0.01,
              ),
              Container(
                height: size.height * 0.04,
                width: size.width,
                color: AppColors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Services for existing Consumers'.tr,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: size.width * 0.033,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Billing & Payment Services'.tr,
                    style: GoogleFonts.poppins(
                        fontSize: size.height * 0.014,
                        color: AppColors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Container(
                height: size.height * 0.14,
                width: size.width,
                color: AppColors.newgray,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: Services2.length, // Number of items in the grid
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // Number of columns
                      crossAxisSpacing: 5, // Spacing between columns
                      mainAxisSpacing: 2,
                      mainAxisExtent: size.height * 0.16 // Spacing between rows
// Spacing between rows
                      ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: size.height * 0.0,
                          ),
                          InkWell(
                            onTap: () async {
                              //Get.to(() => IndustryHighTension());

                              if (index == 0) {
                                Get.to(BillGeneratedSelfServicePage());
                                //makePhoneCall(
                                //  '1234567890'); // Replace with the desired phone number

                                //Get.to(SelectPahseLineRange());

                              } else if (index == 1) {
                                Get.to(() => BillingDashbord());
                              } else if (index == 2) {
                                Get.to(() => SmartMeterService1());

                                //Get.to(() => IndustryHighTension());

                              } else if (index == 3) {}
                            },
                            child: Container(
                              height: size.height * 0.07,
                              width: size.width * 0.14,
                              decoration: BoxDecoration(
                                color: AppColors.newbrown,
                                // gradient: AppColors.gradient2,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: PhysicalModel(
                                  elevation: 10,
                                  color: AppColors.a15,
                                  shadowColor: AppColors.a15,
                                  shape: BoxShape.circle,
                                  child: Container(
                                    height: size.height * 0.06,
                                    width: size.width * 0.13,
                                    decoration: BoxDecoration(
                                        // color: AppColors.a16,
                                        gradient: AppColors.gradient11,
                                        shape: BoxShape.circle
                                        // borderRadius: BorderRadius.circular(20),
                                        ),
                                    child: Center(
                                      child: Icon(
                                        iconList2[index],
                                        size: size.height * 0.04,
                                        color: Colors.grey.shade100,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.00,
                          ),
                          SizedBox(
                            height: size.height * 0.052,
                            width: size.width * 0.24,
                            child: Center(
                              child: Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: size.height * 0.01),
                                  child: Text(
                                    "${Services2[index]}".tr,
                                    style: GoogleFonts.poppins(
                                      fontSize: size.height * 0.012,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.005,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              // Divider(
              //   color: AppColors.a19,
              //   thickness: 10,
              // ),
              SizedBox(
                height: size.height * 0.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.02,
                    vertical: size.height * 0.013),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Solar Rooftop Services'.tr,
                    style: GoogleFonts.poppins(
                        fontSize: size.height * 0.014,
                        color: AppColors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.0,
              ),
              Container(
                height: size.height * 0.14,
                width: size.width,
                color: AppColors.ContainerUnSelectedColor,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: Services3.length, // Number of items in the grid
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns
                      crossAxisSpacing: 5, // Spacing between columns
                      mainAxisSpacing: 2,
                      mainAxisExtent: size.height * 0.14 // Spacing between rows
// Spacing between rows
                      ),
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: size.height * 0.012,
                        ),
                        InkWell(
                          onTap: () async {
                            //Get.to(() => IndustryHighTension());

                            if (index == 0) {
                              ///await FlutterPhoneDirectCaller.callNumber(
                              /// micccallnumber);
                              // makePhoneCall(
                              //     "123"); // Replace with the desired phone number

                              //Get.to(SelectPahseLineRange());

                              ///Get.to(() => FranchisesProfilePage());
                            } else if (index == 1) {
                              // await FlutterPhoneDirectCaller.callNumber(
                              //     customercare);
                              Get.to(() => ApplySolarRoofNetMaterial1());
                            }
                          },
                          child: Container(
                            height: size.height * 0.06,
                            width: size.width * 0.14,
                            decoration: BoxDecoration(
                              color: AppColors.a15,
                              // gradient: AppColors.gradient2,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: PhysicalModel(
                                elevation: 10,
                                color: AppColors.a1,
                                shadowColor: AppColors.a1,
                                shape: BoxShape.circle,
                                child: Container(
                                  height: size.height * 0.06,
                                  width: size.width * 0.13,
                                  decoration: BoxDecoration(
                                      // color: AppColors.a16,
                                      gradient: AppColors.gradient9,
                                      shape: BoxShape.circle
                                      // borderRadius: BorderRadius.circular(20),
                                      ),
                                  child: Center(
                                    child: Icon(
                                      iconList3[index],
                                      size: size.height * 0.04,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Container(
                          //   height: size.height * 0.07,
                          //   width: size.width * 0.15,
                          //   decoration: BoxDecoration(
                          //     color: AppColors.golden,
                          //     borderRadius: BorderRadius.circular(20),
                          //   ),
                          //   child: Center(
                          //     child: Icon(
                          //       iconList3[index],
                          //       size: size.height * 0.04,
                          //       color: Colors.grey.shade700,
                          //     ),
                          //   ),
                          // ),
                        ),
                        SizedBox(
                          height: size.height * 0.005,
                        ),
                        SizedBox(
                          height: size.height * 0.0535,
                          width: size.width * 0.34,
                          child: Center(
                            child: Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: size.height * 0.01),
                                child: Text(
                                  "${Services3[index]}".tr,
                                  style: GoogleFonts.poppins(
                                    fontSize: size.height * 0.012,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.005,
                        ),
                      ],
                    );
                  },
                ),
              ),

              SizedBox(
                height: size.height * 0.016,
              ),
              // Divider(
              //   color: AppColors.a19,
              //   thickness: 10,
              // ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Other Services'.tr,
                    style: GoogleFonts.poppins(
                        fontSize: size.height * 0.014,
                        color: AppColors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.016,
              ),
              Container(
                height: size.height * 0.30,
                width: size.width,
                color: AppColors.a20,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: Services4.length, // Number of items in the grid
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // Number of columns
                    crossAxisSpacing: 5, // Spacing between columns
                    mainAxisSpacing: 4, // Spacing between rows
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: size.height * 0.012,
                        ),
                        InkWell(
                          onTap: () async {
                            //Get.to(() => IndustryHighTension());

                            if (index == 0) {
                            } else if (index == 1) {
                              // await FlutterPhoneDirectCaller.callNumber(
                              //     customercare);
                              ///Get.to(() => LoadChangeScreen1());
                            } else if (index == 2) {
                              Get.to(() => LoadChangeScreen1());
                              // await FlutterPhoneDirectCaller.callNumber(
                              //     customercare);
                              //Get.to(() => ApplySolarRoofNetMaterial1());
                            } else if (index == 3) {
                              // await FlutterPhoneDirectCaller.callNumber(
                              //     customercare);
                              Get.to(() => ApplyDisconnection1());
                            } else if (index == 4) {
                              Get.to(() => Go_Green_1());
                              // await FlutterPhoneDirectCaller.callNumber(
                              //     customercare);
                              //Get.to(() => ApplySolarRoofNetMaterial1());
                            } else if (index == 5) {
                              // await FlutterPhoneDirectCaller.callNumber(
                              //     customercare);
                              //Get.to(() => ApplySolarRoofNetMaterial1());
                            }
                          },
                          child: Container(
                            height: size.height * 0.06,
                            width: size.width * 0.14,
                            decoration: BoxDecoration(
                              color: AppColors.a15,
                              // gradient: AppColors.gradient2,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: PhysicalModel(
                                elevation: 10,
                                color: AppColors.greyColor,
                                shadowColor: AppColors.greyColor,
                                shape: BoxShape.circle,
                                child: Container(
                                  height: size.height * 0.06,
                                  width: size.width * 0.13,
                                  decoration: BoxDecoration(
                                      // color: AppColors.a16,
                                      gradient: AppColors.gradient7,
                                      shape: BoxShape.circle
                                      // borderRadius: BorderRadius.circular(20),
                                      ),
                                  child: Center(
                                    child: Icon(
                                      iconList4[index],
                                      size: size.height * 0.04,
                                      color: Colors.white,
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
                        SizedBox(
                          height: size.height * 0.005,
                        ),
                        SizedBox(
                          height: size.height * 0.0535,
                          width: size.width * 0.34,
                          child: Center(
                            child: Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: size.height * 0.01),
                                child: Text(
                                  "${Services4[index]}".tr,
                                  style: GoogleFonts.poppins(
                                    fontSize: size.height * 0.012,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.005,
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              //Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class Mycrusial extends StatelessWidget {
  final _sliderKey = GlobalKey();
  Mycrusial({Key? key}) : super(key: key);
  //UserHomepageController _userHomepageController =
  // Get.put(UserHomepageController());

  final List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];
  final bool _isPlaying = true;

  @override
  Widget build(BuildContext context) {
    var imgpath = 'https://new.signatureresorts.in/Images/';
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Colors.redAccent,
      body:
          // Obx(
          //       () => (_userHomepageController.isLoading.value)
          //       ? Center(child: CircularProgressIndicator())
          //       : _userHomepageController.getuserbannerlist?.banner == null
          //       ? Center(
          //     child: Text('No data'),
          //   )
          //       :
          Padding(
        padding: EdgeInsets.all(0.0),
        child: Container(
          height: size.height * 0.28,
          width: size.width,
          decoration: BoxDecoration(
            color: AppColors.textmaroon505,
            //a12,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Material(
              // color: MyTheme.ThemeColors,
              borderRadius: BorderRadius.circular(10),
              elevation: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.textmaroon505,
                  //.a15,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: CarouselSlider.builder(
                  key: _sliderKey,
                  unlimitedMode: true,
                  autoSliderTransitionTime: Duration(seconds: 2),
                  slideBuilder: (index) {
                    final items = imageList;
                    // _userHomepageController
                    // .getuserbannerlist?.banner;
                    return Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Material(
                        elevation: 12,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: size.height * 38,
                          width: size.width,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: AppColors.p3,
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: Colors.white, width: 0.5),
                              image: DecorationImage(
                                  image: NetworkImage('${items?[index]}' ?? ''),
                                  fit: BoxFit.fill,
                                  onError: (error, stackTrace) {
                                    Text("No Image Found");
                                    // .log(error, stackTrace);
                                  })),
                        ),
                      ),
                    );
                  },
                  slideTransform: DefaultTransform(),
                  slideIndicator: CircularSlideIndicator(
                    indicatorBorderWidth: 1,
                    indicatorRadius: 3,
                    itemSpacing: 15,
                    currentIndicatorColor: Colors.white,
                    indicatorBackgroundColor: Colors.grey.shade800,
                    padding: EdgeInsets.only(bottom: 0),
                  ),
                  itemCount: imageList.length,
                  // _userHomepageController
                  //     .getuserbannerlist!.banner!.length,
                  enableAutoSlider: true,
                ),
              ),
            ),
          ),
        ),
      ),
      // )
    );
  }
}
