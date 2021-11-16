void main(List<String> args) {
  final p1 = Person.withName("LBJ");
  final p2 = Person.withName("LBJ");
  print(identical(p1, p2));
}

// 利用工厂构造函数可以手动的返回一个对象。
// 实现传入相同的 name，即认为是同一个对象的需求
// 相当于实现 Java 中的 equals 方法
class Person {
  String name;

  static final Map<String, Person> nameCache = {};

  factory Person.withName(String name) {
    if (nameCache.containsKey(name)) {
      return nameCache[name]!;
    } else {
      final p = Person(name);
      nameCache[name] = p;
      return p;
    }
  }

  Person(this.name);
}
