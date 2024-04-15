import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/buttons/horizontal_button.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';
import 'package:suvidha_app_ui/controllers/vrify_mobile_controllers11.dart';
import 'package:suvidha_app_ui/screens/verify_mobilescreens/verify_otp2.dart';

import '../../constants/reusable_appbar/reusable_appbar.dart';

class VerifyMobilenumber extends StatelessWidget {
//   @override
//   State<VerifyMobilenumber> createState() => _VerifyMobilenumberState();
// }
//
// class _VerifyMobilenumberState extends State<VerifyMobilenumber>
//     with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  int levelClock = 1 * 30;
  String otp = ''; // Hold the OTP value

  int secondsRemaining = 30;
  bool enableResend = false;
  late Timer timer;

  // @override
  // void initState() {
  //   ///todo: second timer button
  //   // timer = Timer.periodic(Duration(seconds: 1), (_) {
  //   //   if (secondsRemaining != 0) {
  //   //     setState(() {
  //   //       secondsRemaining--;
  //   //     });
  //   //   } else {
  //   //     setState(() {
  //   //       enableResend = true;
  //   //     });
  //   //   }
  //   // });
  //
  //   ///todo: second timer resenf button end
  //   super.initState();
  //   _animationController = AnimationController(
  //       vsync: this, duration: Duration(seconds: levelClock));
  //
  //   _animationController!.forward();
  //
  //   _listenSmsCode();
  //   // Start the countdown timer
  //   timer = Timer.periodic(Duration(seconds: 1), (_) {
  //     if (secondsRemaining != 0) {
  //       setState(() {
  //         secondsRemaining--;
  //       });
  //     } else {
  //       setState(() {
  //         enableResend = true; // Enable resend button after 30 seconds
  //       });
  //       timer.cancel(); // Cancel the timer after 30 seconds
  //     }
  //   });
  // }
  //
  // @override
  // void dispose() {
  //   timer.cancel(); // Cancel the timer when the widget is disposed
  //
  //   // timer.cancel();
  //   SmsAutoFill().unregisterListener();
  //   _animationController!.dispose();
  //   super.dispose();
  // }
  //
  // _listenSmsCode() async {
  //   await SmsAutoFill().listenForCode();
  // }
  //
  // void _resendCode() {
  //   // Reset the timer and enable the resend button
  //   setState(() {
  //     secondsRemaining = 30;
  //     enableResend = false;
  //   });
  //   timer = Timer.periodic(Duration(seconds: 1), (_) {
  //     if (secondsRemaining != 0) {
  //       setState(() {
  //         secondsRemaining--;
  //       });
  //     } else {
  //       setState(() {
  //         enableResend = true; // Enable resend button after 30 seconds
  //       });
  //       timer.cancel(); // Cancel the timer after 30 seconds
  //     }
  //   });
  // }
  //
  // // Function to update OTP value
  // void updateOtp(String newOtp) {
  //   setState(() {
  //     otp = newOtp;
  //   });
  // }

  final GlobalKey<FormState> _formconnectionKey = GlobalKey<FormState>();

