import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserInputTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final String labelText;
  final bool filled;
  final TextInputType keyboardType;
  final IconData? prefixIcon;
  final Color? prefixIconColor;
  final IconData? suffixIcon;
  final Color? suffixIconColor;
  final Color? fillColor;
  final Color color;
  final BorderRadius? borderRadius;

  const UserInputTextFormField({
    Key? key,
    required this.controller,
    this.hintText,
    required this.labelText,
    this.filled = true,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    this.prefixIconColor= const Color.fromRGBO(123, 111, 114, 1),
    this.suffixIcon,
    this.suffixIconColor=const Color.fromRGBO(123, 111, 114, 1),
    this.fillColor = const Color.fromRGBO(247, 248, 248, 1),
    this.color = const Color.fromARGB(255, 239, 239, 239),
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    //final padding = mediaQuery.viewInsets.bottom + mediaQuery.size.height * 0.05;
    return Container(
      height: 60,
      width: mediaQuery.size.width * 0.9,
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            filled: filled,
            prefixIcon: Icon(
              prefixIcon,
              color:prefixIconColor,
            ),
            suffixIcon: Icon(
             suffixIcon,
             color:suffixIconColor, 
            ),
            fillColor: fillColor,
            hintText: hintText,
            label: Text(
              labelText,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(173, 164, 165, 1),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: borderRadius!,
              borderSide: BorderSide(
                color: color,
              ),
            ),
          ),
          keyboardType: keyboardType,
        ),
      ),
    );
  }
}
