import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Page")),
      body: Center(
          child: ElevatedButton(
        child: Text("Back"),
        onPressed: () => {Navigator.pop(context)},
      )),
    );
  }
}
