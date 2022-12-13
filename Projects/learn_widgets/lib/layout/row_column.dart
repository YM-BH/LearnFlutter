
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "row_column",
            style: TextStyle(
                color: Colors.orange,
                fontSize: 30
            ),
          ),
        ),
        body: Center(
          child: buildRow(),
        ),
      ),
    );
  }
}

Widget buildRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image.asset(
          "assets/images/pic1.jpg"
      ),
      Image.asset(
          "assets/images/pic2.jpg"
      ),
      Image.asset(
          "assets/images/pic3.jpg"
      )
    ],
  );
}

Widget buildColumn() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image.asset(
          "assets/images/pic1.jpg"
      ),
      Image.asset(
          "assets/images/pic2.jpg"
      ),
      Image.asset(
          "assets/images/pic3.jpg"
      )
    ],
  );
}