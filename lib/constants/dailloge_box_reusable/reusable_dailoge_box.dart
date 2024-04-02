import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableCustomDialog extends StatelessWidget {
  final String titleText;
  final String contentText;
  final String cancelText;
  final String submitText;
  final VoidCallback onCancelPressed;
  final VoidCallback onSubmitPressed;

  ReusableCustomDialog({
    required this.titleText,
    required this.contentText,
    required this.cancelText,
    required this.submitText,
    required this.onCancelPressed,
    required this.onSubmitPressed,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CupertinoAlertDialog(
      title: Text(
        titleText,
        style: GoogleFonts.poppins(
          fontSize: size.height * 0.021,
          fontWeight: FontWeight.w600,
          color: Colors.black, // Change to appropriate color
        ),
      ),
      content: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              contentText,
              style: GoogleFonts.poppins(
                fontSize: size.height * 0.015,
                fontWeight: FontWeight.w500,
                color: Colors.black, // Change to appropriate color
              ),
            ),
          ),
        ),
      ),
      actions: <Widget>[
        CupertinoDialogAction(
          child: Text(
            cancelText,
            style: GoogleFonts.poppins(
              fontSize: size.height * 0.0165,
              fontWeight: FontWeight.w600,
              color: Colors.red,
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
              color: Colors.green,
            ),
          ),
          onPressed: onSubmitPressed,
        ),
      ],
    );
  }
}
