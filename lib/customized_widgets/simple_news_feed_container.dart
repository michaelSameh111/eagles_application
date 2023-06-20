import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SimpleNewsFeedContainer extends StatelessWidget {
  String hintText;
  TextInputType keyboardType;
  int? errorMaxLines;

  SimpleNewsFeedContainer(
      {required this.hintText, required this.keyboardType, this.errorMaxLines});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.w),
          border: Border.all(color: Color(0xffe9e8e9), width: 0.4.w)),
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            errorMaxLines: 5,
            hintStyle: TextStyle(color: Color(0xffaaaaac)),
            contentPadding: EdgeInsets.all(2.h)),
        keyboardType: keyboardType,
      ),
    );
  }
}
