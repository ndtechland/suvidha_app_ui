import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:suvidha_app_ui/controllers/pdf_controllers/pdf_controllersss.dart';

class PDFPickerPage extends StatelessWidget {
  final PDFController _pdfcontroller = Get.put(PDFController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick PDF'),
      ),
      body: Center(
        child: GetBuilder<PDFController>(
          builder: (_) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () async {
                  await _pdfcontroller.pickPDF();
                },
                child: Text('Pick PDF'),
              ),
              SizedBox(height: 20),
              Obx(() => Column(
                    children: [
                      Text('PDF Name: ${_pdfcontroller.selectedPDFName.value}'),
                      //Text('PDF Path: ${controller.selectedPDFPath.value}'),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
