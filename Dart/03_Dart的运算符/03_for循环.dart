main(List<String> args) {
  // 传统 for 循环
  for (var i = 0; i < 10; i++) {
    print(i);
  }

  // for in
  var names = ["Lebron", "Melo", "Russ"];
  for (var name in names) {
    print(name);
  }
}
