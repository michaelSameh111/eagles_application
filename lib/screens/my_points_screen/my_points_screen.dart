import 'package:eagles_application/customized_widgets/reused_drawer.dart';
import 'package:eagles_application/my_theme.dart';
import 'package:eagles_application/screens/my_points_screen/add_activity_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyPointsScreen extends StatelessWidget {
  static const String routeName = 'My-points-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Points'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'My Points (0)',
            style: MyTheme.lightTheme.primaryTextTheme.subtitle2,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AddActivityScreen.routeName);
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
              child:
                  Text('Add Activity')
               ),
        ],
      ),
      drawer: ReusedDrawer(),
    );
  }
}
