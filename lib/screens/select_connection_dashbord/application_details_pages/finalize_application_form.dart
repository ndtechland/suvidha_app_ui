import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/reusable_3Dtext/3d_textreusable.dart';
import 'package:suvidha_app_ui/constants/reusable_appbar/reusable_appbar.dart';
import 'package:suvidha_app_ui/controllers/application_detail_controller.dart';
import 'package:suvidha_app_ui/screens/select_connection_dashbord/application_details_pages/preview_form.dart';
import 'package:suvidha_app_ui/screens/select_connection_dashbord/application_details_pages/sucess_submit_form.dart';

//import '../../constants/reusable_appbar/reusable_appbar.dart';

class FinalizeFormms extends StatelessWidget {
  FinalizeFormms({Key? key}) : super(key: key);
  final SelectionController selectionController =
      Get.put(SelectionController());

  @override
  Widget build(BuildContext context) {
    final List<Color> tileColors = [
      AppColors.a24,
      AppColors.a16,
    ];
    final List<Gradient> tilegradient = [
      AppColors.gradient7,
      AppColors.gradient11,
    ];

    Size size = MediaQuery.of(context).size;
    //String filteredText = text.replaceAll(RegExp(r'[^\w\s.,!*\'$\\\/]'), '');

    return Scaffold(
      backgroundColor: AppColors.th1whtbackgrd,
      appBar: myAppBar(
        //backgroundColor: AppColors.white,
        title: """Finalize Application""",
        //'Enter New Connection Installation \nAddress',

        leadingIcon: Icons.arrow_back_ios_outlined,

        centerTitle: true,
        titleFontSize: size.width * 0.045, // Specify font size here

        onLeadingPressed: () {
          Get.back();

          // Handle leading icon press
        },
        searchIcon: null,
        onSearchPressed: () {
          // Handle search icon press
        },
        userIcon: null,
        onUserPressed: () {
          // Handle user icon press
        },
      ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white30,
          // image: DecorationImage(
          //     image: NetworkImage(
          //         'https://images.unsplash.com/photo-1554735231-2250c114a31d?q=80&w=2187&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
          //         //'https://images.unsplash.com/photo-1610056494085-05e9fb6673ee?q=80&w=2187&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
          //         //'https://images.unsplash.com/photo-1509453721491-c3af5961df76?q=80&w=2235&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
          //         //'https://images.unsplash.com/photo-1544724569-5f546fd6f2b5?q=80&w=2187&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
          //         //'https://images.unsplash.com/photo-1595428645453-309f41e373e0?q=80&w=2265&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
          //         //'https://images.unsplash.com/photo-1534224039826-c7a0eda0e6b3?q=80&w=2340&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
          //
          //         ///
          //         ),
          //     fit: BoxFit.fitHeight)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
              child: PhysicalModel(
                color: Colors.black,
                shadowColor: AppColors.blackColor,
                elevation: 5,
                child: Container(
                  height: size.height * 0.27,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    //gradient: AppColors.gradient14,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      height: size.height * 0.25,
                      width: size.width,
                      decoration: BoxDecoration(
                        ///gradient: AppColors.gradient14,
                        color: AppColors.th1wht3,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          GestureDetector(
                            onTap: () {
                              selectionController.toggleSelection(0);
                              Get.to(PreviewFormmsDetails());
                            },
                            child: Obx(
                              () => PhysicalModel(
                                color: Colors.white,
                                shadowColor: AppColors.greyColor,
                                elevation: 5,
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  height: size.height * 0.07,
                                  width: size.width * 0.8,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: selectionController.selectedIndices
                                              .contains(0)
                                          ? AppColors.th1org
                                          : Colors.transparent,
                                      width: 3,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                    color: selectionController.selectedIndices
                                            .contains(0)
                                        ? AppColors.th1org
                                        : AppColors.th1wht2,
                                    // gradient: selectionController.selectedIndices
                                    //         .contains(0)
                                    //     ? AppColors.gradient5
                                    //     : AppColors.gradient14,
                                  ),
                                  child: ThreeDtext(
                                    text: "Preview Form",
                                    fontColor: selectionController
                                            .selectedIndices
                                            .contains(0)
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: size.width * 0.045,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              selectionController.toggleSelection(1);
                              showAppleStyleDialog(context);
                            },
                            child: Obx(
                              () => PhysicalModel(
                                color: Colors.white,
                                shadowColor: AppColors.greyColor,
                                elevation: 5,
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  height: size.height * 0.07,
                                  width: size.width * 0.8,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: selectionController.selectedIndices
                                              .contains(1)
                                          ? AppColors.th1org
                                          : Colors.transparent,
                                      width: 3,
                                    ),
                                    color: selectionController.selectedIndices
                                            .contains(1)
                                        ? AppColors.th1org
                                        : AppColors.th1wht2,

                                    ///
                                    // gradient: selectionController.selectedIndices
                                    //         .contains(1)
                                    //     ? AppColors.gradient5
                                    //     : AppColors.gradient14,
                                  ),
                                  child: ThreeDtext(
                                    text: "Submit Basic Details",
                                    fontColor: selectionController
                                            .selectedIndices
                                            .contains(1)
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: size.width * 0.045,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.00,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            // Spacer(),
          ],
        ),
      ),

      // },
      //),
    );
  }
}

//import 'package:flutter/cupertino.dart';

showAppleStyleDialog(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  showCupertinoDialog(
    context: context,
    builder: (BuildContext context) {
      return CupertinoAlertDialog(
        title: Text(
          'Submit Details',
          style: GoogleFonts.poppins(
            fontSize: size.height * 0.021,
            fontWeight: FontWeight.w600,
            color: AppColors.a11,
          ),
        ),
        content: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 8.0), // Adjust padding as needed
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "To Submit Basic Details and proceed to next step Click 'Submit & Proceed. No Editing Will be allowed after Submission."
                "\n\nAfter Sucessfull Submission of Basic Details,you will be redirected for Documents Upload.Click 'Cancel' to edit or make any changes.",
                style: GoogleFonts.poppins(
                  fontSize: size.height * 0.015,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),
              ),
            ),
          ),
        ),
        actions: <Widget>[
          CupertinoDialogAction(
            child: Text(
              'Cancel',
              style: GoogleFonts.poppins(
                fontSize: size.height * 0.0165,
                fontWeight: FontWeight.w600,
                color: Colors.red,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
          ),
          CupertinoDialogAction(
            child: Text(
              'Submit & Proceed',
              style: GoogleFonts.poppins(
                fontSize: size.height * 0.0165,
                fontWeight: FontWeight.w600,
                color: Colors.green,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog

              Get.to(Sucessfulldetailupload());
              // Perform action when OK is pressed
            },
          ),
        ],
      );
    },
  );
}
