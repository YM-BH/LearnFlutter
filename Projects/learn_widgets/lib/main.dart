import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("文本组件"),
        ),
        body: richTextDemo()
      ),
    );
  }
}

/// 富文本
Widget richTextDemo() {
  return const Text.rich(
    TextSpan(
      children: [
        TextSpan(
          text: "遵守",
          style: TextStyle(
            color: Colors.black
          )
        ),
        TextSpan(
          text: "《用户协议》",
          style: TextStyle(
            color: Colors.blue
          )
        )
      ]
    )
  );
}

/// Text组件
Widget textDemo() {
  return const Text(
    "这是一段文字，这是一段文字，这是一段文字，这是一段文字，这是一段文字，",
    style: TextStyle(
      color: Colors.orange,
      fontSize: 20,
      backgroundColor: Colors.green,
      fontWeight: FontWeight.bold,
      letterSpacing: 4,
    ),
    maxLines: 1,
    overflow: TextOverflow.ellipsis,
    textAlign: TextAlign.center,
  );
}


