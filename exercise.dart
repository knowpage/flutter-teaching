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
          body: cardLayout(),
        ));
  }

  Container cardLayout() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.purple,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          Text(
            'Dang Nguyen',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text('Android & IOS dev'),
          SizedBox(height: 20),
          Container(
            width: 200,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.call,
                          color: Colors.purple,
                          size: 24.0,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('+ 098 765 4321'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.mail,
                          color: Colors.purple,
                          size: 24.0,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('example@gmail.com'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.account_circle,
                          color: Colors.purple,
                          size: 24.0,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('@dangnguyen'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
