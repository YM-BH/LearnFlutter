void main(List<String> args) {
  print(Person.name);

  Person.run();
}

class Person {
  // 静态属性（类属性）
  static String name = "LBJ";

  // 静态方法（类方法）
  static void run() {
    print("跑起来");
  }
}
