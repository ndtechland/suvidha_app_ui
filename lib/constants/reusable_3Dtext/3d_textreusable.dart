import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThreeDtext extends StatelessWidget {
  final Color color;
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final int maxLines;
  final TextOverflow overflow;
  final Color fontColor;

  const ThreeDtext({
    Key? key,
    this.color = Colors.red, // Default color
    this.text = 'Click me!', // Default text
    this.fontSize = 16.0, // Default font size
    this.fontWeight = FontWeight.normal, // Default font weight
    this.maxLines = 1, // Default max lines
    this.overflow = TextOverflow.ellipsis, // Default overflow
    this.fontColor = Colors.black87, // Default font color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: fontColor, // Use fontColor parameter here
          shadows: [
            Shadow(
              color: Colors.black45,
              blurRadius: 1,
              offset: Offset(1, 1),
            ),
          ],
        ),
        maxLines: maxLines,
        overflow: overflow,
      ),
    );
  }
}
