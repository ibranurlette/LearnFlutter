import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "This is Text";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(title: Text("Anonymous Method")),
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(message),
                RaisedButton(
                  child: Text("Press me"),
                  onPressed: () {
                    setState(() {
                      message = "The button on press";
                    });
                  },
                ),
                RaisedButton(
                  child: Text("Reset me"),
                  onPressed: () {
                    setState(() {
                      message = "This is Text";
                    });
                  },
                )
              ],
            ))));
  }
}
