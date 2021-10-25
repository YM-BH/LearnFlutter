main(List<String> args) {
  // 函数可以作为 参数 传递给另外一个函数
  // bar(foo);

  // 如果参数为函数类型，可以使用匿名函数
  // bar(() {
  //   print("执行匿名函数");
  // });

  // 有参数和返回值的匿名函数
  bar((num1, num2) {
    return num1 + num2;
  });

  // 如果 函数体只有一行代码 可以使用 箭头函数
  bar((num1, num2) => num1 * num2);
}

// 参数的类型为 Function 类型，参数接收一个函数
// void bar(Function fn) {
//   fn();
// }

// 定义一个函数
// void foo() {
//   print("foo 函数被调用");
// }

// 参数为 函数类型 该函数有参数和返回值
// void bar(int fn(int num1, int num2)) {
//   var result = fn(10, 20);
//   print(result);
// }

// 如果 传入的函数的参数非常多 代码的可读性会很差 所以可以使用 typedef 关键字来优化
typedef Calculate = int Function(int num1, int num2);

void bar(Calculate cal) {
  var result = cal(30, 20);
  print(result);
}

