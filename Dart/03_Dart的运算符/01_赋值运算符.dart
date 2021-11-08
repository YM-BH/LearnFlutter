main(List<String> args) {
  // ??=: 变量如果为 null，取 ??= 右边的值
  // 变量如果不为 null, 取变量本身的值
  var name = null;
  name ??= "James";
  print(name);

  // ??
  // 如果 ?? 前面有值，取 ?? 前面的值
  // 如果 ?? 前面为 null，就取 ?? 后面的值
  var hobby = "篮球";
  var game = hobby ?? "足球";
  print(game);
}
