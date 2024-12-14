// // Scaffold class - Properties - app-Bar
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
// const MyApp({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context)
// {
//   return MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: const Text('GeeksforGeeks'),
//       )),
//   );
// }}

// // Scaffold class - Properties - body
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
// const MyApp({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('GeeksforGeeks')),
//         body: const Center(
//           child: Text(
//             "Welcome to GeeksforGeeks!!!",
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 40.0,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// // Scaffold class - Properties - floatingActionButton
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
// const MyApp({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('GeeksforGeeks')),
//         body: const Center(
//           child: Text(
//             "Welcome to GeeksforGeeks!!!",
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 40.0,
//             ),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           elevation: 10.0,
//           child: const Icon(Icons.add),
//           onPressed: () {
//             // action on button press
//           },
//         ),
//       ),
//     );
//   }
// }

// // Scaffold class - Properties - drawer
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
// const MyApp({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('GeeksforGeeks')),
//         body: const Center(
//           child: Text(
//             "Welcome to GeeksforGeeks!!!",
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 40.0,
//             ),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           elevation: 10.0,
//           child: const Icon(Icons.add),
//           onPressed: () {
//             // action on button press
//           },
//         ),
//         drawer: Drawer(
//           child: ListView(
//             children: const <Widget>[
//               DrawerHeader(
//                 decoration: BoxDecoration(
//                   color: Colors.green,
//                 ),
//                 child: Text(
//                   'GeeksforGeeks',
//                   style: TextStyle(
//                     color: Colors.green,
//                     fontSize: 24,
//                   ),
//                 ),
//               ),
//               ListTile(
//                 title: Text('Item 1'),
//               ),
//               ListTile(
//                 title: Text('Item 2'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// // Scaffold class - Properties - bottomNavigationBar
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
// const MyApp({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('GeeksforGeeks')),
//         body: const Center(
//           child: Text(
//             "Welcome to GeeksforGeeks!!!",
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 40.0,
//             ),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           elevation: 10.0,
//           child: const Icon(Icons.add),
//           onPressed: () {
//             // action on button press
//           },
//         ),
//         drawer: Drawer(
//           child: ListView(
//             children: const <Widget>[
//               DrawerHeader(
//                 decoration: BoxDecoration(
//                   color: Colors.green,
//                 ),
//                 child: Text(
//                   'GeeksforGeeks',
//                   style: TextStyle(
//                     color: Colors.green,
//                     fontSize: 24,
//                   ),
//                 ),
//               ),
//               ListTile(
//                 title: Text('Item 1'),
//               ),
//               ListTile(
//                 title: Text('Item 2'),
//               ),
//             ],
//           ),
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//             currentIndex: 0,
//             fixedColor: Colors.green,
//             items: const [
//               BottomNavigationBarItem(
//                 label: "Home",
//                 icon: Icon(Icons.home),
//               ),
//               BottomNavigationBarItem(
//                 label: "Search",
//                 icon: Icon(Icons.search),
//               ),
//               BottomNavigationBarItem(
//                 label: "Profile",
//                 icon: Icon(Icons.account_circle),
//               ),
//             ],
//             onTap: (int indexOfItem) {}),
      
//       ),
//     );
//   }
// }

