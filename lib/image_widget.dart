// Apa yang dipelajari ?
// Network Image
// Local Image
// Fit Image
// Repeat Image

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
        appBar: AppBar(
          title: Text("Image Widget"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                  color: Colors.black,
                  height: 230,
                  width: 300,
                  child: Image(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp5uzqyO36Xr_x2AU6h9H96zFZP9LX0Gt7yw&usqp=CAU'),
                    fit: BoxFit.cover,
                    repeat: ImageRepeat.repeat,
                  )),
              Container(
                width: 300,
                height: 200,
                margin: EdgeInsets.only(top: 50),
                child: Image(
                  image: AssetImage('assets/rushia.jpg'),
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
