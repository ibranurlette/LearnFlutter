import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  void counterAdd() {
    setState(() {
      number = number + 1;
    });
  }

  void counterReset() {
    setState(() {
      number = 0;
    });
  }

  void counterMin() {
    setState(() {
      number = number - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Statfull Widget"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(number.toString(),
                      style: TextStyle(fontSize: 20 + number.toDouble())),
                  RaisedButton(
                    child: Text("Tambah"),
                    onPressed: counterAdd,
                  ),
                  RaisedButton(
                    child: Text("Reset"),
                    onPressed: counterReset,
                  ),
                  RaisedButton(
                    child: Text("Kurang"),
                    onPressed: counterMin,
                  )
                ],
              ),
            )));
  }
}
