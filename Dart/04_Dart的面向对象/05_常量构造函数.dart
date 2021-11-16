void main(List<String> args) {
  const p1 = Person("Kobe");
  const p2 = Person("Kobe");

  print(identical(p1, p2));
}

// 常量构造函数
class Person {
  final String name;
  const Person(this.name);
}
