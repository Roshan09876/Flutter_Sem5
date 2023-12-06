import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      useMaterial3: false,
      primarySwatch: Colors.amber,
      scaffoldBackgroundColor: Colors.grey[300],
      fontFamily: 'Montserrat ExtraBoldItalic',
      // elevatedButtonTheme: ElevatedButtonThemeData(
      //     style: ElevatedButton.styleFrom(
      //         textStyle: const TextStyle(
      //             fontWeight: FontWeight.bold,
      //             fontFamily: 'OpenSans CondensedBold'),
      //         backgroundColor: Colors.blue,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(20))))
      );
}
