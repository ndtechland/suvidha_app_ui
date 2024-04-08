import 'package:get/get.dart';

class HomePageController extends GetxController {
  RxBool isClicked = false.obs;
  RxDouble containerHeight = 70.0.obs;
  RxDouble containerWidth = 140.0.obs;

  void toggleClick() {
    isClicked.toggle();
    if (isClicked.value) {
      containerHeight.value = 60.0;
      containerWidth.value = 120.0;
    } else {
      containerHeight.value = 70.0;
      containerWidth.value = 140.0;
    }
  }
}
