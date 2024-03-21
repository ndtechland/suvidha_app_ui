import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/reusable_3Dtext/3dtext2.dart';
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
    'Public Water Works 2',
    'Domestic',
    'Commercial',
    'Industrial/High Tension',
    'Har Ghar Nal',
  ];

  final List<String> doctorcatagary2 = [
    'For all domestic household and\n           residential purpose',
    'For all Commercial establishments such as shops, hospitals,restaurants\n         etc and residential purpose',
    'For all industrial purpose, Includes LT \n                  and High Tension',
    'For Har Ghar Nal Connection',
    'Water Sewerage treatment plant and\n                   pumping station',
    'Water Sewerage treatment plant and\n                   pumping station',
    'For all domestic household and\n           residential purpose',
    'For all Commercial establishments such as shops, hospitals,restaurants\n         etc and residential purpose',
    'For all industrial purpose, Includes LT \n                  and High Tension',
    'For Har Ghar Nal Connection',
  ];

  final List<String> catimage = [
    'lib/assets/video/domestic.png',
    'lib/assets/video/commercial.png',
    'lib/assets/video/industry.png',
    'lib/assets/video/hargharnal.png',
    'lib/assets/video/waterwork.png',
    'lib/assets/video/testimage.png',
    'lib/assets/video/domestic.png',
    'lib/assets/video/commercial.png',
    'lib/assets/video/industry.png',
    'lib/assets/video/hargharnal.png',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.a19,
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
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: size.height * 0.23,
            crossAxisSpacing: size.width * 0.004,
            mainAxisSpacing: size.height * 0.004,
          ),
          itemCount: doctorcatagary.length,
          itemBuilder: (BuildContext ctx, index) {
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.011,
                vertical: size.height * 0.005,
              ),
              child: InkWell(
                onTap: () async {
                  Get.to(SelectPahseLineRange());
                  // Handle onTap
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Image.asset(
                          catimage[index],
                          height: size.height * 0.125,
                        ),
                      ),
                      SizedBox(
                        width: size.width,
                        child: ThreeDtext2(
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          text: doctorcatagary2[index],
                          fontSize: size.height * 0.0111,
                          fontWeight: FontWeight.w500,
                          fontColor: AppColors.black,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.a15,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: ThreeDtext2(
                            overflow: TextOverflow.ellipsis,
                            text: doctorcatagary[index],
                            fontSize: size.height * 0.015,
                            fontWeight: FontWeight.w600,
                            fontColor: AppColors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.a3),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.a6,
                        offset: Offset(4, 4),
                        blurRadius: 0,
                        spreadRadius: 0,
                      ),
                      const BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, -0),
                        blurRadius: 0,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
