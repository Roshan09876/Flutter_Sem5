import 'package:flutter/material.dart';
import 'package:secondapp/app/routes/app_route.dart';
import 'package:secondapp/theme/themedata.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Course',
      theme: getApplicationTheme(),
      initialRoute: AppRoute.calculatorRoute,
      routes: AppRoute.getApplicationRoute(),
    );
  }
}
