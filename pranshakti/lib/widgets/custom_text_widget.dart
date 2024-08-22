import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  const CustomTextWidget({
    this.text= "sample",
    this.fontWeight=FontWeight.w400,
    this.fontSize=18,
    this.color= const Color.fromRGBO(29, 22, 23, 1),
    this.textAlign = TextAlign.center,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  } 
}        