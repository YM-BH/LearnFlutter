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
