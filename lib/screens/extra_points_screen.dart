import 'package:eagles_application/customized_widgets/reused_drawer.dart';
import 'package:flutter/material.dart';

class ExtraPointsScreen extends StatelessWidget {
  static const String routeName = 'Extra-Points-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Extra Points Screen'),
      ),
      body: Text('Extra Points Screen'),
      drawer: ReusedDrawer(),
    );
  }
}
