
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("单选开关和复选框"),
        ),
        body: switchDemo()
      ),
    );
  }
}

Widget switchDemo() {
  return Switch(value: value, onChanged: onChanged)
}