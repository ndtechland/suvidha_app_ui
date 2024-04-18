import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/reusable_appbar/reusable_appbar.dart';
import 'package:suvidha_app_ui/controllers/application_detail_controller.dart';
import 'package:suvidha_app_ui/screens/bill_and_payment_service/billing_1.dart';

//import '../../constants/reusable_appbar/reusable_appbar.dart';

class BillingDashbord extends StatelessWidget {
  BillingDashbord({Key? key}) : super(key: key);
  final SelectionController selectionController =
      Get.put(SelectionController());
  String micccallnumber = "7666008833";

  final List<String> billcatagary = [
    'View Bill Receipt',
    'Instant Bill Payment',
    'Bill on Missed Call',
    'Smart Meter Service',
    // 'Checkup Details',
    //'Rwa Details',
  ];

  List<IconData> iconList1 = [
    Icons.remove_red_eye,
    Icons.currency_rupee,
    Icons.phone_missed,
    Icons.electric_meter,
    // Icons.settings,
  ];

  final List<String> catimage = [
    'lib/assets/video/phone.png',
    'lib/assets/video/phone.png',
    'lib/assets/video/phone.png',
    'lib/assets/video/phone.png',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.th1whtbackgrd,
      appBar: myAppBar(
        //backgroundColor: AppColors.white,
        title: 'Billing Dashboard',

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
              elevation: 2,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: size.height * 0.12,
                width: size.width,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10),
                  //gradient: AppColors.gradient19,
                ),
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
                          '2.5% Rebate',
                          style: GoogleFonts.roboto(
                            fontSize: size.width * 0.035,
                            fontWeight: FontWeight.bold,
                            color: AppColors.a15,
                            shadows: [
                              Shadow(
                                color: Colors.black45,
                                blurRadius: 0,
                                offset: Offset(0.1, 0.1),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.05),
                        child: Text(
                          'Get 2.5 % Rebate on your electricity bill if paid within due date through this app.',
                          style: GoogleFonts.roboto(
                            fontSize: size.width * 0.027,
                            fontWeight: FontWeight.w500,
                            color: AppColors.a15,
                            shadows: [
                              Shadow(
                                color: Colors.black45,
                                blurRadius: 0,
                                offset: Offset(0.0, 0.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.0,
                            vertical: size.height * 0.01),
                        child: Text(
                          'Terms & Conditions',
                          style: GoogleFonts.roboto(
                            fontSize: size.width * 0.033,
                            fontWeight: FontWeight.bold,
                            color: AppColors.containercolor18,
                            shadows: [
                              Shadow(
                                color: Colors.black45,
                                blurRadius: 0,
                                offset: Offset(0.0, 0.0),
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
          SizedBox(
            height: size.height * 0.0001,
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: billcatagary.length, // Number of items in the grid
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Number of columns
                crossAxisSpacing: 5, // Spacing between columns
                mainAxisSpacing: 4,
                mainAxisExtent: size.height * 0.15 // Spacing between rows
                ),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  InkWell(
                    onTap: () async {
                      //Get.to(() => IndustryHighTension());

                      if (index == 0) {
                        //Billing1
                        Get.to(() => BillingPage1());

                        // makePhoneCall(
                        //     "123"); // Replace with the desired phone number

                        //Get.to(SelectPahseLineRange());

                        ///Get.to(() => FranchisesProfilePage());
                      } else if (index == 1) {
                        //Get.to(() => IndustryHighTension());
                      } else if (index == 2) {
                        await FlutterPhoneDirectCaller.callNumber(
                            micccallnumber);
                        // _launchWhatsApp();
                        //Get.to(() => IndustryHighTension());

                      } else if (index == 3) {
                        //_launchUrl();

                        //Get.to(WebViewwebsitess(url: "$_url"));

                        //Get.to(() => IndustryHighTension());

                      }
                    },
                    child: PhysicalModel(
                      elevation: 5,
                      color: Colors.transparent,
                      shadowColor: AppColors.a15,
                      shape: BoxShape.circle,
                      child: Container(
                        height: size.height * 0.08,
                        width: size.width * 0.16,
                        decoration: BoxDecoration(
                          color: AppColors.th1blue,
                          //gradient: AppColors.gradient14,
                          //sweepGradient1,
                          //gradient14,
                          shape: BoxShape.circle,
                          //borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Icon(
                            iconList1[index],
                            size: size.height * 0.04,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                    width: size.width * 0.28,
                    child: Center(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "${billcatagary[index]}",
                          style: GoogleFonts.roboto(
                            fontSize: size.height * 0.0125,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textmaroon4,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ],
      ),

      // },
      //),
    );
  }
}
