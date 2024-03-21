import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class MyConnectionController extends GetxController {
  var selectedValue = "PATNA".obs;

  void updateSelectedValue(String value) {
    selectedValue.value = value;
  }
}
