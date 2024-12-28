import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        title: const Text('Network Image Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Using NetworkImage
            const Image(
              image: NetworkImage('https://picsum.photos/250?image=9'),
              width: 250,
              height: 250,
            ),
            const SizedBox(height: 20),
            // Using Image.network
            Image.network(
              'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
              width: 250,
              height: 250,
            ),
          ],
        ),
      ),
    );
  }
}
