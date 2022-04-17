import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// -------------------------- Video 5 & 6 ( Basic Dart )
// Basic dasar komponen dart ( MaterialApp, Scafold, appBar, Body, center, container )
// Styling

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(title: const Text('Ini Apaan Dah Kok Keren?')),
//       body: Center(
//           child: Container(
//               color: Colors.lightBlue,
//               width: 150,
//               height: 150,
//               child: Text(
//                 'Moto Hape Didalem Hape anjay gurinjay tak kunjay',
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.w800,
//                   fontSize: 20,
//                   fontStyle: FontStyle.italic,
//                 ),
//                 textAlign: TextAlign.center,
//                 overflow: TextOverflow.clip, // text overflow
//               ))),
//     ));
//   }
// }

// ----------------------------- Video 7 ( Column/Row Widget )
// - Column
// - Row

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

// -------------------------- Video 8 ( Container Widget )
// Margin Padding
// Decoration - gradient

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Latihan Container")),
            body: Container(
                color: Colors.red,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: <Color>[Colors.amber, Colors.blue])),
                ))));
  }
}
