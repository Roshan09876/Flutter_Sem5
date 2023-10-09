import 'package:flutter/material.dart';
import 'package:secondapp/app/routes/app_route.dart';

class AirthemeticView extends StatefulWidget {
  const AirthemeticView({super.key});

  @override
  State<AirthemeticView> createState() => _AirthemeticViewState();
}

class _AirthemeticViewState extends State<AirthemeticView> {
  final key = GlobalKey<FormState>();
  final firstController = TextEditingController();
  final secondController = TextEditingController();

  add() {
    int first = int.parse(firstController.text);
    int second = int.parse(secondController.text);

    int result = first + second;

    Navigator.pushNamed(context, AppRoute.outputRoute, arguments: result);
  }

  sub() {
    int first = int.parse(firstController.text);
    int second = int.parse(secondController.text);

    int result = first - second;

    Navigator.pushNamed(context, AppRoute.outputRoute, arguments: result);
  }

  mult() {
    int first = int.parse(firstController.text);
    int second = int.parse(secondController.text);

    int result = first * second;

    Navigator.pushNamed(context, AppRoute.outputRoute, arguments: result);
  }

  div() {
    int first = int.parse(firstController.text);
    int second = int.parse(secondController.text);

    int result = first ~/ second;

    Navigator.pushNamed(context, AppRoute.outputRoute, arguments: result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Airthemetic',
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key: key,
          child: Column(children: [
            TextFormField(
              controller: firstController,
              decoration: InputDecoration(
                labelText: 'Enter First Number',
              ),
            ),
            TextFormField(
              controller: secondController,
              decoration: InputDecoration(
                labelText: 'Enter Second Number',
              ),
            ),
            SizedBox(
              height: 12,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    if (key.currentState!.validate()) {
                      add();
                    }
                  },
                  child: Text('Addition',
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold))),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    if (key.currentState!.validate()) {
                      sub();
                    }
                  },
                  child: Text('Subtraction',
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold))),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    if (key.currentState!.validate()) {
                      mult();
                    }
                  },
                  child: Text('Multiply',
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold))),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    if (key.currentState!.validate()) {
                      div();
                    }
                  },
                  child: Text('Divide',
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold))),
            ),
          ]),
        ),
      ),
    );
  }
}
