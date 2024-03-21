import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/reusable_3Dtext/3d_textreusable.dart';
import 'package:suvidha_app_ui/constants/reusable_3Dtext/3dtext2.dart';

import '../../constants/reusable_appbar/reusable_appbar.dart';

class SelectPahseLineRange extends StatelessWidget {
  const SelectPahseLineRange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
      'Item 6',
      'Item 7',
      'Item 8',
      'Item 9',
      'Item 10'
    ];
    final List<String> title1 = [
      'KJ_BPL_MTR',
      'DS-IID',
      'DS-IID',
      'DS-III(D)',
      'KJ_BPL_MTR',
      'DS-IID',
      'DS-IID',
      'DS-III(D)',
      'KJ_BPL_MTR',
      'DS-IID',
    ];
    final List<String> subtitle1 = [
      'DOMESTIC',
      'DOMESTIC',
      'DOMESTIC',
      'DOMESTIC',
      'COMMERCIAL',
      'COMMERCIAL',
      'COMMERCIAL',
      'COMMERCIAL',
      'COMMERCIAL',
      'COMMERCIAL',
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
      '2',
      '2',
      '3',
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
      '0.01 - 0.25 KW',
      '1 - 7 KW',
      '5 - 70 KW',
      '20 - 70 KW',
      '0.01 - 0.25 KW',
      '1 - 7 KW',
      '5 - 70 KW',
      '20 - 70 KW',
      '0.01 - 0.25 KW',
      '1 - 7 KW',
    ];
    final List<Color> tileColors = [
      AppColors.a3,
      AppColors.a5,
      AppColors.a14,
      AppColors.a6,
      AppColors.a7,
      AppColors.a3,
      AppColors.a5,
      AppColors.a14,
      AppColors.a6,
      AppColors.a7,
    ];

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
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

          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: PhysicalModel(
              color: tileColor,
              elevation: 5,
              child: Container(
                height: size.height * 0.09,
                width: size.width,
                decoration: BoxDecoration(
                  color: tileColor,
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
                            fontColor: Colors.white,
                            fontSize: size.width * 0.035,
                            fontWeight: FontWeight.bold,
                          ),
                          //ThreeDtext2
                          ThreeDtext2(
                            text: subtitle1[index],
                            fontColor: Colors.white,
                            fontSize: size.width * 0.03,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ThreeDtext(
                            text: title2[index],
                            fontColor: Colors.white,
                            fontSize: size.width * 0.035,
                            fontWeight: FontWeight.bold,
                          ),
                          //ThreeDtext2
                          ThreeDtext2(
                            text: subtitle2[index],
                            fontColor: Colors.white,
                            fontSize: size.width * 0.03,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ThreeDtext(
                            text: title3[index],
                            fontColor: Colors.white,
                            fontSize: size.width * 0.035,
                            fontWeight: FontWeight.bold,
                          ),
                          //ThreeDtext2
                          ThreeDtext2(
                            text: subtitle3[index],
                            fontColor: Colors.white,
                            fontSize: size.width * 0.03,
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
