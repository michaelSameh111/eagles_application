import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class MyProfileScreenContainer extends StatelessWidget {
  Color? containerColor;
  IconData? icon;
  String number;
  String containerName;

  MyProfileScreenContainer(
      {required this.containerColor,
        required this.icon,
        required this.number,
        required this.containerName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.w),
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(2.w)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 7.5.w,
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            children: [
              Text(
                number,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold),
              ),
              Text(containerName,
                  style: TextStyle(color: Colors.white, fontSize: 16.sp))
            ],
          ),
        ],
      ),
    );
  }
}
