import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/constants/reusable_3Dtext/3d_textreusable.dart';
import 'package:suvidha_app_ui/controllers/application_detail_controller.dart';
import 'package:suvidha_app_ui/screens/select_connection_dashbord/application_details_pages/upload_documents/upload_documentss.dart';

//import '../../constants/reusable_appbar/reusable_appbar.dart';

class Sucessfulldetailupload extends StatelessWidget {
  Sucessfulldetailupload({Key? key}) : super(key: key);
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
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
              color: Colors.white30,
              image: DecorationImage(
                  image: NetworkImage(
                      //'https://images.unsplash.com/photo-1600697329702-6694d2af97d8?q=80&w=2235&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                      'https://images.unsplash.com/photo-1520532622976-1bdf3b7a5af9?q=80&w=2329&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                      //'https://images.unsplash.com/photo-1567177662154-dfeb4c93b6ae?q=80&w=2264&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                      //'https://images.unsplash.com/photo-1619506147172-fda2aa1f8b6d?q=80&w=2187&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                      // 'https://images.unsplash.com/photo-1565386450292-b51df9da50af?q=80&w=1790&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                      //'https://images.unsplash.com/photo-1536418376156-ce59f73aa838?q=80&w=2340&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                      //'https://images.unsplash.com/photo-1623691456761-99530278c24b?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHx8'
                      //'https://images.unsplash.com/photo-1573720811678-cf47fc865f17?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE5fHx8ZW58MHx8fHx8'
                      // 'https://images.unsplash.com/photo-1604996221274-eccfde57025f?q=80&w=2187&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                      //'https://images.unsplash.com/photo-1588360973339-d7eb0581d30e?q=80&w=2265&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                      //'https://images.unsplash.com/photo-1579970474466-22301c101d27?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE3fHx8ZW58MHx8fHx8'
                      // 'https://images.unsplash.com/photo-1665833130884-a50faef72fd2?q=80&w=2235&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                      // 'https://images.unsplash.com/photo-1559509546-4f2fdd5d5825?q=80&w=2186&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                      //'https://images.unsplash.com/photo-1562578013-a1a2cc6e877d?q=80&w=2186&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'

                      //'https://images.unsplash.com/photo-1627221822568-7b86171a9d35?q=80&w=2427&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                      //'https://images.unsplash.com/photo-1582050041583-e6ce27a69acd?q=80&w=2188&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                      // 'https://images.unsplash.com/photo-1503427315916-2ba435dee667?q=80&w=2427&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                      // 'https://images.unsplash.com/photo-1632103996718-4a47cf68b75e?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE3fHx8ZW58MHx8fHx8'
                      //'https://images.unsplash.com/photo-1517358133568-31ec5656304e?q=80&w=2187&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                      //'https://images.unsplash.com/photo-1554735231-2250c114a31d?q=80&w=2187&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                      //'https://images.unsplash.com/photo-1610056494085-05e9fb6673ee?q=80&w=2187&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                      //'https://images.unsplash.com/photo-1509453721491-c3af5961df76?q=80&w=2235&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                      //'https://images.unsplash.com/photo-1544724569-5f546fd6f2b5?q=80&w=2187&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                      //'https://images.unsplash.com/photo-1595428645453-309f41e373e0?q=80&w=2265&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                      //'https://images.unsplash.com/photo-1534224039826-c7a0eda0e6b3?q=80&w=2340&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'

                      ///
                      ),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.01,
              ),
              Container(
                height: size.height * 0.07,
                width: size.width * 0.14,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
                child: Icon(
                  Icons.done,
                  color: Colors.white,
                  size: size.height * 0.06,
                ),
              ),
              SizedBox(
                height: size.height * 0.005,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    'Success!',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: size.width * 0.065,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.015,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    'Basic Details Saved successfully',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: size.width * 0.035,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.015,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Text(
                    'Request No: 523423444444',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: size.width * 0.04,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.015,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: PhysicalModel(
                  color: Colors.black,
                  elevation: 5,
                  child: Container(
                    height: size.height * 0.2,
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
                          color: AppColors.a1,
                          //gradient: AppColors.gradient14,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: size.height * 0.015,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.03),
                                child: Text(
                                  'Application Status : Incomplete',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: size.width * 0.04,
                                      color: Colors.red.shade800),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.03),
                                child: Text(
                                  'Application is incomplete. Upload Documents to\nComplete the application',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: size.width * 0.03,
                                      color: AppColors.a11),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            GestureDetector(
                              onTap: () {
                                selectionController.toggleSelection(0);
                                Get.to(UploadReport1());
                              },
                              child: Obx(
                                () => Container(
                                  height: size.height * 0.06,
                                  width: size.width * 0.8,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: selectionController.selectedIndices
                                              .contains(0)
                                          ? Colors.white
                                          : Colors.transparent,
                                      width: 3,
                                    ),
                                    gradient: selectionController
                                            .selectedIndices
                                            .contains(0)
                                        ? AppColors.gradient5
                                        : AppColors.gradient14,
                                  ),
                                  child: ThreeDtext(
                                    text: "Upload Documents",
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
              // Perform action when OK is pressed
              Navigator.of(context).pop();
              //Get.to(Sucessfulldetailupload()); // Close the dialog
            },
          ),
        ],
      );
    },
  );
}
