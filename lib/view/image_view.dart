import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image View'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipOval(child: Image.asset('assets/images/hd1.jpg')),
              SizedBox(
                height: 25,
              ),
              Image.network(
                  'https://onlinejpgtools.com/images/examples-onlinejpgtools/sunflower.jpg'),
              SizedBox(
                height: 25,
              ),
              Image.asset('assets/images/background.jpg'),
              SizedBox(
                height: 25,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image.asset(
                  'assets/images/background2.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
