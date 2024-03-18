import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:suvidha_app_ui/account_autologin/autologin_account.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/controllers/profile_controllers.dart';
import 'package:suvidha_app_ui/screens/home_page.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

double height = 0.0; // Initialize the variable with a default value

// Later in the code, assign a value to 'height'
//height = calculateHeight();

class _WelcomePageState extends State<WelcomePage> {
  @override
  late ProfileController _profileController;

  void initState() {
    super.initState();
    _profileController = Get.put(ProfileController());

    accountService.getAccountData.then((accountData) {
      print("accdatadataa${accountData}");

      Timer(
        const Duration(seconds: 3),
        () async {
          if (accountData == null) {
            await _profileController.profileApi();
            print("accdata${accountData}");
            await Future.delayed(Duration(seconds: 2), () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            });
            // Future.delayed(Duration(seconds: 5), () {

            // });

            ///todo: 2 sep....2023..
            throw Exception();
          } else {
            await _profileController.profileApi();
            print("accdata2${accountData}");
            await Future.delayed(Duration(seconds: 2), () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            });

            ///todo: through exception....
            throw Exception();
          }
        },
      );
    });
    // Future.delayed(Duration(seconds: 5), () {
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => LoginPage()));
    // });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.themecolors,
      body: Stack(
        children: [
          Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(
                      // 'https://images.wallpapersden.com/image/download/las-vegas-night-hotel_Zmxtbm6UmZqaraWkpJRmbmdlrWZlbWU.jpg'
                      //'https://i.pinimg.com/originals/60/d8/44/60d844679e07db517c19fdc5dd7af089.gif',
                      // 'https://static.onecms.io/wp-content/uploads/sites/28/2021/01/04/base-grand-hyatt-JUMP0121.jpg'
                      'https://images.unsplash.com/photo-1558449028-b53a39d100fc?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDJ8fHxlbnwwfHx8fHw%3D'
                      // 'https://images.unsplash.com/photo-1519626504899-7a03a8a9ab51?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDJ8fHxlbnwwfHx8fHw%3D'
                      //'https://images.unsplash.com/photo-1509391366360-2e959784a276?q=80&w=2344&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                      //  'https://images.unsplash.com/photo-1529310399831-ed472b81d589?q=80&w=2187&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                      ),
                  fit: BoxFit.cover,
                )),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/assets/video/suvidha33logo.jpeg',
                        height: size.height * 0.3,
                        width: size.width * 0.5,
                      ),
                      if (Platform.isIOS)
                        CupertinoActivityIndicator(
                          radius: 20,
                        )
                      else
                        CircularProgressIndicator(
                          color: Colors.white,
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
