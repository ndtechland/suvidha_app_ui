import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suvidha_app_ui/controllers/splash_controller/splas_controller.dart';

import '../../weight/custom_tab_bar/custom_tab_bar.dart';

//import '../../controllers/splash_controller/splash_controllers.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SplashScreenControllers>(
        init: SplashScreenControllers(),
        builder: (controller) {
          // Assuming you want to navigate after animation completes
          if (controller.animation.status == AnimationStatus.completed) {
            // Navigate to HomeScreen
            Future.delayed(Duration.zero, () {
              Get.off(BottomNavBar());
            });
          }
          return Stack(
            fit: StackFit.expand,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  AnimatedBuilder(
                    animation: controller.animation,
                    builder: (context, child) {
                      return Transform.scale(
                        scale: controller.animation.value * 2,
                        child: Image.asset(
                          'lib/assets/video/splash_logo.png',
                          width: 190,
                          height: 220,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
