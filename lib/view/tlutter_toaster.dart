import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FlutterToaster extends StatelessWidget {
  const FlutterToaster({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Toast')),
      body: Center(
        child: Column(children: [
          ElevatedButton(onPressed: (){
            Fluttertoast.showToast(msg: 'Clicked',
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 15,
            );
          }, child: Text('Flutter Toast Button'))
        ]),
      ),
    );
  }
}
