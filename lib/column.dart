// ----------------------------- Video 7 ( Column/Row Widget )
// - Column
// - Row
// - Stack  = Lapisan widget

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(title: Text("Column And Row")),
//       body: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text('Text 1'),
//           Text("Text 2"),
//           Text("Text 3"),
//           Column(
//             children: [Text("Text 4"), Text("Text 5"), Text("Text 6")],
//           )
//         ],
//       ),
//     ));
//   }
// }

// Stack

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // background       = lapisan pertama
  // listview text    = lapisan kedua
  // button           = lapisan ketiga

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Stack Course"),
          ),
          body: Stack(
            children: [
              Column(
                children: [
                  Flexible(
                    flex: 1,
                    child: Row(children: [
                      Flexible(child: Container(color: Colors.white)),
                      Flexible(child: Container(color: Colors.black12))
                    ]),
                  ),
                  // Flexible 1
                  Flexible(
                      flex: 1,
                      child: Row(
                        children: [
                          Flexible(
                              child: Container(
                            color: Colors.black12,
                          )),
                          Flexible(
                              child: Container(
                            color: Colors.white,
                          ))
                        ],
                      ))
                  // Flexible 2
                ],
              ),
              ListView(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(15),
                        child: Text(
                          "Ini adalah lapisan tengah dari stack",
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(15),
                        child: Text(
                          "Ini adalah lapisan tengah dari stack",
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(15),
                        child: Text(
                          "Ini adalah lapisan tengah dari stack",
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(15),
                        child: Text(
                          "Ini adalah lapisan tengah dari stack",
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(15),
                        child: Text(
                          "Ini adalah lapisan tengah dari stack",
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(15),
                        child: Text(
                          "Ini adalah lapisan tengah dari stack",
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(15),
                        child: Text(
                          "Ini adalah lapisan tengah dari stack",
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(15),
                        child: Text(
                          "Ini adalah lapisan tengah dari stack",
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(15),
                        child: Text(
                          "Ini adalah lapisan tengah dari stack",
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                    onPressed: () {
                      setState() {}
                    },
                    child: Text("My Button")),
              )
            ],
          )),
    );
  }
}
