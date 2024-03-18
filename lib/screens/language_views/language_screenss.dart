import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/buttons/language_buttonss.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/screens/home_page.dart';
//import 'package:suvidha/constants/buttons/language_buttons.dart';

//import '../home_pagee/home_page.dart';

class LanguagePagess extends StatelessWidget {
  const LanguagePagess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //lib/assets/assetsss/suvidha1.png
    ///Users/ndinfotech/Desktop/Suvidha/lib/assets/assetsss/suvidha1.png

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    //lib/assets/assetsss/suvidha1.png
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1529310399831-ed472b81d589?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                        //"lib/assets/assetsss/electricccdistribution.png"
                        ),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 90,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('YourLanguages'.tr,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: size.width * 0.03,
                            color: Colors.white)
                        //Theme.of(context).textTheme.headline6,
                        ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text('language'.tr,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            color: Colors.redAccent)),
                  ],
                ),
                const SizedBox(
                  height: 170,
                ),
                SizedBox(
                  height: 370,
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: [
                      LanguageButton(locale: 'en', label: 'English'),
                      LanguageButton(locale: 'hi', label: 'हिन्दी'),
                      LanguageButton(locale: 'bho', label: 'भोजपुरी'),
                      LanguageButton(locale: 'mai', label: 'मैथिली'),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        Get.to(HomePage());
                      },
                      child: Container(
                        height: size.height * 0.05,
                        width: size.width * 0.3,
                        decoration: BoxDecoration(
                          color: AppColors.a12,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Align(
                            alignment: Alignment.center, child: Text("SAVE")),
                      ),
                    ),
                  ),
                )
                // LanguageButton(locale: 'en', label: 'English'),
                // LanguageButton(locale: 'hi', label: 'हिन्दी'),
                // LanguageButton(locale: 'bho', label: 'भोजपुरी'),
                // LanguageButton(locale: 'mai', label: 'मैथिली'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
