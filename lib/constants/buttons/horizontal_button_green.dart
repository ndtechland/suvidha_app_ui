import 'package:flutter/material.dart';
import 'package:suvidha_app_ui/constants/colorrr.dart';

class HorizontalgreenButton extends StatefulWidget {
  final double height;
  final double width;
  final String text;
  final VoidCallback? onPressed;

  const HorizontalgreenButton({
    Key? key,
    required this.height,
    required this.width,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  _HorizontalgreenButtonState createState() => _HorizontalgreenButtonState();
}

class _HorizontalgreenButtonState extends State<HorizontalgreenButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false;
        });
        if (widget.onPressed != null) {
          widget.onPressed!();
        }
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          //gradient: AppColors.gradient2,
          color: AppColors.g2,
          borderRadius: BorderRadius.circular(10),
          boxShadow: _isPressed
              ? [
                  BoxShadow(
                    color: Colors.green.withOpacity(0.3),
                    blurRadius: 1.0,
                    spreadRadius: 5.0,
                  ),
                ]
              : [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 2.0,
                    spreadRadius: 5.0,
                  ),
                ],
        ),
        child: Center(
          child: Transform.scale(
            scale: _isPressed ? 0.95 : 1.0,
            child: Text(
              widget.text,
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: size.width * 0.039,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.black45,
                    blurRadius: 0,
                    offset: Offset(1, 1),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
