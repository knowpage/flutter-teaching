import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
          home: Scaffold(
              appBar: AppBar(
                title: Text('GeeksforGeeks'),
                backgroundColor: Colors.greenAccent[400],
              ), //AppBar
              body: SizedBox(
                width: 300,
                height: 300,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: 300,
                      height: 300,
                      color: Colors.red,
                    ), //Container
                    Container(
                      width: 250,
                      height: 250,
                      color: Colors.black,
                    ), //Container
                    Container(
                      height: 200,
                      width: 200,
                      color: Colors.purple,
                    ), //Container
                  ], //<Widget>[]
                ), //Center
              ) //Center
              ) //Scaffold
          ) //MaterialApp
      );
}