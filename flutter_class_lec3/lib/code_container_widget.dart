// Lec 3: Container class

// // Container class - Properties - child
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
// const MyApp({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context) {
// 	return MaterialApp(
// 	home: Scaffold(
// 		appBar: AppBar(
// 		title: const Text("Container example"),
// 		),
// 		body: Container(
// 		child:const Text("Hello! i am inside a container!",
// 			style: TextStyle(fontSize: 20)),
// 		),
// 	),
// 	);
// }
// }


// // Container class - Properties - color
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
// const MyApp({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context) {
// 	return MaterialApp(
// 		home
// 		: Scaffold(appBar
// 				: AppBar(title
// 							: const Text("Container example"),
// 						),
// 					body
// 				: Container(color
// 							: Colors.purple,
// 							child
// 							: const Text("Hello! i am inside a container!",
// 									style
// 									: TextStyle(fontSize : 20)),
// 							),
// 				), 
// 	);
// }
// }


// // Container class - Properties - height and width
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
// const MyApp({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context) {
// 	return MaterialApp(
// 	home: Scaffold(
// 		appBar: AppBar(
// 		title: const Text("Container example"),
// 		),
// 		body: Container(
// 		height: 200,
// 		width: double.infinity,
// 		color: Colors.purple,
// 		child: const Text("Hello! i am inside a container!",
// 			style: TextStyle(fontSize: 20)),
// 		),
// 	),
// 	);
// }
// }

// // Container class - Properties - margin
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
// const MyApp({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context) {
// 	return MaterialApp(
// 	home: Scaffold(
// 		appBar: AppBar(
// 		title: const Text("Container example"),
// 		),
// 		body: Container(
// 		height: 200,
// 		width: double.infinity,
// 		color: Colors.purple,
// 		margin: const EdgeInsets.all(20),
// 		child: const Text("Hello! i am inside a container!",
// 			style: TextStyle(fontSize: 20)),
// 		),
// 	),
// 	);
// }
// }

// // Container class - Properties - padding
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
// const MyApp({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context) {
// 	return MaterialApp(
// 	home: Scaffold(
// 		appBar: AppBar(
// 		title: const Text("Container example"),
// 		),
// 		body: Container(
// 		height: 200,
// 		width: double.infinity,
// 		color: Colors.purple,
// 		margin: const EdgeInsets.all(20),
// 		padding: const EdgeInsets.all(30),
// 		child: const Text("Hello! i am inside a container!",
// 			style: TextStyle(fontSize: 20)),
// 		),
// 	),
// 	);
// }
// }

// // Container class - Properties - alignment
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
// const MyApp({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context) {
// 	return MaterialApp(
// 	home: Scaffold(
// 		appBar: AppBar(
// 		title: const Text("Container example"),
// 		),
// 		body: Container(
// 		height: 200,
// 		width: double.infinity,
// 		color: Colors.purple,
// 		alignment: Alignment.bottomCenter,
// 		margin: const EdgeInsets.all(20),
// 		padding: const EdgeInsets.all(30),
// 		child: const Text("Hello! i am inside a container!",
// 			style: TextStyle(fontSize: 20)),
// 		),
// 	),
// 	);
// }
// }

// // Container class - Properties - Decoration
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
// const MyApp({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context) {
// 	return MaterialApp(
// 	home: Scaffold(
// 		appBar: AppBar(
// 		title: const Text("Container example"),
// 		),
// 		body: Container(
// 		height: 200,
// 		width: double.infinity,
// 		//color: Colors.purple,
// 		alignment: Alignment.center,
// 		margin: const EdgeInsets.all(20),
// 		padding: const EdgeInsets.all(30),
// 		decoration: BoxDecoration(
// 			border: Border.all(color: Colors.black, width: 3),
// 		),
// 		child: const Text("Hello! i am inside a container!",
// 			style: TextStyle(fontSize: 20)),
// 		),
// 	),
// 	);
// }
// }

// // Container class - Properties - Transform
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
// const MyApp({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context) {
// 	return MaterialApp(
// 	home: Scaffold(
// 		appBar: AppBar(
// 		title: const Text("Container example"),
// 		),
// 		body: Container(
// 		height: 200,
// 		width: double.infinity,
// 		color: Colors.purple,
// 		alignment: Alignment.center,
// 		margin: const EdgeInsets.all(20),
// 		padding: const EdgeInsets.all(30),
// 		transform: Matrix4.rotationZ(0.1),
// 		child: const Text("Hello! i am inside a container!",
// 			style: TextStyle(fontSize: 20)),
// 		),
// 	),
// 	);
// }
// }

