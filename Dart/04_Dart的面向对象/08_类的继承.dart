void main(List<String> args) {

  var p = Person("Lebron", 37);
}

class Animal {
  int age;
  Animal(this.age);
}

class Person extends Animal {
  String name;

  Person(this.name, int age) : super(age);
}
