import 'package:flutter/material.dart';
import 'package:secondapp/app/routes/app_route.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: Size(0, 80)),
                onPressed: () {
                  //Named Route
                  Navigator.pushNamed(context, AppRoute.airthemeticRoute);
                },
                child: const Text(
                  'Airthemetic',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: Size(0, 80)),
                onPressed: () {
                  //Named Route
                  Navigator.pushNamed(context, AppRoute.randomRoute);
                },
                child: const Text(
                  'RandomNumber Genrator',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: Size(0, 80)),
                onPressed: () {
                  //Named Route
                  Navigator.pushNamed(context, AppRoute.containerRoute);
                },
                child: const Text(
                  'Container View',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: Size(0, 80)),
                onPressed: () {
                  //Named Route
                  Navigator.pushNamed(context, AppRoute.imageRoute);
                },
                child: const Text(
                  'Image View',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: Size(0, 80)),
                onPressed: () {
                  //Named Route
                  Navigator.pushNamed(context, AppRoute.student_listview);
                },
                child: const Text(
                  'Student ListView',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
