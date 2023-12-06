import 'dart:math';

import 'package:flutter/material.dart';

class RandomNumberGenerator extends StatefulWidget {
  const RandomNumberGenerator({Key? key}) : super(key: key);

  @override
  _RandomNumberGeneratorState createState() => _RandomNumberGeneratorState();
}

class _RandomNumberGeneratorState extends State<RandomNumberGenerator> {
  // Create a random number generator
  late int randomNumber1 = 0;
  late int randomNumber2 = 0;

  // Counter to keep track of the number of clicks
  int clickCount = 0;

  int result = 0;

  void rand() {
    setState(() {
      result = randomNumber1 + randomNumber2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Num Generator'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: (clickCount < 10)
                        ? () {
                            setState(() {
                              //For generating random number using Random().nextInt()
                              randomNumber1 = Random().nextInt(100);
                              // Increment the click count
                              clickCount++;
                              rand(); // Calculate and display the result
                            });
                          }
                        : null,
                    child: Text(
                      'First num is $randomNumber1',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(190, 150),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: (clickCount < 10)
                        ? () {
                            setState(() {
                              randomNumber2 = Random().nextInt(100);
                              clickCount++;
                              rand(); // Calculate and display the result
                            });
                          }
                        : null,
                    child: Text(
                      ' Second num is $randomNumber2',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 150),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 80),
            Text(
              'Result : $randomNumber1 + $randomNumber2 = $result',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              'Your Score : $clickCount / 10',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  minimumSize: Size(0, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
                onPressed: () {
                  // Reset the click count and result when Restart button is pressed
                  setState(() {
                    clickCount = 0;
                    result = 0;
                    randomNumber1 = 0;
                    randomNumber2 = 0;
                  });
                },
                child: Text(
                  'Reset',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
