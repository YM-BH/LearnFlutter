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
            title: const Text("按钮组件"),
          ),
          body: Column(
            children: [
              elevatedButtonDemo(),
              textButtonDemo(),
              outlinedButtonDemo(),
              iconButtonDemo(),
              iconAndTextButtonDemo()
            ],
          )
      ),
    );
  }
}

/// 漂浮按钮
Widget elevatedButtonDemo() {
  return ElevatedButton(onPressed: () {
    print("ElevatedButton Pressed");
  }, child:const Text(
      "ElevatedButton"
  ));
}

/// 文本按钮，默认背景透明不带阴影，按下后，会有背景色
Widget textButtonDemo() {
  return TextButton(onPressed: () {
    print("TextButton Pressed");
  }, child: const Text("TextButton"));
}

/// 带边框的按钮
Widget outlinedButtonDemo() {
  return OutlinedButton(onPressed: () {
    print("OutlinedButton Pressed");
  },
      child: const Text("OutlinedButton")
  );
}

/// 图标按钮
Widget iconButtonDemo() {
  return IconButton(
    icon:const Icon(Icons.ios_share),
    onPressed: () {
      print("IconButton");
    },
  );
}

/// 带图标的按钮
Widget iconAndTextButtonDemo() {
  return TextButton.icon(
      onPressed: () {
        print("TextButton.icon");
      },
      icon: const Icon(Icons.send),
      label: const Text(
          "带图标的按钮"
      )
  );
}
