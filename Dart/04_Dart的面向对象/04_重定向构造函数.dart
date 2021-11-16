void main(List<String> args) {
  var p = Person("Kobe");
  print(p.age);
}

class Person {
  String name;
  int age;

  // 构造函数的重定向
  Person(String name): this.internal(name, 0);

  Person.internal(this.name, this.age);
}
