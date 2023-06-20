import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SimpleEditProfileContainer extends StatelessWidget {
  TextInputType keyboardType;

  SimpleEditProfileContainer({required this.keyboardType});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.w),
            border: Border.all(color: Color(0xffe9e8e9), width: 0.4.w)),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(2.h),
          ),
          keyboardType: keyboardType,
        ));
  }
}
