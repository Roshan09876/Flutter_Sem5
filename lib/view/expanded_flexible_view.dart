import 'package:flutter/material.dart';
import 'package:secondapp/app/common/my_snackbar.dart';

class ExpanedFlexible extends StatelessWidget {
  const ExpanedFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expanded Flexible')),
      body: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height * .5,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.red),
          child: ElevatedButton(
            // style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: () {
              mySnackbar(context, 'Button1', color: Colors.red);
            },
            child: Text('Button1'),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        //Short name of Felxfit.tight is Expanded
        Expanded(
          // fit: FlexFit.tight,
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.green),
            child: ElevatedButton(
              onPressed: () {
                mySnackbar(context, 'Button2', color: Colors.green);
              },
              child: Text('Button2'),
            ),
          ),
        )
      ]),
    );
  }
}
