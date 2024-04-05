import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';

class ReusableCustomDialog extends StatelessWidget {
  final String titleText;
  final String contentText;
  final String cancelText;
  final String submitText;
  final VoidCallback onCancelPressed;
  final VoidCallback onSubmitPressed;
  final Color? titleColor;
  final Color? contentColor;
  final Color? cancelTextColor;
  final Color? submitTextColor;
  final String? additionalText1;
  final String? additionalText2;
  final Color? additionalTextColor1;
  final Color? additionalTextColor2;

  ReusableCustomDialog({
    required this.titleText,
    required this.contentText,
    required this.cancelText,
    required this.submitText,
    required this.onCancelPressed,
    required this.onSubmitPressed,
    this.titleColor,
    this.contentColor,
    this.cancelTextColor,
    this.submitTextColor,
    this.additionalText1,
    this.additionalText2,
    this.additionalTextColor1,
    this.additionalTextColor2,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CupertinoAlertDialog(
      title: Container(
        height: size.height * 0.029,
        color: AppColors.a14,
        child: Center(
          child: Text(
            titleText,
            style: GoogleFonts.poppins(
              fontSize: size.height * 0.021,
              fontWeight: FontWeight.w600,
              color: titleColor ?? Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      content: Column(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 0.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  contentText,
                  style: GoogleFonts.poppins(
                    fontSize: size.height * 0.016,
                    fontWeight: FontWeight.w600,
                    color: contentColor ?? Colors.black,
                  ),
                ),
              ),
            ),
          ),
          if (additionalText1 != null) ...[
            SizedBox(height: 8),
            Text(
              additionalText1!,
              style: GoogleFonts.poppins(
                color: additionalTextColor1,
                fontWeight: FontWeight.w500,
                fontSize: size.height * 0.016,
              ),
            ),
          ],
          if (additionalText2 != null) ...[
            SizedBox(height: 8),
            Text(
              additionalText2!,
              style: GoogleFonts.poppins(
                color: additionalTextColor2,
                fontWeight: FontWeight.w400,
                fontSize: size.height * 0.016,
              ),
            ),
          ],
        ],
      ),
      actions: <Widget>[
        CupertinoDialogAction(
          child: Text(
            cancelText,
            style: GoogleFonts.poppins(
              fontSize: size.height * 0.0165,
              fontWeight: FontWeight.w600,
              color: cancelTextColor ?? Colors.red,
            ),
          ),
          onPressed: onCancelPressed,
        ),
        CupertinoDialogAction(
          child: Text(
            submitText,
            style: GoogleFonts.poppins(
              fontSize: size.height * 0.0165,
              fontWeight: FontWeight.w600,
              color: submitTextColor ?? Colors.green,
            ),
          ),
          onPressed: onSubmitPressed,
        ),
      ],
    );
  }
}
