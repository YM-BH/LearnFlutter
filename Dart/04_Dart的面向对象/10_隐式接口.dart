void main(List<String> args) {
  final man = SuperMan();
  man.running();
  man.flying();
}

// Dart 中没有关键字来定义接口
// Dart 中的每个类都可以当做接口来使用，所以称为 隐式接口
class Runner {
  void running() {}
}

class Flyer {
  void flying() {}
}

// 该类使用 implements 关键字实现接口
// 类实现了接口，就必须要实现接口中的所有方法
class SuperMan implements Runner, Flyer {
  @override
  void running() {
    print("超人在奔跑");
  }

  @override
  void flying() {
    print("超人在飞");}
}
