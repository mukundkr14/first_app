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
      body: Container(
        child: Center(child: Text("Hi mk!")),
      ),
    );
  }
}
