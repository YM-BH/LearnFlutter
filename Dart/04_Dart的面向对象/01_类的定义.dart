main(List<String> args) {
  var p = Person("Lebron", 37);
  print(p);
}

class Person {
  String name;
  int age;

  // 构造函数
  Person(this.name, this.age);

  @override
  String toString() {
    return "name is ${name} age is ${age}";
  }
}
