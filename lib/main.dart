import 'package:flutter/material.dart';
import 'container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // ignore: prefer_const_constructors
        body: ColorGradient(const [
          Color.fromARGB(255, 95, 8, 161),
          Color.fromARGB(255, 130, 7, 225)
        ]),
      ),
    ),
  );
}
