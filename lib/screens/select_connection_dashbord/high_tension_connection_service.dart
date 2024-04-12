import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/reusable_3Dtext/3d_textreusable.dart';
import 'package:suvidha_app_ui/constants/reusable_3Dtext/3dtext2.dart';
import 'package:suvidha_app_ui/screens/select_connection_dashbord/enter_load.dart';

import '../../constants/reusable_appbar/reusable_appbar.dart';

class HighTensionConnectionService extends StatelessWidget {
  const HighTensionConnectionService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> title1 = [
      'HTS-I',
      'HTS-II',
      'HTSS',
      'HTSS',
      'HTS-III',
      'RTSS',
      'HTS-IV',
      'HTS-V',
      'HTS-VI',
      'HTSV-II',
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
      '50-1500 KVA',
      '500-15000 KVA',
      '300KVA and above',
      '300KVA and above',
      '7500-999999 KVA',
      '7500-999999 KVA',
      '1000-999999 KVA',
      '50-1500 KVA',
      '500-15000 KVA',
      '300KVA and above',
    ];

    final List<String> subtitle4 = [
      '11 kV',
      '33 kV',
      '11 kV',
      '33kV',
      '132kV',
      '132kV',
      '220kV',
      '240kV',
      '250kV',
      '260kV',
    ];
    final List<Color> tileColors = [
      //AppColors.a3,
      AppColors.a24,
      AppColors.a16, // AppColors.a14,
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
      AppColors.gradient10,
    ];
    //gradient

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
          Gradient gradient = tilegradient[
              index % tilegradient.length]; // Access gradient based on index

          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * .013, vertical: size.height * 0.005),
            child: PhysicalModel(
              color: AppColors.th1wht2,
              borderRadius: BorderRadius.circular(10),
              elevation: 5,
              child: InkWell(
                onTap: () {
                  Get.to(EnterLoad());
                },
                child: Container(
                  height: size.height * 0.09,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: AppColors.th1wht2,
                    borderRadius: BorderRadius.circular(10),

                    ///gradient: gradient,
                    //tilegradient[index % tilegradient.length], // Access gradient based on index
                    //AppColors.gradient2
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: size.width * 0.2,
                          child: Column(
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
                                fontSize: size.width * 0.03,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ThreeDtext(
                                text: 'Line',
                                fontColor: AppColors.black,
                                fontSize: size.width * 0.035,
                                fontWeight: FontWeight.bold,
                                //color: AppColors.black,
                              ),
                              //ThreeDtext2
                              ThreeDtext2(
                                text: subtitle4[index],
                                fontColor: AppColors.black,
                                fontSize: size.width * 0.03,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.2,
                          child: Column(
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
                        ),
                        SizedBox(
                          width: size.width * 0.35,
                          child: Column(
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
                                fontSize: size.width * 0.03,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
