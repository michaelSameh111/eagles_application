import 'package:eagles_application/customized_widgets/edit_dialog_my_profile_screen.dart';
import 'package:eagles_application/customized_widgets/my_profile_screen_container.dart';
import 'package:eagles_application/customized_widgets/reused_drawer.dart';
import 'package:eagles_application/my_theme.dart';
import 'package:eagles_application/screens/my_profile_screen/edit_account_screen/edit_account_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyProfileScreen extends StatelessWidget {
  static const String routeName = 'My-profile-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Account'), actions: [
        PopupMenuButton<String>(
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            PopupMenuItem<String>(
              // value: 'button',
              child: Text('+ Add New Post'),
            ),
          ],
          // onSelected: (String value) {
          //   if (value == 'button') {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => ElevatedButton(
          //                   onPressed: () {
          //                     // Do something when the button is pressed
          //                   },
          //                   child: Text('Elevated Button'),
          //                 )));
          //   }
          //}
        ),
      ]),
      drawer: ReusedDrawer(),
      body: Padding(
        padding: EdgeInsets.only(top: 1.h, left: 7.w, right: 7.w),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(2.w),
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            'assets/images/346110435_1433472007389490_2521949801927721753_n.jpg'),
                      ),
                    ),
                    Positioned(
                      left: 18.w,
                      top: 10.w,
                      child: Column(
                        children: [
                          CircleAvatar(
                            child: Icon(
                              Icons.person,
                              color: Color(0xff545554),
                              size: 12.w,
                            ),
                            radius: 11.w,
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            'Michael Sameh',
                            style: TextStyle(
                                fontSize: 20.sp, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text('Admin', style: TextStyle(fontSize: 15.sp)),
                          SizedBox(
                            height: 1.h,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(EditAccountScreen.routeName);
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          MyTheme.mainBlue),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(1.5.w)))),
                              child: Row(
                                children: [
                                  Icon(Icons.edit_outlined),
                                  SizedBox(
                                    width: 1.w,
                                  ),
                                  Text('Edit Profile')
                                ],
                              )),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                MyProfileScreenContainer(
                    containerColor: Color(0xff906fd0),
                    icon: Icons.volunteer_activism,
                    number: '0',
                    containerName: 'My Posts'),
                SizedBox(
                  height: 4.h,
                ),
                MyProfileScreenContainer(
                    containerColor: Color(0xff47d5f5),
                    icon: Icons.inbox,
                    number: '0',
                    containerName: 'My Activities'),
                SizedBox(
                  height: 4.h,
                ),
                MyProfileScreenContainer(
                    containerColor: Color(0xff55d4b1),
                    icon: Icons.view_in_ar,
                    number: '0',
                    containerName: 'My Points'),
                SizedBox(
                  height: 4.h,
                ),
                MyProfileScreenContainer(
                    containerColor: Color(0xff55d4b1),
                    icon: Icons.money_outlined,
                    number: '0',
                    containerName: 'My Eagles'),
                SizedBox(
                  height: 4.h,
                ),
                Container(
                  padding: EdgeInsets.all(6.w),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2.w)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'About',
                            style: MyTheme.lightTheme.primaryTextTheme.subtitle2,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(EditAccountScreen.routeName);
                                // showDialog(
                                //   context: context,
                                //   builder: (BuildContext context) {
                                //     return EditDialogMyProfileScreen();
                                //   },
                                // ).then((value) {
                                //   if (value == 'profile') {
                                //     // Do something to edit the profile
                                //   } else if (value == 'password') {
                                //     // Do something to edit the password
                                //   }
                                // });
                              },
                              child: Text(
                                'Edit',
                                style: TextStyle(color: Color(0xfffe5a2e)),
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.account_circle_outlined,
                            color: MyTheme.mainBlue,
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            'Michael Sameh',
                          )
                        ],
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.local_post_office_outlined,
                            color: MyTheme.mainBlue,
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            '',
                          )
                        ],
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: MyTheme.mainBlue,
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            '01270000000',
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Container(
                  padding: EdgeInsets.all(3.w),
                  decoration: BoxDecoration(
                    color: Color(0xfffeeed8),
                    borderRadius: BorderRadius.circular(2.w),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'You Don\'t Have Posts,',
                        style: TextStyle(color: Color(0xffa4722a)),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Add Your First Post',
                            style: TextStyle(color: Color(0xfffe5a2e)),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
