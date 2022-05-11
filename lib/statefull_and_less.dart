// ----------------------------- Video 9 ( Stateless & Statefull Widget )
//  Stateless = State yang bersifat static atau tidak berubah2
//  Statefull = State yang bersifat dinamis atau bisa diubah2

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int number = 0;

  void tekanTombol() {
    setState(() {
      number = number + 1;
    });
  }

  void tombolKurang() {
    setState(() {
      number = number - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Statefull Widget ( Dinamis App )")),
      body: Container(
        color: Color.fromARGB(255, 50, 175, 115),
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(number.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40 + number.toDouble())),
          ElevatedButton(
            child: Text("Tambah Bilangan"),
            onPressed: tekanTombol,
          ),
          ElevatedButton(onPressed: tombolKurang, child: Text("Tombol Kurang"))
        ]),
      ),
    ));
  }
}
