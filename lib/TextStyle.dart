import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(title: Text("TextStyle")),
            body: Center(
                child: Text("belajar style ",
                    style: TextStyle(
                        fontFamily: "Baby_Pumpkin",
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                        decoration: TextDecoration.underline,
                        // decorationColor: Colors.red,
                        decorationThickness: 2,
                        decorationStyle: TextDecorationStyle.wavy)))));
  }
}
