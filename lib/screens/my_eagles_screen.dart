import 'package:eagles_application/customized_widgets/reused_drawer.dart';
import 'package:eagles_application/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyEaglesScreen extends StatelessWidget {
  static const String routeName = 'My-eagles-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Eagles'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 1.h, left: 7.w, right: 7.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'My Eagles (0)',
              style: MyTheme.lightTheme.primaryTextTheme.subtitle2,
            ),
            SizedBox(
              height: 4.h,
            ),
            Container(
              padding: EdgeInsets.all(6.w),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(2.w)),
              child: Row(
                children: [
                  Icon(
                    Icons.sort,
                    color: MyTheme.mainBlue,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text('1 Point = 0.25 Eagles'),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'points',
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: ReusedDrawer(),
    );
  }
}
