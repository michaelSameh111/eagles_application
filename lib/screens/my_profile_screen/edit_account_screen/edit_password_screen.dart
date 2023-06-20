import 'package:eagles_application/customized_widgets/simple_edit_password_container.dart';
import 'package:eagles_application/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class EditPasswordScreen extends StatelessWidget {
  static const String routeName = 'Edit-Password-screen';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Edit Password'),
        ),
        body: Container(
          width: double.infinity.w,
          margin: EdgeInsets.all(5.w),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(2.w)),
          child: Padding(
            padding: EdgeInsets.all(5.w),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Old Password',
                    ),
                    SimpleEditPasswordContainer(),
                    const Text(
                      'New Password',
                    ),
                    SimpleEditPasswordContainer(),
                    const Text(
                      'Confirm New Password',
                    ),
                    SimpleEditPasswordContainer(),
                    SizedBox(
                      height: 3.h,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          //change password
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                MyTheme.mainBlue),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(2.w)))),
                        child: Text('Change Password'))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
