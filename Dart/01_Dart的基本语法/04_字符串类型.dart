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
