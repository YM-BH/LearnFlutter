int sum(int num1, int num2) {
  return num1 + num2;
}

int mul(int num1, int num2) {
  return num1 * num2;
}

// 使用 _（下划线）可以使函数私有化
int _min(int num1, int num2) {
  return num1 > num2 ? num2 : num1;
}
