import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(title: Text("Container Widget")),
            body: Container(
                color: Colors.red,
                margin: EdgeInsets.fromLTRB(10, 20, 40, 50),
                padding: EdgeInsets.only(bottom: 20, top: 10),
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                          colors: <Color>[Colors.black, Colors.yellow])),
                ))));
  }
}
