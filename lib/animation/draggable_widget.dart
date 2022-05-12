import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.red;
  var targetColor;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Draggable , DragTarget, SizedBox & Material Widget"),
        ),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Draggable<Color>(
                feedback: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Color.fromARGB(255, 0, 104, 55).withOpacity(0.5),
                    shape: StadiumBorder(),
                    elevation: 10,
                  ),
                ),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color1,
                    shape: StadiumBorder(),
                    elevation: 10,
                  ),
                ),
              ),
            ],
          ),
          DragTarget<Color>(
            onWillAccept: (value) => true,
            onAccept: (value) {
              isAccepted = true;
              targetColor = value;
            },
            builder: (context, candidates, rejected) {
              return (isAccepted)
                  ? SizedBox(
                      width: 100,
                      height: 50,
                      child: Material(
                        color: targetColor,
                        shape: StadiumBorder(),
                        elevation: 10,
                      ),
                    )
                  : SizedBox(
                      width: 100,
                      height: 100,
                      child: Material(
                        color: Colors.red,
                        shape: StadiumBorder(),
                        elevation: 10,
                      ),
                    );
            },
          )
        ]),
      ),
    );
    ;
  }
}
