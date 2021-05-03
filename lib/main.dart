import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "MyApp",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MyApp"),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.center,
            // margin: const EdgeInsets.all(8),
            // color: Colors.teal,
            // color not supported with decoration, use color inside decoration
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                // shape: BoxShape.circle,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[900],
                      blurRadius: 5.0,
                      offset: Offset(4.0, 4.0))
                ],
                color: Colors.teal,
                gradient: LinearGradient(colors: [Colors.blue, Colors.white])),
            child: Text(
              "I am a box",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ));
  }
}
