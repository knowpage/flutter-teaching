// // Lec 4: Row/Column widget

// // Row class - Example
// import 'package:flutter/material.dart';

// //function to trigger build
// void main() {
// runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
// const MyApp({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context) {
// 	return MaterialApp(
// 	title: 'GeeksForGeeks',
// 	theme: ThemeData(
// 		primarySwatch: Colors.green,
// 	),// ThemeData
// 	home: const MyHomePage(),
// 	debugShowCheckedModeBanner: false,
// 	);// MaterialApp
// }
// }

// class MyHomePage extends StatefulWidget {
// const MyHomePage({Key? key}) : super(key: key);

// @override
// // ignore: library_private_types_in_public_api
// _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
// @override
// Widget build(BuildContext context) {
// 	return Scaffold(
// 	appBar: AppBar(
// 		title: const Text("GeeksForGeeks"),
// 	),// AppBar
// 	// App body consists of single Row
// 	// Row consists of three children widgets
// 	body: Row(
// 		mainAxisAlignment: MainAxisAlignment.spaceAround,
// 		children: <Widget>[
// 		Container(
// 			decoration: BoxDecoration(
// 				borderRadius: BorderRadius.circular(10), color: Colors.green),
// 			child: const Padding(
// 			padding: EdgeInsets.all(8.0),
// 			child: Text(
// 				"Geeks",
// 				style: TextStyle(color: Colors.white, fontSize: 25),
// 			),
// 			),
// 		),
// 		Container(
// 			decoration: BoxDecoration(
// 				borderRadius: BorderRadius.circular(10), color: Colors.green),
// 			child: const Padding(
// 			padding: EdgeInsets.all(8.0),
// 			child: Text(
// 				"For",
// 				style: TextStyle(color: Colors.white, fontSize: 25),
// 			),
// 			),
// 		),
// 		Container(
// 			decoration: BoxDecoration(
// 				borderRadius: BorderRadius.circular(10), color: Colors.green),
// 			child: const Padding(
// 			padding: EdgeInsets.all(8.0),
// 			child: Text(
// 				"Geeks",
// 				style: TextStyle(color: Colors.white, fontSize: 25),
// 			),
// 			),
// 		)
// 		],
// 	),
// 	);
// }
// }



// // Column class - Example
// import 'package:flutter/material.dart';

// //function to trigger build
// void main() {
// runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
// const MyApp({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context) {
// 	return MaterialApp(
// 	title: 'GeeksForGeeks',
// 	theme: ThemeData(
// 		primarySwatch: Colors.green,
// 	), // ThemeData
// 	home: const MyHomePage(),
// 	debugShowCheckedModeBanner: false,
// 	); // MaterialApp
// }
// }

// class MyHomePage extends StatefulWidget {
// const MyHomePage({Key? key}) : super(key: key);

