import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';

class OTPController extends GetxController {
  TextEditingController otpController = TextEditingController();
  List<FocusNode> focusNodes = List.generate(4, (index) => FocusNode());
  List<String> otp = List.filled(4, '');

  String value = ''; // Hold the OTP value

  late Timer timer;
  RxInt _timerCountdown = 60.obs;
  RxBool _resendButtonEnabled = false.obs;

  // late BuildContext context;

  int get timerCountdown => _timerCountdown.value;

  bool get resendButtonEnabled => _resendButtonEnabled.value;

  // Pass a callback for focus related operations
  void requestFocus(int index, Function() requestFocusCallback) {
    requestFocusCallback();
  }

  @override
  void onInit() {
    startTimer();
    super.onInit();
    resetTimer(); // Call resetTimer() instead of startTimer()
  }

  @override
  void onClose() {
    timer.cancel();
    super.onClose();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    timer = Timer.periodic(oneSec, (Timer t) {
      if (_timerCountdown.value == 0) {
        // Access value using .value
        _resendButtonEnabled.value = true;
        t.cancel();
      } else {
        _timerCountdown.value--; // Access value using .value
        if (_timerCountdown.value == 0) {
          // Access value using .value
          _resendButtonEnabled.value = true;
        }
      }
    });
  }

  void resetTimer() {
    timer.cancel(); // Cancel existing timer
    _timerCountdown.value = 60; // Reset countdown value
    _resendButtonEnabled.value = false; // Reset resend button status
    startTimer(); // Start the timer again
  }

  void submitOTP() {
    String otpValue = otp.join('');
    // Do something with OTP like send it to server for verification
    print('Entered OTP: $otpValue');
  }
}

//   void requestFocus(int index) {
//     FocusScope.of(context).requestFocus(focusNodes[index]);
//   }
// }

class OTPScreen extends StatelessWidget {
  final OTPController otpController = Get.put(OTPController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter OTP'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                4,
                (index) => _buildOTPTextField(context, index),
              ),
            ),
            // Observe only the parts of UI that depend on observable variables
            Obx(() {
              if (otpController.resendButtonEnabled) {
                return ElevatedButton(
                  onPressed: () {
                    otpController.resetTimer();
                  },
                  child: Text('Resend OTP'),
                );
              } else {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Resend OTP in seconds:',
                      style: GoogleFonts.roboto(
                          color: AppColors.mainColor, fontSize: 14),
                    ),
                    Text(
                      ' ${otpController.timerCountdown} s',
                      style: GoogleFonts.roboto(
                        color: AppColors.th1org,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              }
            }),
            ElevatedButton(
              onPressed: () {
                otpController.submitOTP();
                // Reset timer after OTP submission
                otpController.resetTimer();
                //otpController.onClose();
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOTPTextField(BuildContext context, int index) {
    return SizedBox(
      width: 50,
      child: TextFormField(
        controller: TextEditingController(
            text: otpController.otp[index]), // Set initial text
        focusNode: otpController.focusNodes[index],
        onChanged: (value) {
          if (value.length > 1) {
            otpController.otp[index] = value.substring(value.length - 1);
            otpController.otpController.text = otpController.otp[index];
            otpController.focusNodes[index].unfocus();
            if (index < otpController.focusNodes.length - 1) {
              otpController.requestFocus(index + 1, () {
                FocusScope.of(context)
                    .requestFocus(otpController.focusNodes[index + 1]);
              });
            }
          } else if (value.isEmpty) {
            otpController.otp[index] = '';
            if (index > 0) {
              otpController.requestFocus(index - 1, () {
                FocusScope.of(context)
                    .requestFocus(otpController.focusNodes[index - 1]);
              });
            }
          } else {
            otpController.otp[index] = value;
            if (index < otpController.focusNodes.length - 1) {
              otpController.requestFocus(index + 1, () {
                FocusScope.of(context)
                    .requestFocus(otpController.focusNodes[index + 1]);
              });
            }
          }
        },
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          counterText: '',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
