import 'package:flutter/material.dart';
import '../my_theme.dart';
import 'package:sizer/sizer.dart';

class EnterField extends StatelessWidget {
  // String hintText;
  String hintText;
  bool obscureText;
  String validateText;
  TextInputType keyboardType;

  EnterField({required this.hintText, required this.obscureText, required this.validateText, required this.keyboardType});


  @override
  Widget build(BuildContext context) {
    // obscureText = !obscureText;
    return TextFormField(
      obscureText: obscureText,
      validator: (value) {
        if (value == null || value.isEmpty  ) {
          return validateText;
        }
        return null;
      },
      decoration: InputDecoration(
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(1.5.w),
            borderSide: BorderSide(color: MyTheme.mainBlue, width: 0.8.w)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(1.5.w),
            borderSide: BorderSide(color: MyTheme.mainBlue, width: 2.w)),
        filled: true,
        fillColor: MyTheme.whiteColor,
        hintText: hintText,
        hintStyle: TextStyle(color: MyTheme.mainBlue),
      ),
      keyboardType: keyboardType,);

  }
}
