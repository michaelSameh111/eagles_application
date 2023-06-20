import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SimpleEditPasswordContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 3.h,
        ),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.w),
                border:
                Border.all(color: Color(0xffe9e8e9), width: 0.4.w)),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(2.h),
              ),
            )),
        SizedBox(
          height: 3.h,
        ),
      ],
    );
  }
}
