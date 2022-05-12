import 'package:flutter/material.dart';
import 'package:flutter_application_1/routing/login_page.dart';

void main() {
  runApp(const MaterialApp(home: LoginPage()));
}

//  void main() => runApp(MaterialApp(home: FooClass(),));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
