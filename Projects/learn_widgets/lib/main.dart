import 'package:flutter/material.dart';

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
            title: const Text("TextField组件"),
          ),
          body: YMTextField()),
    );
  }
}

class YMTextField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return YMTextFieldState();
  }
}

class YMTextFieldState extends State<YMTextField> {
  TextEditingController usernameController = TextEditingController();

  @override
  void initState() {
    usernameController.addListener(() {
      print(usernameController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          autofocus: true,
          controller: usernameController,
          decoration: InputDecoration(
              labelText: "用户名",
              hintText: "请输入用户名或邮箱",
              prefixIcon: Icon(Icons.person)),
        ),
        TextField(
          decoration: InputDecoration(
              labelText: "密码", hintText: "请输入密码", prefixIcon: Icon(Icons.lock)),
          obscureText: true,
        )
      ],
    );
  }
}
