import 'package:flutter/material.dart';
 
class Button extends StatelessWidget {
  final String buttonText;
  final Function buttonTapped;
 
  const Button({
    super.key,
    required this.buttonText,
    required this.buttonTapped,
  });
 
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        buttonTapped();
      },
      borderRadius: BorderRadius.circular(40.0),
      child: Card(
        color: Colors.amber,
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ), 
    );
  }
}
 