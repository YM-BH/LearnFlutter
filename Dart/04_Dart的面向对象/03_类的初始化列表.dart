main(List<String> args) {
  var p = Person("LBJ", 37);
}

class Person {
  String name;
  int age;
  // 利用初始化列表赋值
  Person(this.name, int age) : this.age = age;
}
