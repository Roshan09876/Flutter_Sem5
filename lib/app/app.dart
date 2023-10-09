import 'package:flutter/material.dart';
import 'package:secondapp/view/dashboard_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Course',
      home: DashboardView(),
    );
  }
}