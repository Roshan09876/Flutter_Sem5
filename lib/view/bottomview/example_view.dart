import 'package:flutter/material.dart';

class ExampleView extends StatelessWidget {
  const ExampleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'ExampleView Page',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      )),
    );
  }
}
