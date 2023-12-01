import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'Profile Page',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      )),
    );
  }
}