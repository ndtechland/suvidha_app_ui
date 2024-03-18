import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class LanguageController extends GetxController {
  var selectedLocale = 'en';

  void updateLocale(String newLocale) {
    selectedLocale = newLocale;
    Get.updateLocale(Locale(newLocale));
  }
}
