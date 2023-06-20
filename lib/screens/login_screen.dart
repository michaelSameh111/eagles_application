import 'package:eagles_application/customized_widgets/enter_field.dart';
import 'package:eagles_application/my_theme.dart';
import 'package:eagles_application/screens/news_feed_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class LoginScreen extends StatefulWidget {
  static const String routeName = 'login-screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isChecked = false;
  final _formKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset(
            'assets/images/main_background.png',
            width: double.infinity.w,
            height: double.infinity.h,
            fit: BoxFit.fill,
          ),
          GestureDetector(
            //3ashan el keyboard ye2fel lma el user ye3mel click anywhere
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: Scaffold(
              backgroundColor: Colors.black87,
              body: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Image(
                            image: AssetImage('assets/images/eagles_icon.png')),
                        SizedBox(height: 4.h),
                        Center(
                          child: Text(
                            'SIGN IN',
                            style: Theme.of(context).primaryTextTheme.headline1,
                          ),
                        ),
                        Text(
                          'Phone',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        SizedBox(
                            height: 90,
                            child: EnterField(
                              hintText: 'Phone',
                              obscureText: false,
                              validateText: 'Please enter your phone number',
                              keyboardType: TextInputType.phone,
                            )),
                        Text(
                          'Password',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        EnterField(
                          obscureText: true,
                          hintText: 'Password',
                          validateText: 'Please enter your password',
                          keyboardType: TextInputType.visiblePassword,
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1.w),
                                color: MyTheme.whiteColor,
                                boxShadow: [
                                  BoxShadow(
                                      color: MyTheme.mainBlue, spreadRadius: 0.5.w),
                                ],
                              ),
                              width: 5.w,
                              height: 2.9.h,
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              'Remember Me',
                              style: TextStyle(color: MyTheme.whiteColor),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Container(
                          height: 7.h,
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width / 1.3.w),
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.of(context)
                                    .pushReplacementNamed(NewsFeedScreen.routeName);
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: MyTheme.mainBlue,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2.w))),
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                  fontSize: 13.sp, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
