import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/reusable_3Dtext/3dtext2.dart';
import 'package:suvidha_app_ui/screens/select_connection_dashbord/industry_high_tension.dart';
import 'package:suvidha_app_ui/screens/select_connection_dashbord/select_phase_line.dart';

import '../../constants/reusable_appbar/reusable_appbar.dart';

class SelectConnectionDashbord extends StatelessWidget {
  SelectConnectionDashbord({Key? key}) : super(key: key);
  final List<String> doctorcatagary = [
    'Domestic',
    'Commercial',
    'Industrial/High Tension',
    'Har Ghar Nal',
    'Public Water Works',
    // 'Public Water Works 2',
    // 'Domestic',
    // 'Commercial',
    // 'Industrial/High Tension',
    // 'Har Ghar Nal',
  ];

  final List<String> doctorcatagary2 = [
    'For all domestic household and\n           residential purpose',
    'For all Commercial establishments such as shops, hospitals,restaurants\n         etc and residential purpose',
    'For all industrial purpose, Includes LT \n                  and High Tension',
    'For Har Ghar Nal Connection',
    'Water Sewerage treatment plant and\n                   pumping station',
    // 'Water Sewerage treatment plant and\n                   pumping station',
    // 'For all domestic household and\n           residential purpose',
    // 'For all Commercial establishments such as shops, hospitals,restaurants\n         etc and residential purpose',
    // 'For all industrial purpose, Includes LT \n                  and High Tension',
    // 'For Har Ghar Nal Connection',
  ];

  final List<String> catimage = [
    'lib/assets/video/domes2.png',
    'lib/assets/video/commerl2.png',
    'lib/assets/video/hightens2.png',
    'lib/assets/video/hargharnal2.png',
    'lib/assets/video/publicwater2.png',
    // 'lib/assets/video/testimage.png',
    // 'lib/assets/video/domestic.png',
    // 'lib/assets/video/commercial.png',
    // 'lib/assets/video/industry.png',
    // 'lib/assets/video/hargharnal.png',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.th1whtbackgrd,
      appBar: myAppBar(
        title: 'Select Connection Type',
        leadingIcon: Icons.arrow_back_ios_outlined,
        centerTitle: true,
        onLeadingPressed: () {
          Get.back();
        },
        searchIcon: null,
        onSearchPressed: () {},
        userIcon: null,
        onUserPressed: () {},
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: size.height * 0.22,
              crossAxisSpacing: size.width * 0.00,
              mainAxisSpacing: size.height * 0.00,
            ),
            itemCount: doctorcatagary.length,
            itemBuilder: (BuildContext ctx, index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.02,
                  vertical: size.height * 0.009,
                ),
                child: InkWell(
                  onTap: () async {
                    //Get.to(() => IndustryHighTension());

                    if (index == 0) {
                      Get.to(SelectPahseLineRange());

                      ///Get.to(() => FranchisesProfilePage());
                    } else if (index == 1) {
                      Get.to(() => IndustryHighTension());
                    } else if (index == 2) {
                      Get.to(() => IndustryHighTension());
                    } else if (index == 3) {
                      Get.to(() => IndustryHighTension());
                    } else if (index == 4) {
                      Get.to(() => IndustryHighTension());
                    } else if (index == 5) {
                      Get.to(() => IndustryHighTension());
                    } else if (index == 6) {
                      Get.to(() => IndustryHighTension());
                    } else if (index == 7) {
                      Get.to(() => IndustryHighTension());
                    } else if (index == 8) {
                      Get.to(() => IndustryHighTension());
                    } else if (index == 9) {}
                    // Handle onTap
                  },
                  child: PhysicalModel(
                    color: AppColors.a1,
                    shadowColor: AppColors.a2,
                    elevation: 1,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Image.asset(
                              catimage[index],
                              height: size.height * 0.06,
                            ),
                          ),
                          // SizedBox(
                          //   width: size.width,
                          //   height: size.height * 0.051,
                          //   child: ThreeDtext2(
                          //     maxLines: 5,
                          //     overflow: TextOverflow.ellipsis,
                          //     text: doctorcatagary2[index],
                          //     fontSize: size.height * 0.011,
                          //     fontWeight: FontWeight.w700,
                          //     fontColor: AppColors.black,
                          //   ),
                          // ),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.a15,
                              //gradient: AppColors.gradient11,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(9.0),
                              child: ThreeDtext2(
                                overflow: TextOverflow.ellipsis,
                                text: doctorcatagary[index],
                                fontSize: size.height * 0.014,
                                fontWeight: FontWeight.w600,
                                fontColor: AppColors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.th1wht2,
                        //gradient: AppColors.gradient19,
                        borderRadius: BorderRadius.circular(10),
                        //  border: Border.all(color: AppColors.th1blue3),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.th1blue3,
                            offset: Offset(0, 0),
                            blurRadius: 0,
                            spreadRadius: 0,
                          ),
                          BoxShadow(
                            color: AppColors.black,
                            offset: Offset(0, 0),
                            blurRadius: 0,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
