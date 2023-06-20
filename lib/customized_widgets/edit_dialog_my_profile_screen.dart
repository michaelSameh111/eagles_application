import 'package:flutter/material.dart';

///////////////// kont hasta5demo w la3'eito /////////////////

class EditDialogMyProfileScreen extends StatefulWidget {
  @override
  _EditDialogMyProfileScreenState createState() => _EditDialogMyProfileScreenState();
}

class _EditDialogMyProfileScreenState extends State<EditDialogMyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Edit'),
      content: Text('What would you like to edit?'),
      actions: [
        TextButton(
          child: Text('Profile'),
          onPressed: () {
            // Navigate to edit profile screen
            Navigator.of(context).pop('profile');
          },
        ),
        TextButton(
          child: Text('Password'),
          onPressed: () {
            // Navigate to edit password screen
            Navigator.of(context).pop('password');
          },
        ),
        TextButton(
          child: Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}