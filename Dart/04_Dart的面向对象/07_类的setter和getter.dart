void main(List<String> args) {
  var p = Person();

  p.setName = "KG";
  print(p.getName);
}

class Person {
  String name = "";

  // setter
  set setName(String name) {
    this.name = name;
  }

  // getter
  String get getName {
    return name;
  }
}
