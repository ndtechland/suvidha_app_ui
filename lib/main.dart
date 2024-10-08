import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/language_string/language_text.dart';
import 'package:suvidha_app_ui/screens/splash_screenss/splash_screens.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: AppTranslations(),
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: Duration(microseconds: 500),
      locale: Get.deviceLocale,
      fallbackLocale: Locale('en', 'US'),
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        primarySwatch: AppColors.th1blue2,
      ),
      home: SplashScreen(),

      ///WelcomePage(),

      //OTPScreen(),
      //WelcomePage(),
      //VerifyMobilenumber1(),
      //WelcomePage(),
    );
  }
}
