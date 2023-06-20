import 'package:eagles_application/customized_widgets/reused_drawer.dart';
import 'package:flutter/material.dart';

class AdvertisingScreen extends StatelessWidget {
  static const String routeName = 'My-eagles-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Advertising Screen'),
      ),
      body: Text('Advertising Screen'),
      drawer: ReusedDrawer(),
    );
  }
}
