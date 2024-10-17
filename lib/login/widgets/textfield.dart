import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText, label;
  final int maxLines;
  final Widget? suffixIcon, prefixIcon;
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.maxLines = 1,
    this.suffixIcon,
    this.prefixIcon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.ibmPlexMono(),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          labelText: label,
          labelStyle: GoogleFonts.ibmPlexMono(color: Colors.black),
          border: const UnderlineInputBorder(
              borderSide: BorderSide(
            color: Colors.black,
          )),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
            color: Colors.black,
          ))),
      validator: (val) {
        if (val == null || val.isEmpty) {
          return 'Enter your $hintText';
        }
        return null;
      },
      maxLines: maxLines,
    );
  }
}
