import 'package:flutter/material.dart';

class RowsColumn extends StatelessWidget {
  const RowsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rows and Column')),
      body: Column(children: [
        Row(
          children: [
            Container(
              height: 70,
              width: 150,
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                child: Text(
                  'Container1',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            Container(
              height: 70,
              width: 150,
              decoration: BoxDecoration(color: Colors.red),
              child: Center(
                child: Text(
                  'Container2',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 70,
                width: 150,
                decoration: BoxDecoration(color: Colors.blue),
                child: Center(
                  child: Text(
                    'Container3',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 250,
          width: double.infinity,
          child: Center(
              child: Text(
            'Container1',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )),
          decoration: BoxDecoration(color: Color.fromARGB(255, 17, 70, 162)),
        ),
        Expanded(
          child: Container(
            height: 250,
            width: double.infinity,
            child: Center(
                child: Text(
              'Container2',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )),
            decoration: BoxDecoration(color: Colors.blue),
          ),
        ),
        Expanded(
          child: Container(
            height: 250,
            width: double.infinity,
            child: Center(
                child: Text(
              'Container3',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )),
            decoration: BoxDecoration(color: Color.fromARGB(255, 17, 70, 162)),
          ),
        ),
      ]),
    );
  }
}
