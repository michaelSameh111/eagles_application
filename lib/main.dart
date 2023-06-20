import 'package:eagles_application/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'screens/advertising_screen.dart';
import 'screens/attendance_screen.dart';
import 'screens/extra_points_screen.dart';
import 'screens/login_screen.dart';
import 'screens/logout_screen.dart';
import 'screens/my_eagles_screen.dart';
import 'screens/my_points_screen/add_activity_screen.dart';
import 'screens/my_points_screen/my_points_screen.dart';
import 'screens/my_profile_screen/edit_account_screen/edit_account_screen.dart';
import 'screens/my_profile_screen/edit_account_screen/edit_password_screen.dart';
import 'screens/my_profile_screen/edit_account_screen/edit_profile_screen.dart';
import 'screens/my_profile_screen/my_profile_screen.dart';
import 'screens/news_feed_screen.dart';
import 'screens/services_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: MyEaglesScreen.routeName,
          routes: {
            LoginScreen.routeName: (context) => LoginScreen(),
            NewsFeedScreen.routeName: (context) => NewsFeedScreen(),
            MyProfileScreen.routeName: (context) => MyProfileScreen(),
            EditAccountScreen.routeName: (context) => const EditAccountScreen(),
            EditProfileScreen.routeName: (context) => EditProfileScreen(),
            EditPasswordScreen.routeName: (context) => EditPasswordScreen(),
            MyPointsScreen.routeName: (context) => MyPointsScreen(),
            AddActivityScreen.routeName: (context) => AddActivityScreen(),
            MyEaglesScreen.routeName: (context) => MyEaglesScreen(),
            AdvertisingScreen.routeName: (context) => AdvertisingScreen(),
            ExtraPointsScreen.routeName: (context) => ExtraPointsScreen(),
            ServicesScreen.routeName: (context) => ServicesScreen(),
            AttendanceScreen.routeName: (context) => AttendanceScreen(),
            LogoutScreen.routeName: (context) => LogoutScreen(),
          },
          theme: MyTheme.lightTheme,
        );
      },
    );
  }
}
