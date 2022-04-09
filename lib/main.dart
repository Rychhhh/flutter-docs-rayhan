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
      appBar: AppBar(title: const Text('Ini Apaan Dah Kok Keren?')),
      body: Center(
          child: Container(
              color: Colors.lightBlue,
              width: 150,
              height: 150,
              child: Text(
                'Moto Hape Didalem Hape anjay gurinjay tak kunjay',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
                maxLines: 2, // max line
                overflow: TextOverflow.clip, // text overflow
              ))),
    ));
  }
}