// @override
// // ignore: library_private_types_in_public_api
// _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
// @override
// Widget build(BuildContext context) {
// 	return Scaffold(
// 	appBar: AppBar(
// 		title: const Text("GeeksForGeeks"),
// 	), // AppBar
// 	// App body consists of single Column
// 	// Column consists of three children widgets
// 	body: Column(
// 		mainAxisAlignment: MainAxisAlignment.spaceAround,
// 		children: <Widget>[
// 		Container(
// 			decoration: BoxDecoration(
// 				borderRadius: BorderRadius.circular(10), color: Colors.green),
// 			child: const Padding(
// 			padding: EdgeInsets.all(8.0),
// 			child: Text(
// 				"GeeksForGeeks",
// 				style: TextStyle(color: Colors.white, fontSize: 25),
// 			),
// 			),
// 		),
// 		Container(
// 			decoration: BoxDecoration(
// 				borderRadius: BorderRadius.circular(10), color: Colors.green),
// 			child: const Padding(
// 			padding: EdgeInsets.all(8.0),
// 			child: Text(
// 				"GeeksForGeeks",
// 				style: TextStyle(color: Colors.white, fontSize: 25),
// 			),
// 			),
// 		),
// 		Container(
// 			decoration: BoxDecoration(
// 				borderRadius: BorderRadius.circular(10), color: Colors.green),
// 			child: const Padding(
// 			padding: EdgeInsets.all(8.0),
// 			child: Text(
// 				"GeeksForGeeks",
// 				style: TextStyle(color: Colors.white, fontSize: 25),
// 			),
// 			),
// 		)
// 		],
// 	), // Column
// 	);
// }
// }


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and Column Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row and Column Example'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildRowExamples(),
            SizedBox(height: 20),
            _buildColumnExamples(),
          ],
        ),
      ),
    );
  }

  Widget _buildRowExamples() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Row Examples', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Text('MainAxisAlignment.start', style: TextStyle(fontSize: 16)),
        _buildRow(MainAxisAlignment.start, Colors.blue),
        SizedBox(height: 10),
        Text('MainAxisAlignment.center', style: TextStyle(fontSize: 16)),
        _buildRow(MainAxisAlignment.center, Colors.green),
        SizedBox(height: 10),
        Text('MainAxisAlignment.end', style: TextStyle(fontSize: 16)),
        _buildRow(MainAxisAlignment.end, Colors.orange),
        SizedBox(height: 10),
        Text('MainAxisAlignment.spaceBetween', style: TextStyle(fontSize: 16)),
        _buildRow(MainAxisAlignment.spaceBetween, Colors.purple),
        SizedBox(height: 10),
        Text('MainAxisAlignment.spaceAround', style: TextStyle(fontSize: 16)),
        _buildRow(MainAxisAlignment.spaceAround, Colors.teal),
        SizedBox(height: 10),
        Text('MainAxisAlignment.spaceEvenly', style: TextStyle(fontSize: 16)),
        _buildRow(MainAxisAlignment.spaceEvenly, Colors.red),
      ],
    );
  }

  Widget _buildRow(MainAxisAlignment alignment, Color color) {
    return Row(
      mainAxisAlignment: alignment,
      children: [
        _buildContainer(color),
        _buildContainer(color),
        _buildContainer(color),
      ],
    );
  }

  Widget _buildColumnExamples() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Column Examples', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Text('MainAxisAlignment.start', style: TextStyle(fontSize: 16)),
        _buildColumn(MainAxisAlignment.start, Colors.blue),
        SizedBox(height: 10),
        Text('MainAxisAlignment.center', style: TextStyle(fontSize: 16)),
        _buildColumn(MainAxisAlignment.center, Colors.green),
        SizedBox(height: 10),
        Text('MainAxisAlignment.end', style: TextStyle(fontSize: 16)),
        _buildColumn(MainAxisAlignment.end, Colors.orange),
        SizedBox(height: 10),
        Text('MainAxisAlignment.spaceBetween', style: TextStyle(fontSize: 16)),
        _buildColumn(MainAxisAlignment.spaceBetween, Colors.purple),
        SizedBox(height: 10),
        Text('MainAxisAlignment.spaceAround', style: TextStyle(fontSize: 16)),
        _buildColumn(MainAxisAlignment.spaceAround, Colors.teal),
        SizedBox(height: 10),
        Text('MainAxisAlignment.spaceEvenly', style: TextStyle(fontSize: 16)),
        _buildColumn(MainAxisAlignment.spaceEvenly, Colors.red),
      ],
    );
  }

  Widget _buildColumn(MainAxisAlignment alignment, Color color) {
    return Column(
      mainAxisAlignment: alignment,
      children: [
        _buildContainer(color),
        _buildContainer(color),
        _buildContainer(color),
      ],
    );
  }

  Widget _buildContainer(Color color) {
    return Container(
      width: 80,
      height: 80,
      color: color,
      margin: EdgeInsets.all(8),
    );
  }
}