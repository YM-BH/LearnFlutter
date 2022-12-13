import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabBar(),
    );
  }
}

class TabBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabBarState();
  }
}

class _TabBarState extends State<TabBar> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Index ${currentIndex}"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                "images/tabs/workbench.png",
                width: 28,
              ),
              activeIcon: Image.asset(
                "images/tabs/workbench_active.png",
                width: 28,
              ),
              label: '工作台'
          ),
          BottomNavigationBarItem(
              icon: Image.asset(
                "images/tabs/discovery.png",
                width: 28,
              ),
              activeIcon: Image.asset(
                "images/tabs/discovery_active.png",
                width: 28,
              ),
              label: '发现'
          ),
          BottomNavigationBarItem(
              icon: Image.asset(
                "images/tabs/profile.png",
                width: 28,
              ),
              activeIcon: Image.asset(
                "images/tabs/profile_active.png",
                width: 28,
              ),
              label: '我的'
          )
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
