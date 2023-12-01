import 'package:flutter/material.dart';

class StackView extends StatelessWidget {
  const StackView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 152, 189, 218),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 750,
            width: 600,
            decoration: BoxDecoration(color: Colors.white),
            child: ClipOval(
              child: Image.network(
                  'https://i.pngimg.me/thumb/f/720/m2K9A0b1Z5G6b1i8.jpg'),
            ),
          ),
          Positioned(
            bottom: 5,
            left: 10,
            child: Container(
              height: 60,
              width: 200,
              // color: Colors.red,
              child: Row(children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.thumb_up,
                      color: Colors.blue,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.message,
                      color: Colors.red,
                    ))
              ]),
            ),
          ),
          Positioned(
            top: 60,
            right: 1,
            child: Container(
              height: 50,
              width: 50,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.edit),
              ),
            ),
          )
        ],
      ),
    );
  }
}
