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
            appBar: AppBar(title: Text("Flexible layour")),
            body: Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.red,
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.yellow,
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.pink,
                          )),
                    ],
                  ),
                ),
                Flexible(
                    flex: 2,
                    child: Container(
                      color: Colors.blue,
                    )),
                Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.amber,
                    ))
              ],
            )));
  }
}
