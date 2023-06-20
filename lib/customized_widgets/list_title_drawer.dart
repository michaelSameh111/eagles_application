import 'package:eagles_application/my_theme.dart';
import 'package:flutter/material.dart';

class ListTitleDrawer extends StatelessWidget {
  String text;
  IconData icon;
  Function()? onTap;

  ListTitleDrawer(
      {required this.text,
        required this.icon,
        required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(
          icon,
          color: MyTheme.mainBlue,
        ),
        title: Text(text),
        onTap: onTap
    );
  }
}