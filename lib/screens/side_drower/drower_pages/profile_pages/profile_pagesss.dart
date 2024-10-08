import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';

import '../edit_profile_pages.dart';

class ProfilePages extends StatelessWidget {
  const ProfilePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.th1whtbackgrd,
        body: Column(
          children: [
            Container(
              height: size.height * 0.26,
              color: AppColors.th1whtbackgrd,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: AppColors.black,
                            size: size.height * 0.024,
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Text(
                            "Your Profile",
                            style: GoogleFonts.poppins(
                                color: AppColors.black,
                                fontSize: size.height * 0.024,
                                fontWeight: FontWeight.w500),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: InkWell(
                          onTap: () {
                            Get.to(EditProfilePages());
                          },
                          child: Icon(
                            Icons.edit,
                            color: AppColors.black,
                            size: size.height * 0.027,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: size.height * 0.17,
                    width: size.width * 0.34,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1590031905406-f18a426d772d?q=80&w=2488&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                              //"https://images.unsplash.com/photo-1542190891-2093d38760f2?q=80&w=2487&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                              ),
                          fit: BoxFit.cover,
                        )),
                  ),
                ],
              ),
            ),
            Spacer(),
            PhysicalModel(
              color: AppColors.th1wht2,
              shadowColor: AppColors.greyColor,
              clipBehavior: Clip.none,
              elevation: 5,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              child: Container(
                height: size.height * 0.69,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: AppColors.th1wht2),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.08,
                      child: ListTile(
                        leading: Icon(
                          Icons.account_circle,
                        ), // Icon to display on the left side
                        title: Text(
                          'Name',
                          style: GoogleFonts.poppins(
                            fontSize: size.height * 0.015,
                            color: AppColors.black,
                          ),
                        ), // Title of the ListTile
                        subtitle: Text(
                          'Kavi Singh',
                          style: GoogleFonts.poppins(
                            fontSize: size.height * 0.02,
                            color: AppColors.black,
                          ),
                        ), // Subtitle of the ListTile
                        // trailing: Icon(Icons
                        //     .arrow_forward), // Icon to display on the right side
                        onTap: () {
                          // Function to execute when ListTile is tapped
                          print('Tapped on John Doe');
                        },
                      ),
                    ),
                    Container(
                      height: size.height * 0.0001,
                      color: AppColors.greyColor,
                    ),
                    //Divider(),
                    SizedBox(
                      height: size.height * 0.08,
                      child: ListTile(
                        leading: Icon(
                            Icons.email), // Icon to display on the left side
                        title: Text(
                          'Email',
                          style: GoogleFonts.poppins(
                            fontSize: size.height * 0.015,
                            color: AppColors.greyColor,
                          ),
                        ), // Title of the ListTile
                        subtitle: Text(
                          'kaviji@gmail.com',
                          style: GoogleFonts.poppins(
                            fontSize: size.height * 0.02,
                            color: AppColors.black,
                          ),
                        ), // Subtitle of the ListTile
                        // trailing: Icon(Icons
                        //     .arrow_forward), // Icon to display on the right side
                        onTap: () {
                          // Function to execute when ListTile is tapped
                          print('Tapped on John Doe');
                        },
                      ),
                    ),
                    Container(
                      height: size.height * 0.0001,
                      color: AppColors.greyColor,
                    ),
                    SizedBox(
                      height: size.height * 0.08,
                      child: ListTile(
                        leading: Icon(Icons
                            .phone_android_outlined), // Icon to display on the left side
                        title: Text(
                          'Mobile No',
                          style: GoogleFonts.poppins(
                            fontSize: size.height * 0.015,
                            color: AppColors.greyColor,
                          ),
                        ), // Title of the ListTile
                        subtitle: Text(
                          '701938838',
                          style: GoogleFonts.poppins(
                            fontSize: size.height * 0.02,
                            color: AppColors.black,
                          ),
                        ), // Subtitle of the ListTile
                        // trailing: Icon(Icons
                        //     .arrow_forward), // Icon to display on the right side
                        onTap: () {
                          // Function to execute when ListTile is tapped
                          print('Tapped on John Doe');
                        },
                      ),
                    ),
                    Container(
                      height: size.height * 0.0001,
                      color: AppColors.greyColor,
                    ),
                    SizedBox(
                      height: size.height * 0.08,
                      child: ListTile(
                        leading: Icon(Icons
                            .perm_identity), // Icon to display on the left side
                        title: Text(
                          'UID',
                          style: GoogleFonts.poppins(
                            fontSize: size.height * 0.015,
                            color: AppColors.greyColor,
                          ),
                        ), // Title of the ListTile
                        subtitle: Text(
                          '4554555HGHq',
                          style: GoogleFonts.poppins(
                            fontSize: size.height * 0.02,
                            color: AppColors.black,
                          ),
                        ), // Subtitle of the ListTile
                        // trailing: Icon(Icons
                        //     .arrow_forward), // Icon to display on the right side
                        onTap: () {
                          // Function to execute when ListTile is tapped
                          print('Tapped on John Doe');
                        },
                      ),
                    ),
                    Container(
                      height: size.height * 0.0001,
                      color: AppColors.greyColor,
                    ),
                    SizedBox(
                      height: size.height * 0.08,
                      child: ListTile(
                        leading:
                            Icon(Icons.pin), // Icon to display on the left side
                        title: Text(
                          'PIN Code',
                          style: GoogleFonts.poppins(
                            fontSize: size.height * 0.015,
                            color: AppColors.greyColor,
                          ),
                        ), // Title of the ListTile
                        subtitle: Text(
                          '811106',
                          style: GoogleFonts.poppins(
                            fontSize: size.height * 0.02,
                            color: AppColors.black,
                          ),
                        ), // Subtitle of the ListTile
                        // trailing: Icon(Icons
                        //     .arrow_forward), // Icon to display on the right side
                        onTap: () {
                          // Function to execute when ListTile is tapped
                          print('Tapped on John Doe');
                        },
                      ),
                    ),
                    Container(
                      height: size.height * 0.0001,
                      color: AppColors.greyColor,
                    ),

