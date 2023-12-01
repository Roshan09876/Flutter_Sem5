import 'package:flutter/material.dart';
import 'package:secondapp/app/routes/app_route.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Course',
      initialRoute: AppRoute.satckviewRoute,
      routes: AppRoute.getApplicationRoute(),
    );
  }
}
