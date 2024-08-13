import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final double borderRadius;
  final Gradient gradient;
  final VoidCallback onPressed;
  final Color? color;

  const CustomButton({
    Key? key,
    required this.text,
    required this.height,
    required this.width,
    required this.borderRadius,
    this.gradient= const LinearGradient(
      colors: [
         Color.fromRGBO(146, 163, 253, 1),
         Color.fromRGBO(157, 206, 255, 1),
      ],
    ), 
    required this.onPressed,
    this.color = const Color.fromRGBO(255, 255, 255, 1),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          gradient: gradient,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: GoogleFonts.rubik(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
