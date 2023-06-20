import 'package:eagles_application/my_theme.dart';
import 'package:eagles_application/screens/my_points_screen/my_points_screen.dart';
import 'package:eagles_application/screens/my_profile_screen/edit_account_screen/edit_password_screen.dart';
import 'package:eagles_application/screens/my_profile_screen/edit_account_screen/edit_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class EditAccountScreen extends StatelessWidget {
  static const String routeName = 'Edit-Account-screen';

  const EditAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Account')),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 6.w),
            child: Container(
              padding: EdgeInsets.all(5.w),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(2.w)),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(EditProfileScreen.routeName);
                    },
                    child: Row(
                      children: [
                        Icon((Icons.account_circle_outlined),color: MyTheme.mainBlue,),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text('Profile',style: TextStyle(color: Colors.black),)
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(EditPasswordScreen.routeName);
                    },
                    child: Row(
                      children: [
                        Icon((Icons.lock_outline),color: MyTheme.mainBlue,),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text('Password',style: TextStyle(color: Colors.black),)
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(MyPointsScreen.routeName);
                    },
                    child: Row(
                      children: [
                        Icon((Icons.control_point_duplicate_sharp),color: MyTheme.mainBlue,),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text('My Points',style: TextStyle(color: Colors.black),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Image(image: AssetImage('assets/images/logo_eagles_black.png'),
            height: 50.h,width: 50.w)
        ],
      ),
    );
  }
}
