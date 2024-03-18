import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/controllers/language_controllers/language_controllers.dart';
//import 'package:suvidha/controllers/language_page_controller/language_controller.dart';

class LanguageButton extends StatelessWidget {
  final String locale;
  final String label;

  const LanguageButton({
    Key? key,
    required this.locale,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LanguageController>(
      init: LanguageController(),
      builder: (controller) {
        return InkWell(
          onTap: () {
            controller.updateLocale(locale);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(
                  color: controller.selectedLocale == locale
                      ? Colors.grey
                      : Colors.blue,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(30.0),
                color: controller.selectedLocale == locale
                    ? Colors.blue
                    : Colors.grey,
              ),
              child: Center(
                  child: Text(label,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        color: Colors.white,
                      ))),
              // OutlinedButton(
              //   onPressed: () => controller.updateLocale(locale),
              //   child: ,
              // ),
            ),
          ),
        );
      },
    );
  }
}
