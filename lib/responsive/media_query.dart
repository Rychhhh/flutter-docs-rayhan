import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Media Query")),
      body: Container(
        child: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? Column(
                children: generateContent,
              )
            : Row(children: generateContent),
        // width: MediaQuery.of(context).size.width / 3,
        // height: MediaQuery.of(context).size.width / 2
      ),
    );
  }

  List<Widget> get generateContent {
    return [
      Container(color: Colors.green, width: 100, height: 100),
      Container(color: Colors.red, width: 100, height: 100),
      Container(color: Colors.blue, width: 100, height: 100)
    ];
  }
}
