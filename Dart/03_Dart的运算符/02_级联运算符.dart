main(List<String> args) {
  
  // 级联运算符 ..
  // 使用级联运算符可以进行 链式调用
  var p = Person()
          ..name = "Lebron"
          ..run()
          ..eat();
}

class Person {
  var name;

  eat() {
    print("eat");
  }

  run() {
    print("run");
  }
}
