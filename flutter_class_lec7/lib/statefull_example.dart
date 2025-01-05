// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Image Example',
//       home: Scaffold(
//         body: TodoList(),
//       ),
//     );
//   }
// }

// class Todo {
//   final String title;
//   bool isCompleted;

//   Todo({required this.title, this.isCompleted = false});
// }

// class TodoList extends StatefulWidget {
//   @override
//   _TodoListState createState() => _TodoListState();
// }

// class _TodoListState extends State<TodoList> {
//   List<Todo> _todos = [
//     Todo(title: 'Mua sữa'),
//     Todo(title: 'Làm bài tập'),
//     Todo(title: 'Đi chợ'),
//   ];

//   void _toggleTodo(int index) {
//     setState(() {
//       _todos[index].isCompleted = !_todos[index].isCompleted;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Todo List'),
//       ),
//       body: ListView.builder(
//         itemCount: _todos.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(
//               _todos[index].title,
//               style: _todos[index].isCompleted
//                   ? TextStyle(decoration: TextDecoration.lineThrough)
//                   : null,
//             ),
//             trailing: Checkbox(
//               value: _todos[index].isCompleted,
//               onChanged: (value) => _toggleTodo(index),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterWidget(),
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

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Count:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '$_count',
              style: const TextStyle(fontSize: 48),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: _decrement,
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 24),
                FloatingActionButton(
                  onPressed: _increment,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}