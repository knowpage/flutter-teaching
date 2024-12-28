// Lecture 5 - Grid View

// // Example GridView.count

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'GridView.count Example',
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
//         title: Text('GridView.count Example'),
//       ),
//       body: GridView.count(
//         crossAxisCount: 2,
//         mainAxisSpacing: 16,
//         crossAxisSpacing: 16,
//         padding: EdgeInsets.all(16),
//         children: items.map((item) => _buildGridItem(item)).toList(),
//       ),
//     );
//   }

//   Widget _buildGridItem(Item item) {
//     return Container(
//       color: _getItemColor(item.title),
//       padding: EdgeInsets.all(16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             item.title,
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: 8),
//           Text(item.content),
//         ],
//       ),
//     );
//   }

//   Color _getItemColor(String title) {
//     switch (title) {
//       case 'Item 1':
//       case 'Item 3':
//       case 'Item 5':
//       case 'Item 7':
//       case 'Item 9':
//         return Colors.blue[100]!;
//       case 'Item 2':
//       case 'Item 4':
//       case 'Item 6':
//       case 'Item 8':
//       case 'Item 10':
//         return Colors.green[100]!;
//       default:
//         return Colors.grey[200]!;
//     }
//   }
// }

// class Item {
//   final String title;
//   final String content;

//   Item({required this.title, required this.content});
// }


// Example about Gridview.builder
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'GridView.builder Example',
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int gridItemCount = 20;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('GridView.builder Example'),
//       ),
//       body: GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//           mainAxisSpacing: 16,
//           crossAxisSpacing: 16,
//         ),
//         padding: EdgeInsets.all(16),
//         itemCount: gridItemCount,
//         itemBuilder: (context, index) {
//           return _buildGridItem(index);
//         },
//       ),
//     );
//   }

//   Widget _buildGridItem(int index) {
//     return Container(
//       color: _getItemColor(index),
//       padding: EdgeInsets.all(16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Item ${index + 1}',
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: 8),
//           Text('This is the content for Item ${index + 1}.'),
//         ],
//       ),
//     );
//   }

//   Color _getItemColor(int index) {
//     if (index % 2 == 0) {
//       return Colors.blue[100]!;
//     } else {
//       return Colors.green[100]!;
//     }
//   }
// }


// Example Gridview.extent
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView.extent Example',
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
    Item(title: 'Item 6', content: 'This is the content for Item 6.'),
    Item(title: 'Item 7', content: 'This is the content for Item 7.'),
    Item(title: 'Item 8', content: 'This is the content for Item 8.'),
    Item(title: 'Item 9', content: 'This is the content for Item 9.'),
    Item(title: 'Item 10', content: 'This is the content for Item 10.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.extent Example'),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        padding: EdgeInsets.all(16),
        children: items.map((item) => _buildGridItem(item)).toList(),
      ),
    );
  }

  Widget _buildGridItem(Item item) {
    return Container(
      color: _getItemColor(item.title),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(onPressed: (){}, child: Text('check
          '))
          SizedBox(height: 8),
          Text(item.content),
        ],
      ),
    );
  }

  Color _getItemColor(String title) {
    switch (title) {
      case 'Item 1':
      case 'Item 3':
      case 'Item 5':
      case 'Item 7':
      case 'Item 9':
        return Colors.blue[100]!;
      case 'Item 2':
      case 'Item 4':
      case 'Item 6':
      case 'Item 8':
      case 'Item 10':
        return Colors.green[100]!;
      default:
        return Colors.grey[200]!;
    }
  }
}

class Item {
  final String title;
  final String content;

  Item({required this.title, required this.content});
}