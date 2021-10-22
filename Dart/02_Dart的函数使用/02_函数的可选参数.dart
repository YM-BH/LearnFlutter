main(List<String> args) {
  // 必选参数，函数的参数必须传
  sayHi("Kobe");

  // 可选的位置参数 传入的参数必须与定义的位置一一对应
  sayHello("LBJ", 20, 2.03);
  sayHello("KD");

  // 命名参数 传入的参数必须和命名一一对应
  say("SC", age: 31, height: 1.95);
  say("YaoMing");

  // 可选的位置参数 和 可选的命名参数都可以设置默认值
  // 只有可选参数 可以设置默认值
  sayHello("Shaq");
  say("Yi");
}

// 函数参数分为必选参数和可选参数
void sayHi(name) {
  print(name);
}

// 可选的位置参数 使用 []
// 可以使用 ? 修饰类型，默认就是 null
void sayHello(name, [int? age = 0, double height = 0.0]) {
  print("name is $name, age is $age and height is $height");
}

// 命名参数 使用 {}
// 可以使用 ? 修饰类型，默认就是 null
// 也可以设置默认值 不使用 ?
void say(name, {int age = 0, double? height = 0.0}) {
  print("name is $name, age is $age and height is $height");
}
