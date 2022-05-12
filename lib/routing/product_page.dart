import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Page")),
      body: Center(
          child: ElevatedButton(
        child: Text("Back"),
        onPressed: () => {},
      )),
    );
  }
}
