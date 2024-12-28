import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Image Example',
      home: ImageExample(),
    );
  }
}

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Asset Example'),
      ),
      body: Center(
        child: ListView(
          children: [
            Image.asset(
              'assets/avt/male.jpg',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 20),
            const Image(
              image: AssetImage('assets/avt/women.jpg'),
            ),
            const SizedBox(height: 20),
            const Image(
              image: AssetImage('assets/flutter_icons.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
