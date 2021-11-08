- 使用 `VSCode` 学习 `Dart` 语法

  - 可以通过安装 `Code Runner` 插件运行 `Dart` 代码
  - 也可以使用终端打开当前目录使用命令运行 `Dart` 代码

  ```shell
  dart xxx.dart
  ```

- `Dart` 代码想要运行，必须要有 `main` 函数

```dart
main(List<String> args) {
  // 打印使用 print 函数
  print("Hello World");
}
```

### 声明常量和变量

```dart
main(List<String> args) {
  // 声明明确类型的变量
  int age = 10;
  age = 20;

  // 不指定明确的类型，自动类型推导
  // 虽然声明变量时没有指定明确的类型，但是一旦声明了变量，变量的类型就是已经确定的了
  var name = "Kobe";
  name = "KD";

  // name = 18; // 此句代码会报错，因为变量类型已经确定（String 类型），不能修改为其他类型的值（int 类型）

  // 声明常量
  final height = 1.98;
  // height = 2.03; // 此句代码会报错，常量不可以修改

  // 声明常量
  const weight = 76;
  // weight = 89; // 此句代码会报错，常量不可以修改

  // 同样是声明一个常量，final 和 const 有什么区别？
  // const 只能接收 确定的常量值，也就是编译时就确定的值
  // const date = DateTime.now(); // 此行代码会报错，DateTime.now() 函数调用结果是在运行时才会有确定的值

  // final 声明的常量 可以接收运行时才确定的值
  final date = DateTime.now();
}
```

### 布尔类型

- `Dart` 中不存在非零即真的概念

```dart
main(List<String> args) {
  // 在 Dart 中，没有非零即真的概念
  // 在条件判断中的条件必须是 布尔类型
  var flag = true;
  if (flag) {
    print("真");
  } else {
    print("假");
  }
}
```

### 字符串类型

```dart
main(List<String> args) {
  // 字符串的定义
  // 可以使用 单引号 双引号 三引号（可以换行）
  var str1 = 'Jack';
  var str2 = "Rose";
  var str3 = """
  KD
  LBJ
  SC
  """;

  // 字符串插值
  var name = "Kobe";
  var age = 40;
  var height = 1.98;

  // 使用 ${} 进行字符串插值操作，如果 ${} 中的值为变量，那么 {} 可以省略
  var info = "name is ${name}, age is ${age}, height is ${height}";
  var message = "name is $name, age is $age, height is $height";
  // 如果 ${} 中是表达式，那么 {} 不可以省略
  var desc = "type is ${name.runtimeType}";
  print(info);
  print(message);
  print(desc);
}
```

### 集合类型

```dart
main(List<String> args) {
  // List 使用 [元素1， 元素2]
  var players = ["Kobe", "TT", "SC", "KD"];

  // Set 使用 {元素1， 元素2}
  var movies = {"摔跤吧爸爸", "我不是药神", "绿皮书"};

  // Map 使用 {key: value, key: value}
  var info = {"name": "Rose", "age": 18};
}
```

### 函数

- 函数的基本使用

```dart
main(List<String> args) {
  print(sum(10, 20));
}

// 返回值类型可以省略（开发中不推荐）
int sum(num1, num2) {
  return num1 + num2;
}
```

- 函数的参数（可选参数和必选参数）

```dart
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
```

- 函数是一等公民

```dart
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
```

