import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class NavBarController extends GetxController {
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
