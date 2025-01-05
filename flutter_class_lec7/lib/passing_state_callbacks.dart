import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Passing state Example',
      home: Scaffold(
        body: CounterWidget(),
      ),
    );
  }
}
class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 0;

  void _incrementCounter() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'You have pushed the button this many times:',
            style: TextStyle(fontSize: 40),
          ),
          const SizedBox(height: 16),
          Text(
            '$_count',
            style: const TextStyle(fontSize: 40),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: _incrementCounter,
            child: const Text('Increment'),
          ),
        ],
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sharing state between widgets'),
      ),
      body: const Center(
        child: CounterWidget(),
      ),
    );
  }
}