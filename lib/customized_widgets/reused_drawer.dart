import 'package:eagles_application/customized_widgets/list_title_drawer.dart';
import 'package:eagles_application/screens/advertising_screen.dart';
import 'package:eagles_application/screens/attendance_screen.dart';
import 'package:eagles_application/screens/extra_points_screen.dart';
import 'package:eagles_application/screens/logout_screen.dart';
import 'package:eagles_application/screens/my_eagles_screen.dart';
import 'package:eagles_application/screens/my_points_screen/my_points_screen.dart';
import 'package:eagles_application/screens/my_profile_screen/my_profile_screen.dart';
import 'package:eagles_application/screens/news_feed_screen.dart';
import 'package:eagles_application/screens/services_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class ReusedDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DrawerHeader(
              child: Image.asset('assets/images/logo_eagles_black.png'),
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
            ),
          ],
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10.w,
                        ),
                        CircleAvatar(
                            child: Icon(
                              Icons.face,
                            )),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          children: [
                            Text(
                              'Michael Sameh',
                              style: TextStyle(
                                  color: Colors.deepOrangeAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.sp),
                            ),
                            Text(
                              'Admin',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
              ListTitleDrawer(
                  text: 'News Feed',
                  icon: Icons.newspaper,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NewsFeedScreen()));
                  }),
              ListTitleDrawer(
                  text: 'My Profile',
                  icon: Icons.account_circle_outlined,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyProfileScreen()));
                  }),
              ListTitleDrawer(
                  text: 'My Points',
                  icon: Icons.control_point_duplicate_sharp,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyPointsScreen()));
                  }),
              ListTitleDrawer(
                  text: 'My Eagles', icon: Icons.money_outlined, onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyEaglesScreen()));
              }),
              ListTitleDrawer(
                  text: 'Advertising',
                  icon: Icons.headset_mic_rounded,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AdvertisingScreen()));
                  }),
              ListTitleDrawer(
                  text: 'Extra Points',
                  icon: Icons.card_giftcard,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExtraPointsScreen()));
                  }),
              ListTitleDrawer(
                  text: 'Services',
                  icon: Icons.assignment_turned_in_outlined,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ServicesScreen()));
                  }),
              ListTitleDrawer(
                  text: 'Attendance',
                  icon: Icons.center_focus_strong_outlined,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AttendanceScreen()));
                  }),
              ListTitleDrawer(text: 'Logout', icon: Icons.logout, onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LogoutScreen()));
              }),
              Container(
                color: Colors.grey,
                width: 50.w,
                height: 0.2.h,
              ),
              ListTitleDrawer(
                  text: 'Users',
                  icon: Icons.supervised_user_circle,
                  onTap: () {}),
              ListTitleDrawer(
                  text: 'Eagles', icon: Icons.money_outlined, onTap: () {}),
              ListTitleDrawer(text: 'Teams', icon: Icons.group, onTap: () {}),
            ],
          ),
        ),
      ]),
    );
  }
}
