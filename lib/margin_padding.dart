// -------------------------- Video 8 ( Container Widget )
// Margin Padding
// Decoration - gradient

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Latihan Container")),
            body: Container(
                color: Colors.red,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[Colors.amber, Colors.blue])),
                ))));
  }
}
