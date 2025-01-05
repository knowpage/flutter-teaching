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
        body: MyHomePage(initialData: 'Test 123',),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String initialData;

  const MyHomePage({super.key, required this.initialData});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _data = '';

  @override
  void initState() {
    super.initState();
    _data = widget.initialData;
  }

  void _updateData(String newData) {
    setState(() {
      _data = newData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sharing State'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Data from parent:',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(_data),
            const SizedBox(height: 20),
            DataDisplayWidget(data: _data), 
          ],
        ),
      ),
    );
  }
}

class DataDisplayWidget extends StatelessWidget {
  final String data;

  const DataDisplayWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Data displayed in child:',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}