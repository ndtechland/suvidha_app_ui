import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/reusable_3Dtext/3d_textreusable.dart';
import 'package:suvidha_app_ui/constants/reusable_3Dtext/3dtext2.dart';
import 'package:suvidha_app_ui/screens/select_connection_dashbord/high_tension_connection_service.dart';
import 'package:suvidha_app_ui/screens/select_connection_dashbord/low_tension_industrial_service.dart';

import '../../constants/reusable_appbar/reusable_appbar.dart';

class IndustryHighTension extends StatelessWidget {
  const IndustryHighTension({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> title1 = [
      'Low Tension Industrial Service',
      'High Tension Connection Service',
    ];
    final List<String> subtitle1 = [
      'For Low Tension Industrial Consumers with Connected Load/Contract Demand upto 99HP/74KW.',
      'For High Tension Industrial Consumers with requirement of 11kV/33kV/132kV/220kV and Railway Traction Loads.',
    ];

    final List<String> title2 = [
      'Phase',
      'Phase',
    ];
    final List<String> subtitle2 = [
      '1',
      '2',
    ];
    final List<String> title3 = [
      'Load Range',
      'Load Range',
    ];
    final List<String> subtitle3 = [
      '0.01 - 0.25 KW',
      '1 - 7 KW',
    ];
    final List<Color> tileColors = [
      AppColors.a3,
      AppColors.a5,
      // AppColors.a14,
      //AppColors.a6,
      //AppColors.a7,
      // AppColors.a3,
      //AppColors.a5,
      //AppColors.a14,
      //AppColors.a6,
      //AppColors.a7,
    ];

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: myAppBar(
        //backgroundColor: AppColors.white,
        title: 'Select Industrial Connection',

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
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1509391111737-9b07f052f6b6?q=80&w=2340&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                      // 'https://images.unsplash.com/photo-1598024264708-b4328f4e191b?q=80&w=2187&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                      //'https://images.unsplash.com/photo-1610720707798-6fe21dc165ba?q=80&w=2215&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                      // 'https://images.unsplash.com/photo-1519626504899-7a03a8a9ab51?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDR8fHxlbnwwfHx8fHw%3D'
                      // 'https://images.unsplash.com/photo-1672545556384-369582b1b7f5?q=80&w=2187&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                      //  'https://images.unsplash.com/photo-1517358133568-31ec5656304e?q=80&w=2187&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                      // 'lib/assets/video/electricaaa.png'
                      ),
                  fit: BoxFit.fitHeight)),
          child: Column(
            children: [
              Spacer(),
              SizedBox(
                height: size.height * 0.55,
                width: size.width,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: title1.length,
                  itemBuilder: (BuildContext context, int index) {
                    // Ensure the index is within bounds of tileColors list
                    int colorIndex = index % tileColors.length;
                    Color tileColor = tileColors[colorIndex];

                    return Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.02,
                          horizontal: size.width * 0.09),
                      child: PhysicalModel(
                        color: AppColors.a1,
                        shadowColor: AppColors.p3,
                        elevation: 10,
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: () {
                            if (index == 0) {
                              Get.to(Lowtenindustralservice());
                            } else if (index == 1) {
                              Get.to(HighTensionConnectionService());
                            }
                          },
                          child: Container(
                            height: size.height * 0.19,
                            width: size.width,
                            decoration: BoxDecoration(
                              // color: AppColors.g1,
                              gradient: AppColors.gradient5,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Container(
                                height: size.height * 0.19,
                                width: size.width,
                                decoration: BoxDecoration(
                                  color: AppColors.a20,
                                  gradient: AppColors.gradient5,
                                  //tileColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: size.height * 0.088,
                                        width: size.width,
                                        decoration: BoxDecoration(
                                            color: AppColors.white,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(10),
                                                topLeft: Radius.circular(10))),
                                        child: ThreeDtext(
                                          text: title1[index],
                                          fontColor: AppColors.black,
                                          fontSize: size.width * 0.04,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Container(
                                        height: size.height * 0.09,
                                        width: size.width,
                                        decoration: BoxDecoration(
                                            // color: AppColors.a17,
                                            gradient: AppColors.gradient5,
                                            borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(10),
                                                bottomLeft:
                                                    Radius.circular(10))),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: ThreeDtext2(
                                            text: subtitle1[index],
                                            fontColor: Colors.black,
                                            fontSize: size.width * 0.03,
                                            fontWeight: FontWeight.w500,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 4,
                                          ),
                                        ),
                                      ),

                                      //ThreeDtext2
                                    ],
                                  ),
                                ),
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
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
