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
      title: 'Expanded Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Example'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildRowWithoutExpanded(),
            SizedBox(height: 20),
            _buildRowWithExpanded(),
            SizedBox(height: 20),
            _buildColumnWithoutExpanded(),
            SizedBox(height: 20),
            _buildColumnWithExpanded(),
          ],
        ),
      ),
    );
  }

  Widget _buildRowWithoutExpanded() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Row without Expanded', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Row(
          children: [
            _buildContainer(Colors.blue, 80),
            _buildContainer(Colors.green, 120),
            _buildContainer(Colors.orange, 100),
          ],
        ),
      ],
    );
  }

  Widget _buildRowWithExpanded() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Row with Expanded', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(child: _buildContainer(Colors.blue, 80)),
            Expanded(child: _buildContainer(Colors.green, 120)),
            Expanded(child: _buildContainer(Colors.orange, 100)),
          ],
        ),
      ],
    );
  }

  Widget _buildColumnWithoutExpanded() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Column without Expanded', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Column(
          children: [
            _buildContainer(Colors.blue, 80),
            _buildContainer(Colors.green, 120),
            _buildContainer(Colors.orange, 100),
          ],
        ),
      ],
    );
  }

  Widget _buildColumnWithExpanded() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Column with Expanded', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Column(
          children: [
            Expanded(child: _buildContainer(Colors.blue, 80)),
            Expanded(child: _buildContainer(Colors.green, 120)),
            Expanded(child: _buildContainer(Colors.orange, 100)),
          ],
        ),
      ],
    );
  }

  Widget _buildContainer(Color color, double height) {
    return Container(
      width: double.infinity,
      height: height,
      color: color,
      margin: EdgeInsets.all(8),
    );
  }
}