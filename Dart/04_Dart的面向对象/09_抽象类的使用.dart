void main(List<String> args) {
  // var s = Shape(); ❎
}

// 抽象类
// 抽象类不能实例化
abstract class Shape {
  // 抽象方法
  int getArea();

  // 普通方法
  String getInfo() {
    return "这是个形状";
  }
}

// 继承自抽象类的类，必须实现抽象类中的 抽象方法
class Rectangle extends Shape {
  @override
  int getArea() {
    return 188;
  }
}
