main(List<String> args) {
  var p = Person.withNameAgeHeight("Melo", 38, 2.03);
  print(p);
  var p1 = Person.fromMap({"name": "Lebron", "age": 17, "height": 2.06});
  print(p1);
}

class Person {
  late String name;
  late int age;
  late double height;

  // 命名构造函数
  Person.withNameAgeHeight(this.name, this.age, this.height);

  Person.fromMap(Map<String, dynamic> map) {
    this.name = map["name"];
    this.age = map["age"];
    this.height = map["height"];
  }

  @override
  String toString() {
    return "name is $name, age is $age, height is $height";
  }
}
