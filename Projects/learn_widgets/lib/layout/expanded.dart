import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded", style: TextStyle(
            fontSize: 25,
            color: Colors.amber
        ),),
      ),
      body: Center(
        child: buildExpanded(),
      ),
    );
  }
}

Widget buildExpanded() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Expanded(
          child: Image.asset("assets/images/pic1_300.jpg")
      ),
      Expanded(
        flex: 2,
        child: Image.asset("assets/images/pic2_300.jpg"),
      ),
      Expanded(
          child: Image.asset("assets/images/pic3_300.jpg")
      )
    ],
  );
}