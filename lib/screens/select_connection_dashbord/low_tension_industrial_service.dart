import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/reusable_3Dtext/3d_textreusable.dart';
import 'package:suvidha_app_ui/constants/reusable_3Dtext/3dtext2.dart';

import '../../constants/reusable_appbar/reusable_appbar.dart';

class Lowtenindustralservice extends StatelessWidget {
  const Lowtenindustralservice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> title1 = [
      'LTIS1D',
      'LTIS1D',
      'LTIS2D',
      'LTIS1D',
      'LTIS1D',
      'LTIS2D',
      'LTIS1D',
      'LTIS1D',
      'LTIS2D',
      'LTIS1D',
    ];
    final List<String> subtitle1 = [
      'INDUSTRIAL',
      'INDUSTRIAL',
      'INDUSTRIAL',
      'INDUSTRIAL',
      'INDUSTRIAL',
      'INDUSTRIAL',
      'INDUSTRIAL',
      'INDUSTRIAL',
      'INDUSTRIAL',
      'INDUSTRIAL',
      'INDUSTRIAL',
    ];

    final List<String> title2 = [
      'Phase',
      'Phase',
      'Phase',
      'Phase',
      'Phase',
      'Phase',
      'Phase',
      'Phase',
      'Phase',
      'Phase',
    ];
    final List<String> subtitle2 = [
      '1',
      '3',
      '3',
      '2',
      '1',
      '3',
      '2',
      '3',
      '1',
      '3',
    ];
    final List<String> title3 = [
      'Load Range',
      'Load Range',
      'Load Range',
      'Load Range',
      'Load Range',
      'Load Range',
      'Load Range',
      'Load Range',
      'Load Range',
      'Load Range',
    ];
    final List<String> subtitle3 = [
      '1 - 7 KW',
      '1 - 19 KW',
      '20 - 74 KW',
      '1 - 7 KW',
      '1 - 19 KW',
      '20 - 74 KW',
      '1 - 7 KW',
      '1 - 19 KW',
      '20 - 74 KW',
      '1 - 7 KW',
    ];
    final List<Color> tileColors = [
      AppColors.a24,
      AppColors.a16,
      // AppColors.a14,
      //AppColors.a6,
      //AppColors.a7,
      // AppColors.a3,
      //AppColors.a5,
      //AppColors.a14,
      //AppColors.a6,
      //AppColors.a7,
    ];
    final List<Gradient> tilegradient = [
      AppColors.gradient7,
      AppColors.gradient11,
    ];

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.th1whtbackgrd,
      appBar: myAppBar(
        //backgroundColor: AppColors.white,
        title: 'Select Phase/Line and Load Range',

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
      body: ListView.builder(
        itemCount: title1.length,
        itemBuilder: (BuildContext context, int index) {
          // Ensure the index is within bounds of tileColors list
          int colorIndex = index % tileColors.length;
          Color tileColor = tileColors[colorIndex];
          Gradient gradient = tilegradient[index % tilegradient.length];

          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: PhysicalModel(
              color: AppColors.th1wht2,
              elevation: 5,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: size.height * 0.09,
                width: size.width,
                decoration: BoxDecoration(
                  // color: tileColor,
                  color: AppColors.th1wht2,
                  borderRadius: BorderRadius.circular(10),

                  ///  gradient: gradient,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ThreeDtext(
                            text: title1[index],
                            fontColor: AppColors.black,
                            fontSize: size.width * 0.035,
                            fontWeight: FontWeight.bold,
                          ),
                          //ThreeDtext2
                          ThreeDtext2(
                            text: subtitle1[index],
                            fontColor: AppColors.black,
                            fontSize: size.width * 0.035,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ThreeDtext(
                            text: title2[index],
                            fontColor: AppColors.black,
                            fontSize: size.width * 0.035,
                            fontWeight: FontWeight.bold,
                          ),
                          //ThreeDtext2
                          ThreeDtext2(
                            text: subtitle2[index],
                            fontColor: AppColors.black,
                            fontSize: size.width * 0.035,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ThreeDtext(
                            text: title3[index],
                            fontColor: AppColors.black,
                            fontSize: size.width * 0.035,
                            fontWeight: FontWeight.bold,
                          ),
                          //ThreeDtext2
                          ThreeDtext2(
                            text: subtitle3[index],
                            fontColor: AppColors.black,
                            fontSize: size.width * 0.035,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
          //   ListTile(
          //   title: Text(items[index]),
          //   tileColor: tileColor, // Assign color to ListTile
          //   onTap: () {
          //     // Action when the ListTile is tapped
          //     print('Tapped on ${items[index]}');
          //   },
          //   // Add more properties to ListTile if needed
          // );
        },
      ),
    );
  }
}
