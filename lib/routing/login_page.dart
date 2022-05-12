import 'package:flutter/material.dart';
import 'package:flutter_application_1/routing/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Login Page",
            style: TextStyle(fontSize: 40),
          ),
          Center(
              child: ElevatedButton(
            child: Text("Login"),
            onPressed: () => {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const MainPage()))
            },
          )),
        ],
      ),
    );
  }
}
