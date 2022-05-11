// ------------------------- Video 10 ( Anonymous Method )
// Tujuan : mempersingkat kinerja function dan juga hny digunakan 1x saja

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = 'ini adalah text';

  void tekanTombol() {
    setState(() {
      message = 'Tombol Telah Ditekan';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Anonymous Method"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            message,
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  message = 'tombol telah ditekan';
                });
              },
              child: Text(
                "Silakan Tekan Tombol",
                style: TextStyle(color: Colors.white),
              ))
        ],
      )),
    ));
  }
}
