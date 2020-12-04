import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];

  int counter = 1;

  // _MyAppState() {
  //   for (int i = 0; i < 20; i++)
  //     widgets.add(
  //         Text("data ke - " + i.toString(), style: TextStyle(fontSize: 35)));
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(title: Text("List and ListView")),
            body: Center(
                child: ListView(children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      child: Text(
                        "Add Data",
                      ),
                      onPressed: () {
                        setState(() {
                          widgets.add(Text("data ke - " + counter.toString(),
                              style: TextStyle(fontSize: 35)));
                          counter++;
                        });
                      },
                    ),
                    RaisedButton(
                        child: Text(
                          "Delete Data",
                        ),
                        onPressed: () {
                          setState(() {
                            widgets.removeLast();
                            counter--;
                          });
                        })
                  ]),
              Column(
                children: widgets,
              )
            ]))));
  }
}
