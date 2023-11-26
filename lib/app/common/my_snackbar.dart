import 'package:flutter/material.dart';

mySnackbar(BuildContext context,
String message, {Color color = Colors.red,}) {
  ScaffoldMessenger.of(context).showSnackBar( SnackBar(
    backgroundColor: color,
    content: Text(
      message
    ),
    duration: Duration(seconds: 2),
    behavior: SnackBarBehavior.floating,
  ));
}
