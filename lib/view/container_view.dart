import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ContainerView'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          alignment: Alignment.centerRight,
          child: Text(
            'Hello World',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}


  // child: Container(
  //       height: 280,
  //       width: 280,
  //       alignment: Alignment.center,
  //       child: Text(
  //         'Hello World',
  //         style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
  //       ),
  //       decoration: BoxDecoration(
  //           color: Colors.amber,
  //           border: Border.all(color: Colors.black, width: 2),
  //           shape: BoxShape.circle),
  //     )