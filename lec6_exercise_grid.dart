// import 'package:flutter/material.dart';
// void main() {
//   runApp(const Exercise());
// }
// class Exercise extends StatelessWidget {
//   const Exercise({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('ltinerary'),
//           centerTitle: true,
//           backgroundColor: Colors.amber,
//         ),
//         body: exerciseBody(),
//       ),
//     );
//   }
// }
// Container exerciseBody() {
//   return Container(
//     child: ListView(
//       children: List.generate(10, (index) {
//         return ListItems(
//           index: index + 1,
//         );
//       }),
//     ),
//   );
// }
// class ListItems extends StatefulWidget {
//   const ListItems({super.key, required this.index});
//   final int index;
//   @override
//   State<ListItems> createState() => _ListItemsState();
// }
// class _ListItemsState extends State<ListItems> {
//   bool giaTri = false;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(4.0),
//       child: Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.5),
//                 spreadRadius: 5,
//                 blurRadius: 7,
//                 offset: const Offset(0, 3), // changes position of shadow
//               ),
//             ],
//           ),
//           width: double.maxFinite,
//           child: Padding(
//             padding: EdgeInsets.all(8.0),
//             child:
//                 Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//               Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Step ${widget.index}',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         Text(
//                           'Step ${widget.index} - due in ${widget.index} day',
//                           style: TextStyle(fontSize: 12, color: Colors.black54),
//                         )
//                       ],
//                     ),
//                     Checkbox(
//                       tristate: true, // Example with tristate
//                       value: giaTri,
//                       onChanged: (value) {
//                         setState(() {
//                           giaTri = !giaTri;
//                         });
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     Icon(
//                       Icons.description,
//                       color: Colors.black,
//                       size: 24.0,
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: 8.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text('This is a very short description of the Step'),
//                           Text(
//                             'Description',
//                             style:
//                                 TextStyle(fontSize: 12, color: Colors.black54),
//                           )
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               )
//             ]),
//           )),
//     );
//   }
// }

// ----------------------------------------------------------------

import 'package:flutter/material.dart';

void main() {
  runApp(const Exercise());
}

class Exercise extends StatelessWidget {
  const Exercise({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'PROGRAMMING SKILLS',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 50,
          crossAxisSpacing: 50,
          padding: const EdgeInsets.all(16),
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                elevation: 10,
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.language,
                    size: 48,
                    color: Colors.white,
                  ),
                  Text(
                    'Language',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                elevation: 10,
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.picture_as_pdf,
                    size: 48,
                    color: Colors.white,
                  ),
                  Text(
                    'PDF BOOKS',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                elevation: 10,
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.videocam,
                    size: 48,
                    color: Colors.white,
                  ),
                  Text(
                    'Video Lecture',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                elevation: 10,
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.forum,
                    size: 48,
                    color: Colors.white,
                  ),
                  Text(
                    'Quiz Text',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.only(top: 0.5),
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(150, 15, 15, 15),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    elevation: 10,
                    shadowColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(100, 50),
                  ),
                  child: const Text(
                    'logout',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
