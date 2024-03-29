import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
//import 'package:pdf/pdf.dart';
//import 'package:pdf/widgets.dart' as pw;

class PDFController extends GetxController {
  RxString selectedPDFName = ''.obs;
  RxString selectedPDFPath = ''.obs;

  Future<void> pickPDF() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null && result.files.isNotEmpty) {
      File pickedFile = File(result.files.single.path!);
      int fileSize = await pickedFile.length();

      if (fileSize <= 10 * 1024 * 1024) {
        // File size is within limits, proceed
        selectedPDFName.value = result.files.single.name!;
        selectedPDFPath.value = result.files.single.path!;
      } else {
        // File size exceeds limit, show error message
        Get.snackbar(
          'Error',
          'Selected PDF is too large (must be <= 10 MB)',
          duration: Duration(seconds: 3),
        );
      }
    } else {
      // User canceled the picker or no file selected
      Get.snackbar(
        'Error',
        'No PDF selected',
        duration: Duration(seconds: 3),
        backgroundGradient: AppColors.gradient5,
        backgroundColor: AppColors.golden, // Change background color
        borderColor: AppColors.a15, // Change border color
      );
    }
  }
}
