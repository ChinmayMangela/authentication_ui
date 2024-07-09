import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.prefixIcon,
    required this.hintText,
    required this.isPasswordField,
    required this.controller,
  });

  final IconData prefixIcon;
  final String hintText;
  final bool isPasswordField;
  final TextEditingController controller;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: GoogleFonts.poppins(color: Colors.white, fontSize: 12),
      obscureText: isPasswordVisible,
      decoration: InputDecoration(
          fillColor: Colors.white.withOpacity(0.07),
          filled: true,
          prefixIcon: Icon(widget.prefixIcon, color: Colors.grey),
          suffixIcon: widget.isPasswordField ? IconButton(
            onPressed: () {
              setState(() {
                isPasswordVisible = !isPasswordVisible;
              });
            },
            icon: Icon(isPasswordVisible
                ? Icons.remove_red_eye
                : Icons.remove_red_eye_outlined, color: Colors.white,),
          ) : null,
          hintText: widget.hintText,
          hintStyle: GoogleFonts.poppins(color: Colors.grey, fontSize: 12),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          )),
    );
  }
}