                    SizedBox(
                      height: size.height * 0.08,
                      child: ListTile(
                        leading: Icon(Icons
                            .pin_drop_sharp), // Icon to display on the left side
                        title: Text(
                          'Address',
                          style: GoogleFonts.poppins(
                            fontSize: size.height * 0.015,
                            color: AppColors.greyColor,
                          ),
                        ), // Title of the ListTile
                        subtitle: Text(
                          'Barh, patna , Ladiyama',
                          maxLines: 2,
                          style: GoogleFonts.poppins(
                            fontSize: size.height * 0.02,
                            color: AppColors.black,
                          ),
                        ), // Subtitle of the ListTile
                        // trailing: Icon(Icons
                        //     .arrow_forward), // Icon to display on the right side
                        onTap: () {
                          // Function to execute when ListTile is tapped
                          print('Tapped on John Doe');
                        },
                      ),
                    ),
                    Container(
                      height: size.height * 0.0001,
                      color: AppColors.greyColor,
                    ),

                    SizedBox(
                      height: size.height * 0.08,
                      child: ListTile(
                        leading: Icon(Icons
                            .gas_meter_rounded), // Icon to display on the left side
                        title: Text(
                          'Meter Reading',
                          style: GoogleFonts.poppins(
                            fontSize: size.height * 0.015,
                            color: AppColors.greyColor,
                          ),
                        ), // Title of the ListTile
                        subtitle: Text(
                          '12345',
                          maxLines: 2,
                          style: GoogleFonts.poppins(
                            fontSize: size.height * 0.02,
                            color: AppColors.black,
                          ),
                        ), // Subtitle of the ListTile
                        // trailing: Icon(Icons
                        //     .arrow_forward), // Icon to display on the right side
                        onTap: () {
                          // Function to execute when ListTile is tapped
                          print('Tapped on John Doe');
                        },
                      ),
                    ),
                    Container(
                      height: size.height * 0.0001,
                      color: AppColors.greyColor,
                    ),

                    SizedBox(
                      height: size.height * 0.08,
                      child: ListTile(
                        leading: Icon(Icons
                            .electric_meter_sharp), // Icon to display on the left side
                        title: Text(
                          'Total Consumptions',
                          style: GoogleFonts.poppins(
                            fontSize: size.height * 0.015,
                            color: AppColors.greyColor,
                          ),
                        ), // Title of the ListTile
                        subtitle: Text(
                          '876656 Units',
                          maxLines: 2,
                          style: GoogleFonts.poppins(
                            fontSize: size.height * 0.02,
                            color: AppColors.black,
                          ),
                        ), // Subtitle of the ListTile
                        // trailing: Icon(Icons
                        //     .arrow_forward), // Icon to display on the right side
                        onTap: () {
                          // Function to execute when ListTile is tapped
                          print('Tapped on John Doe');
                        },
                      ),
                    ),
                    Container(
                      height: size.height * 0.0001,
                      color: AppColors.greyColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
