import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        child: ListView(children: [
          Center(
            child: Column(
              children: [
                buildCard(Icons.abc, "This is my first comp"),
                buildCard(Icons.handshake_sharp, "This is my first comp"),
              ],
            ),
          )
        ]),
      ),
    ));
  }

  Container buildCard(IconData iconData, String text) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Card(
        child: Row(children: [
          Container(
            child: Text(text),
          ),
          Container(
            child: Icon(iconData),
          )
        ]),
      ),
    );
  }
}
