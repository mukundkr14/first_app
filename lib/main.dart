import 'package:first_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "MyApp",
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.indigo),
    ),
  );
}
