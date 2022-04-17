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

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//             appBar: AppBar(title: Text("Latihan Container")),
//             body: Container(
//                 color: Colors.red,
//                 margin: EdgeInsets.all(10),
//                 padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
//                 child: Container(
//                   decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                           begin: Alignment.topLeft,
//                           end: Alignment.bottomRight,
//                           colors: <Color>[Colors.amber, Colors.blue])),
//                 ))));
//   }
// }

// ----------------------------- Video 9 ( Stateless & Statefull Widget )
//  Stateless = State yang bersifat static atau tidak berubah2
//  Statefull = State yang bersifat dinamis atau bisa diubah2

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => MyAppState();
// }

// class MyAppState extends State<MyApp> {
//   int number = 0;

//   void tekanTombol() {
//     setState(() {
//       number = number + 1;
//     });
//   }

//   void tombolKurang() {
//     setState(() {
//       number = number - 1;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(title: Text("Statefull Widget ( Dinamis App )")),
//       body: Container(
//         color: Color.fromARGB(255, 50, 175, 115),
//         alignment: Alignment.center,
//         padding: EdgeInsets.only(top: 20),
//         child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//           Text(number.toString(),
//               style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 40 + number.toDouble())),
//           ElevatedButton(
//             child: Text("Tambah Bilangan"),
//             onPressed: tekanTombol,
//           ),
//           ElevatedButton(onPressed: tombolKurang, child: Text("Tombol Kurang"))
//         ]),
//       ),
//     ));
//   }
// }

// ------------------------- Video 10 ( Anonymous Method )
// Tujuan : mempersingkat kinerja function dan juga hny digunakan 1x saja

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   String message = 'ini adalah text';

//   void tekanTombol() {
//     setState(() {
//       message = 'Tombol Telah Ditekan';
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         title: Text("Anonymous Method"),
//       ),
//       body: Center(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             message,
//             style: TextStyle(
//                 fontSize: 40,
//                 fontWeight: FontWeight.bold,
//                 fontStyle: FontStyle.italic),
//           ),
//           ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   message = 'tombol telah ditekan';
//                 });
//               },
//               child: Text(
//                 "Silakan Tekan Tombol",
//                 style: TextStyle(color: Colors.white),
//               ))
//         ],
//       )),
//     ));
//   }
// }