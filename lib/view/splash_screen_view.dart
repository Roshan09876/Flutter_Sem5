import 'package:flutter/material.dart';
import 'package:secondapp/app/routes/app_route.dart';

class SpalashScreenView extends StatefulWidget {
  const SpalashScreenView({super.key});

  @override
  State<SpalashScreenView> createState() => _SpalashScreenViewState();
}


class _SpalashScreenViewState extends State<SpalashScreenView> {

@override
  void initState() {
    Future.delayed(Duration(seconds: 2), (){
      Navigator.pushNamed(context, AppRoute.dashboardRoute);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Center(
          child: Text(
            'Splash Screen',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 10,),
        Center(child: CircularProgressIndicator(),)
      ]),
    );
  }
}
