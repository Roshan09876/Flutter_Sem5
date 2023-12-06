import 'package:flutter/material.dart';

class DateTimeView extends StatefulWidget {
  const DateTimeView({super.key});

  @override
  State<DateTimeView> createState() => _DateTimeViewState();
}

class _DateTimeViewState extends State<DateTimeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Date and Time',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(90.0),
          child: Center(
              child: Column(
            children: [
              Container(
                child: Row(children: [
                  Text('Time'),
                  Spacer(),
                  ElevatedButton(onPressed: () {}, child: Text('Change Time')),
                ]),
              ),
              SizedBox(height: 10,),
              Container(
                child: Row(children: [
                  Text('Date'),
                  Spacer(),
                  ElevatedButton(onPressed: () {}, child: Text('Change Date')),
                ]),
              ),
            ],
          )),
        ));
  }
}
