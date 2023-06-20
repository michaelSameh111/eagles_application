import 'package:eagles_application/customized_widgets/reused_drawer.dart';
import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  static const String routeName = 'services-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Services Screen'),
      ),
      body: Text('Services Screen'),
      drawer: ReusedDrawer(),
    );
  }
}
