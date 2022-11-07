
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
          body: SwitchAndCheckbox()
      ),
    );
  }
}

class SwitchAndCheckbox extends StatefulWidget {
  SwitchAndCheckbox({super.key});
  @override
  State<StatefulWidget> createState() {
    return SwitchAndCheckboxState();
  }
}

class SwitchAndCheckboxState extends State<SwitchAndCheckbox> {
  bool switchSelected = false;
  bool checkboxSelected = false;
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Switch(
          value: switchSelected,
          onChanged: (newValue) {
            setState(() {
              switchSelected = newValue;
            });
          },
        ),
        Checkbox(
            value: checkboxSelected,
            onChanged: (newValue) {
              setState(() {
                checkboxSelected = newValue!;
              });
            })
      ],
    );
  }
}
