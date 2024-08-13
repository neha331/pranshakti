import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final double fontSize;
  final FontWeight fontWeight;

  const CustomTextWidget({
    this.text= "sample",
    this.fontWeight=FontWeight.w400,
    this.fontSize=18,
    this.color= const Color.fromRGBO(29, 22, 23, 1),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
       text,
       style: GoogleFonts.poppins(
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: color,
            ),
          );
    
  }
  
}        