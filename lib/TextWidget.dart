import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Learn Flutter"),
            ),
            body: Center(
                child: Container(
                    color: Colors.red,
                    width: 150,
                    height: 100,
                    child: Center(
                        child: Text(
                            "Saya sedang belajar flutter di youtube dengan menggunakan leptop",
                            // maxLines: 2,
                            // overflow: TextOverflow.clip,
                            // softWrap: false,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                                fontSize: 15)))))));
  }
}
