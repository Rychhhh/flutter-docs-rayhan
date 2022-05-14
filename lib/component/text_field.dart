import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text("Text Field")),
      body: Container(
        margin: const EdgeInsets.all(20),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          TextField(
            // obscureText: true, = ** password
            // maxLength: 5,
            // maxLines: 10,
            onChanged: (value) {
              setState(() {});
            },
            controller: controller,
          ),
          Text(controller.text),
        ]),
      ),
    ));
  }
}
