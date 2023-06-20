import 'package:eagles_application/customized_widgets/reused_drawer.dart';
import 'package:flutter/material.dart';

class AttendanceScreen extends StatelessWidget {
  static const String routeName = 'attendance-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance Screen'),
      ),
      body: Text('Attendance Screen'),
      drawer: ReusedDrawer(),
    );
  }
}
