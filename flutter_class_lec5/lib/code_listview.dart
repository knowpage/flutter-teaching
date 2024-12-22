// Lecture 5 - List View

// // Default ListView
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'ListView Example',
//       home: ListViewExample(),
//     );
//   }
// }

// class ListViewExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ListView Example'),
//       ),
//       body: ListView(
//         children: [
//           ListTile(
//             title: Text('Item 1'),
//             tileColor: Colors.grey[200],
//           ),
//           ListTile(
//             title: Text('Item 2'),
//             tileColor: Colors.white,
//           ),
//           ListTile(
//             title: Text('Item 3'),
//             tileColor: Colors.grey[200],
//           ),
//           ListTile(
//             title: Text('Item 4'),
//             tileColor: Colors.white,
//           ),
//           ListTile(
//             title: Text('Item 5'),
//             tileColor: Colors.grey[200],
//           ),
//         ],
//       ),
//     );
//   }
// }


// // Example about ListView.Builder
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'ListView.builder Example',
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   List<Item> items = [
//     Item(title: 'Item 1', content: 'This is the content for Item 1.'),
//     Item(title: 'Item 2', content: 'This is the content for Item 2.'),
//     Item(title: 'Item 3', content: 'This is the content for Item 3.'),
//     Item(title: 'Item 4', content: 'This is the content for Item 4.'),
//     Item(title: 'Item 5', content: 'This is the content for Item 5.'),
//     Item(title: 'Item 6', content: 'This is the content for Item 6.'),
//     Item(title: 'Item 7', content: 'This is the content for Item 7.'),
//     Item(title: 'Item 8', content: 'This is the content for Item 8.'),
//     Item(title: 'Item 9', content: 'This is the content for Item 9.'),
//     Item(title: 'Item 10', content: 'This is the content for Item 10.'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ListView.builder Example'),
//       ),
//       body: ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           return _buildListItem(items[index], index);
//         },
//       ),
//     );
//   }

//   Widget _buildListItem(Item item, int index) {
//     return Container(
//       color: index % 2 == 0 ? Colors.grey[200] : Colors.white,
//       padding: EdgeInsets.all(16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             item.title,
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: 8),
//           Text(item.content),
//         ],
//       ),
//     );
//   }
// }

// class Item {
//   final String title;
//   final String content;

//   Item({required this.title, required this.content});
// }


// // Example about ListView.seperated
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'ListView.separated Example',
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   List<Item> items = [
//     Item(title: 'Item 1', content: 'This is the content for Item 1.'),
//     Item(title: 'Item 2', content: 'This is the content for Item 2.'),
//     Item(title: 'Item 3', content: 'This is the content for Item 3.'),
//     Item(title: 'Item 4', content: 'This is the content for Item 4.'),
//     Item(title: 'Item 5', content: 'This is the content for Item 5.'),
//     Item(title: 'Item 6', content: 'This is the content for Item 6.'),
//     Item(title: 'Item 7', content: 'This is the content for Item 7.'),
//     Item(title: 'Item 8', content: 'This is the content for Item 8.'),
//     Item(title: 'Item 9', content: 'This is the content for Item 9.'),
//     Item(title: 'Item 10', content: 'This is the content for Item 10.'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ListView.separated Example'),
//       ),
//       body: ListView.separated(
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           return _buildListItem(items[index], index);
//         },
//         separatorBuilder: (context, index) {
//           return Divider(
//             color: Colors.grey,
//             thickness: 1,
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildListItem(Item item, int index) {
//     return Container(
//       color: index % 2 == 0 ? Colors.grey[200] : Colors.white,
//       padding: EdgeInsets.all(16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             item.title,
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: 8),
//           Text(item.content),
//         ],
//       ),
//     );
//   }
// }

// class Item {
//   final String title;
//   final String content;

//   Item({required this.title, required this.content});
// }

// // Example about ListView.custom
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView.custom Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Item> items = [
    Item(title: 'Item 1', content: 'This is the content for Item 1.'),
    Item(title: 'Item 2', content: 'This is the content for Item 2.'),
    Item(title: 'Item 3', content: 'This is the content for Item 3.'),
    Item(title: 'Item 4', content: 'This is the content for Item 4.'),
    Item(title: 'Item 5', content: 'This is the content for Item 5.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.custom Example'),
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildListDelegate([
          _buildHeader(),
          ...items.map((item) => _buildListItem(item)).toList(),
          _buildFooter(),
        ]),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      color: Colors.blue,
      padding: EdgeInsets.all(16),
      child: Text(
        'Header',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildListItem(Item item) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(item.content),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      color: Colors.blue,
      padding: EdgeInsets.all(16),
      child: Text(
        'Footer',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}

class Item {
  final String title;
  final String content;

  Item({required this.title, required this.content});
}