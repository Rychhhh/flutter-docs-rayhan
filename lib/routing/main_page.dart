import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Main Page")),
      body: Center(
          child: ElevatedButton(
        child: Text("Product Page"),
        onPressed: () => {},
      )),
    );
  }
}
