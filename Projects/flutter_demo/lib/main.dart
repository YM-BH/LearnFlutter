
import 'package:flutter/material.dart';
import 'channel.dart';

/// 当前频道
Channel _currentChannel = _getChannels()[0];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {

  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("新闻"),
        ),
        drawer: Drawer(
          child: ListView(
            children: _buildDrawerItems(_getChannels()),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("点击了刷新按钮");
          },
          tooltip: "刷新",
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}

/// 构建items
List<Widget> _buildDrawerItems(List<Channel> channels) {
  List<Widget> widgets = [];
  
  for (int i = 0; i < channels.length; i++) {
    widgets.add(
      Container(
        padding: const EdgeInsets.all(10),
        child: InkWell(
          child: Text(
            channels[i].name,
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 25
            ),
            textAlign: TextAlign.center,
          ),
          onTap: () {
            _currentChannel = channels[i];
            print(_currentChannel);
          },
        ),
      )
    );
  }
  
  return widgets;
}

List<Channel> _getChannels() {
  List<Channel> channels = [];
  channels.add(Channel("top", "推荐"));
  channels.add(Channel("guonei", "国内"));
  channels.add(Channel("guoji", "国际"));
  channels.add(Channel("yule", "娱乐"));
  channels.add(Channel("tiyu", "体育"));
  channels.add(Channel("junshi", "军事"));
  channels.add(Channel("keji", "科技"));
  channels.add(Channel("caijing", "财经"));
  channels.add(Channel("youxi", "游戏"));
  channels.add(Channel("qiche", "汽车"));
  channels.add(Channel("jiankang", "健康"));
  return channels;
}





