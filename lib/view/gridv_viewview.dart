import 'package:flutter/material.dart';

class GridViewView extends StatefulWidget {
  const GridViewView({super.key});

  @override
  State<GridViewView> createState() => _GridViewViewState();
}

class _GridViewViewState extends State<GridViewView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GridView'),
          backgroundColor: Colors.blue,
        ),
        body: GridView.count(
          padding: EdgeInsets.all(10),
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          children: [
            for (int i = 1; i <= 10; i++) ...{
              SizedBox(
                child: Card(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      '$i',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                        ),
                        
                  ),
                ),
              )
            }
          ],
        ));
  }
}

            // Card(
            //   color: Colors.yellow,
            //   child: Center(
            //       child: Text(
            //     '1',
            //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
            //   )),
            // ),
            // Card(
            //   color: Colors.amber,
            //   child: Center(
            //       child: Text(
            //     '2',
            //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
            //   )),
            // ),
