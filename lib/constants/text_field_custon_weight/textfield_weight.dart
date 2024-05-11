import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final String hintText;
  final bool obscureText;
  final String? prefixIconPath;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final int? maxLines; // Optional maxLines property

  const CustomTextField({
    Key? key,
    this.controller,
    required this.obscureText,
    required this.hintText,
    required this.keyboardType,
    this.prefixIconPath,
    this.suffixIcon,
    this.prefixIcon,
    this.validator,
    this.maxLines, // Include maxLines in the constructor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: maxLines != null ? null : 50.0, // Adjust height based on maxLines
      //height: 50.0,
      width: width,
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: AppColors.
            //th1wht2,
            a18,
        //a8,
        //t1bacgroundcolors1,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextFormField(
        style: GoogleFonts.poppins(
          fontSize: 15.0,
          fontWeight: FontWeight.w500,
          color: Colors.black, // Added text color
        ),

        cursorHeight: height * 0.03,
        obscureText: obscureText,
        cursorColor: AppColors.black,
        controller: controller,
        validator: validator,
        keyboardType: keyboardType,
        maxLines: maxLines, // Pass maxLines to TextFormField

        // maxLength: 10, // Limit the input to 10 digits

        decoration: InputDecoration(
          border: InputBorder.none,

          prefixIcon: prefixIcon ?? SizedBox(), // Use prefixIcon if provided
          suffixIcon:
              suffixIcon ?? SizedBox(), // Used ?? operator for null check
          hintText: hintText,
          hintStyle: GoogleFonts.poppins(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: AppColors.greyColor, // Added hint text color
          ),
          contentPadding: const EdgeInsets.only(top: 13.0),
        ),
      ),
    );
  }
}
