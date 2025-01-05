import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Passing state Example',
      home: Scaffold(
        body: MyHomePage(),
      ),
    );
  }
}

class CounterProvider extends InheritedWidget {
  final int count;
  final VoidCallback onIncrement;

  const CounterProvider({
    Key? key,
    required this.count,
    required this.onIncrement,
    required Widget child,
  }) : super(key: key, child: child);

  static CounterProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterProvider>();
  }

  @override
  bool updateShouldNotify(CounterProvider old) => count != old.count;
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _count = 0;

  void _incrementCounter() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      count: _count,
      onIncrement: _incrementCounter,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sharing state between widgets'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              CounterDisplay(),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _incrementCounter();
                  });
                },
                child: const Text('Increment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class CounterDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '${CounterProvider.of(context)?.count ?? 0}',
        style: const TextStyle(fontSize: 40),
      ),
    );
  }
}