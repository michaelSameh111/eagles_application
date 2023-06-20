import 'package:eagles_application/customized_widgets/reused_drawer.dart';
import 'package:flutter/material.dart';

class LogoutScreen extends StatelessWidget {
  static const String routeName = 'logout-screen-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logout Screen'),
      ),
      body: Text('Logout Screen'),
      drawer: ReusedDrawer(),
    );
  }
}
