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
            decoration: InputDecoration(
                fillColor: Color.fromARGB(255, 229, 225, 225),
                filled: true,
                icon: const Icon(Icons.input_rounded),
                prefixIcon: const Icon(Icons.person),
                prefixText: "Name : ",
                hintText: "Masukan Nama Anda...",
                hintStyle: const TextStyle(color: Colors.black),
                prefixStyle: const TextStyle(
                    color: Color.fromARGB(255, 179, 146, 46),
                    fontWeight: FontWeight.w500),
                label: const Text("Username"),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0))),
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