  final OTPController otpController = Get.put(OTPController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // MyConnectionController _myconnection = Get.put(MyConnectionController());
    return Scaffold(
      backgroundColor: AppColors.th1whtbackgrd,
      appBar: myAppBar(
        //backgroundColor: AppColors.white,
        title: 'Verify Mobile No.',
        leadingIcon: Icons.arrow_back_ios_outlined,
        centerTitle: true,
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
      body: SafeArea(
        child: Form(
          key: _formconnectionKey,
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.02,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.03),
                    child: Text(
                      'Please verify if the Mobile No entered is correct.',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: size.width * 0.035,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.06,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.05),
                        child: Text(
                          'Selected District.',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: size.width * 0.035,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.05),
                      child: Icon(
                        Icons.edit_outlined,
                        color: Colors.grey.shade700,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.height * 0.01),
                    child:
                        // Obx(() =>
                        PhysicalModel(
                      color: AppColors.g9,
                      shadowColor: AppColors.blackColor,
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: size.height * 0.07,
                        decoration: BoxDecoration(
                          color: AppColors.th1wht2,
                          // gradient: AppColors.gradient5,

                          //  borderRadius: ,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Container(
                                height: size.height * 0.06,
                                width: size.width * 0.4,
                                decoration: BoxDecoration(
                                  color: AppColors.th1wht3,
                                  //  borderRadius: ,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Your District:',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: size.width * 0.042,
                                      shadows: [
                                        Shadow(
                                          offset: Offset(-0.0, -0.0),
                                          blurRadius: 1.0,
                                          color: Colors.black.withOpacity(0.2),
                                        ),
                                        Shadow(
                                          offset: Offset(1.0, 1.0),
                                          blurRadius: 1.0,
                                          color: Colors.white.withOpacity(0.7),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Icon(Icons.double_arrow),
                            Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Container(
                                height: size.height * 0.06,
                                width: size.width * 0.44,
                                decoration: BoxDecoration(
                                  color: AppColors.th1wht3,
                                  // gradient: AppColors.gradient6,
                                  //  borderRadius: ,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'PATNA',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: size.width * 0.039,
                                      color: AppColors.a11,
                                      shadows: [
                                        Shadow(
                                          offset: Offset(-0.0, -0.0),
                                          blurRadius: 3.0,
                                          color: Colors.black.withOpacity(0.2),
                                        ),
                                        Shadow(
                                          offset: Offset(1.0, 1.0),
                                          blurRadius: 3.0,
                                          color: Colors.white.withOpacity(0.7),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    //),
                    ),
                SizedBox(height: size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.05),
                        child: Text(
                          'Your Mobile No.',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: size.width * 0.035,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.05),
                      child: Icon(
                        Icons.edit_outlined,
                        color: Colors.grey.shade700,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: size.height * 0.005,
                ),
                Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.height * 0.01),
                    child:
                        // Obx(() =>
                        PhysicalModel(
                      color: AppColors.g9,
                      shadowColor: AppColors.blackColor,
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: size.height * 0.07,
                        decoration: BoxDecoration(
                          // color: AppColors.a18,
                          color: AppColors.th1wht2,

                          //gradient: AppColors.gradient5,

                          //  borderRadius: ,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Container(
                                height: size.height * 0.06,
                                width: size.width * 0.4,
                                decoration: BoxDecoration(
                                  color: AppColors.th1wht3,
                                  //  borderRadius: ,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Your Phone No:',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: size.width * 0.042,
                                      shadows: [
                                        Shadow(
                                          offset: Offset(-0.0, -0.0),
                                          blurRadius: 3.0,
                                          color: Colors.black.withOpacity(0.2),
                                        ),
                                        Shadow(
                                          offset: Offset(1.0, 1.0),
                                          blurRadius: 3.0,
                                          color: Colors.white.withOpacity(0.7),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Icon(Icons.double_arrow),
                            Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Container(
                                height: size.height * 0.06,
                                width: size.width * 0.44,
                                decoration: BoxDecoration(
                                  color: AppColors.th1wht3,
                                  // gradient: AppColors.gradient6,
                                  //  borderRadius: ,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '7019380033',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: size.width * 0.039,
                                      color: AppColors.a11,
                                      shadows: [
                                        Shadow(
                                          offset: Offset(-0.0, -0.0),
                                          blurRadius: 3.0,
                                          color: Colors.black.withOpacity(0.2),
                                        ),
                                        Shadow(
                                          offset: Offset(1.0, 1.0),
                                          blurRadius: 3.0,
                                          color: Colors.white.withOpacity(0.7),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    //),
                    ),
                SizedBox(height: size.height * 0.03),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.05),
                    child: Text(
                      'Enter OTP sent to Mobile No entered.',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: size.width * 0.035,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.00,
                ),
                // Directionality(
                //   textDirection: TextDirection.ltr,
                //   child: CustomTextField(
                //     obscureText: false,
                //     hintText: 'Enter Your OTP',
                //     keyboardType: TextInputType.number,
                //     // validator: (value) {
                //     //   if (value == null || value.isEmpty) {
                //     //     return 'Please enter a phone number';
                //     //   } else if (value.length != 5) {
                //     //     return 'Phone number must be 10 digits long';
                //     //   }
                //     //   return null;
                //     // },
                //     //suffixIcon: Icon(Icons.remove_red_eye_outlined),
                //
                //     prefixIcon: Row(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       mainAxisSize: MainAxisSize.min,
                //       children: [
                //         Padding(
                //           padding: const EdgeInsets.symmetric(horizontal: 8.0),
                //           child: Icon(
                //             Icons.pin,
                //             color: Colors.black,
                //           ),
                //         ),
                //
                //         ///
                //         // Text(
                //         //   '+91 ',
                //         //   style: GoogleFonts.poppins(
                //         //     fontSize: 15.0,
                //         //     fontWeight: FontWeight.w500,
                //         //     color: Colors.black, // Added text color
                //         //   ),
                //         // ),
                //       ],
                //     ),
                //     // Icon(
                //     //   Icons.phone_android_outlined,
                //     //   color: Colors.black,
                //     // ),
                //   ),
                // ),
                SizedBox(
                  height: size.height * 0.0,
                ),

                ///add new code........for autofill..
                // Padding(
                //   padding: EdgeInsets.symmetric(
                //       horizontal: size.width * 0.045,
                //       vertical: size.height * 0.00),
                //   child: Center(
                //     child: PhysicalModel(
                //       color: AppColors.th1wht3,
                //       shadowColor: AppColors.th1wht3,
                //       elevation: 1,
                //       child: PinFieldAutoFill(
                //         codeLength: 4,
                //         // Use the state variable 'otp' to dynamically fill the fields
                //         currentCode: otp,
                //
                //         autoFocus: true,
                //
                //         /// enabled: false,
                //
                //         // listenForCode: false, // Disable SMS autofill
                //         decoration: UnderlineDecoration(
                //           lineHeight: 0,
                //           lineStrokeCap: StrokeCap.square,
                //           bgColorBuilder: PinListenColorBuilder(
                //               AppColors.a18, AppColors.black),
                //           colorBuilder: FixedColorBuilder(
                //             Colors.transparent,
                //           ),
                //         ),
                //         // Here's where updateOtp is likely called
                //         onCodeChanged: (String? newOtp) {
                //           // Call updateOtp function here
                //           updateOtp(newOtp!);
                //         },
                //       ),
                //     ),
                //   ),
                // ),
                ///add new code.....end...

                ///todo: it will be custom field for otp...
                Container(
                  /// height: size.height * 0.12,
                  width: size.width,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: size.height * 0.012),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(
                        4,
                        (index) => _buildOTPTextField(context, index),
                      ),
                    ),
                  ),
                ),
                // Observe only the parts of UI that depend on observable variables
                const SizedBox(
                  height: 10,
                ),
                Obx(() {
                  if (otpController.resendButtonEnabled) {
                    return ElevatedButton(
                      onPressed: () {
                        otpController.resetTimer();
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.disabled)) {
                              // Button is disabled
                              return Colors.grey; // Change to disabled color
                            }
                            // Button is enabled
                            return AppColors.th1org; // Change to enabled color
                          },
                        ),
                        foregroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.disabled)) {
                              // Button is disabled
                              return Colors.black.withOpacity(
                                  0.5); // Change to disabled text color
                            }
                            // Button is enabled
                            return Colors.white; // Change to enabled text color
                          },
                        ),
                      ),
                      child: Text('Resend OTP'),
                    );
                  } else {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Resend OTP in seconds:',
                          style: GoogleFonts.roboto(
                            color: AppColors.black,
                            //fontSize: 14
                          ),
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

                ///submit
                // ElevatedButton(
                //   onPressed: () {
                //     otpController.submitOTP();
                //     // Reset timer after OTP submission
                //     otpController.resetTimer();
                //     //otpController.onClose();
                //   },
                //   child: Text('Submit'),
                // ),

                ///todo: end custom otp....

                ///add new otp....
                // Text(
                //   tOtpTitle,
                //   style: GoogleFonts.montserrat(
                //       fontWeight: FontWeight.bold, fontSize: 80.0),
                // ),
                ///
                // Text(tOtpSubTitle.toUpperCase(),
                //     style: Theme.of(context).textTheme.headline6),
                /// SizedBox(height: 40.0),
                // Text("$tOtpMessage support@codingwitht.com",
                //     textAlign: TextAlign.center),
                ///otp: Package...
                // const SizedBox(height: 20.0),
                // OtpTextField(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     numberOfFields: 4,
                //     fillColor: Colors.red.withOpacity(0.1),
                //     filled: true,
                //     onSubmit: (code) => print("OTP is => $code")),
                // const SizedBox(height: 10.0),

                ///otp: Package...

                const SizedBox(
                  height: 10,
                ),

                ///todo: resend...
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     const Text("Resend code after: "),
                //     Countdown(
                //       animation: StepTween(
                //         begin: levelClock, // THIS IS A USER ENTERED NUMBER
                //         end: 0,
                //       ).animate(_animationController!),
                //     ),
                //   ],
                // ),
                ///resend red button

                // SizedBox(
                //   height: 36,
                //   width: 100,
                //   child: ElevatedButton(
                //     onPressed: enableResend
                //         ? () {
                //             _resendCode(); // Resend code function
                //             _animationController!.reset();
                //             _animationController!.forward();
                //             // Get.back(); // Navigate back
                //           }
                //         : null,
                //     style: ButtonStyle(
                //       backgroundColor: MaterialStateProperty.resolveWith<Color>(
                //         (Set<MaterialState> states) {
                //           if (states.contains(MaterialState.disabled)) {
                //             // Button is disabled
                //             return Colors.grey; // Change to disabled color
                //           }
                //           // Button is enabled
                //           return AppColors.th1org; // Change to enabled color
                //         },
                //       ),
                //       foregroundColor: MaterialStateProperty.resolveWith<Color>(
                //         (Set<MaterialState> states) {
                //           if (states.contains(MaterialState.disabled)) {
                //             // Button is disabled
                //             return Colors.black.withOpacity(
                //                 0.5); // Change to disabled text color
                //           }
                //           // Button is enabled
                //           return Colors.white; // Change to enabled text color
                //         },
                //       ),
                //     ),
                //     child: const Text("Resend"),
                //   ),
                //
                //   ///
                //   // ElevatedButton(
                //   //   onPressed: () async {
                //   //     enableResend ? _resendCode : null;
                //   //
                //   //     Get.back();
                //   //
                //   //     //?  use this code to get sms signature for your app
                //   //     // final String signature = await SmsAutoFill().getAppSignature;
                //   //     // print("Signature: $signature");
                //   //
                //   //     _animationController!.reset();
                //   //     _animationController!.forward();
                //   //   },
                //   //   child: const Text("Resend"),
                //   // ),
                // ),

                ///todo.......     ............   ............
                ///end new code for autofill sms..
                SizedBox(height: 50),
                HorizontalButton(
                  text: 'Verify OTP',
                  onClick: () {
                    Get.to(Verifyotp2());
                    otpController.submitOTP();
                    // Reset timer after OTP submission
                    otpController.resetTimer();
                    // Your onClick logic here
                    print('Container clicked!');
                  },
                ),

                // ElevatedButton(
                //   onPressed: () {
                //     Get.to(Verifyotp2());
                //     // if (_formconnectionKey.currentState!.validate()) {
                //     //   // Form is valid, proceed with submission
                //     //   // You can access the form fields' values using _formKey.currentState!.value
                //     // }
                //     // Handle form submission
                //   },
                //   style: ElevatedButton.styleFrom(
                //     primary: AppColors.a15, // Change the button color here
                //     onPrimary: Colors.white, // Change the text color here
                //     minimumSize: Size(double.infinity,
                //         50), // Change the button height and width here
                //     padding: EdgeInsets.symmetric(
                //         vertical: 16.0), // Adjust vertical padding as needed
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(
                //           0), // Adjust border radius as needed
                //     ),
                //   ),
                //   child: Text(
                //     'Verify OTP',
                //     style: GoogleFonts.poppins(
                //       fontWeight: FontWeight.w600,
                //       fontSize: size.width * 0.041,
                //     ),
                //   ),
                // ),

                SizedBox(height: size.height * 0.02),
                // Align(
                //   alignment: Alignment.centerRight,
                //   child: Padding(
                //     padding:
                //         EdgeInsets.symmetric(horizontal: size.width * 0.03),
                //     child: Text(
                //       'Resend OTP button enable in 91 secs',
                //       style: GoogleFonts.poppins(
                //         fontWeight: FontWeight.w700,
                //         fontSize: size.width * 0.035,
                //       ),
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: size.height * 0.005,
                // ),
                // HorizontalButton
                // HorizontalButton(
                //   text: 'Verify OTP',
                //   onClick: () {
                //     Get.to(Verifyotp2());
                //     // Your onClick logic here
                //     print('Container clicked!');
                //   },
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Countdown extends AnimatedWidget {
  Countdown({Key? key, required this.animation})
      : super(key: key, listenable: animation);
  Animation<int> animation;

  @override
  build(BuildContext context) {
    Duration clockTimer = Duration(seconds: animation.value);

    String timerText =
        '${clockTimer.inMinutes.remainder(60).toString()}:${clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0')}';
    return Text(
      timerText,
      style: TextStyle(
        fontSize: 18,
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  ///custom text field weights...
  Widget _buildOTPTextField(BuildContext context, int index) {
    final OTPController otpController = Get.put(OTPController());

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

Widget _buildOTPTextField(BuildContext context, int index) {
  final OTPController otpController = Get.put(OTPController());
  Size size = MediaQuery.of(context).size;

  return PhysicalModel(
    color: Colors.transparent,
    shadowColor: AppColors.a1,
    elevation: 5,
    borderRadius: BorderRadius.circular(5),
    child: SizedBox(
      width: 59,
      // height: 70,
      child: TextFormField(
        style: TextStyle(
          color: AppColors.white,
          fontSize: size.height * 0.023,
          fontWeight: FontWeight.bold,
        ),
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
        cursorColor: AppColors.th1blue,
        decoration: InputDecoration(
          counterText: '',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
                color: Colors.transparent, width: 2), // Change color as needed
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
                color: AppColors.th1wht2, width: 3), // Change color as needed
          ),
          fillColor: AppColors.a17,
          filled: true,
        ),
      ),
    ),
  );
}
