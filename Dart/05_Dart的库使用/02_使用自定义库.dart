// 可以用 as 关键字给库起别名
// import 'utils/math_util.dart' as utils;

// import 'utils/date_util.dart';
// 可以使用 show 关键字显式库中的某个函数
// import 'utils/math_util.dart' show sum;
// 使用 hide 关键字隐藏库中的某个函数
// import 'utils/math_util.dart' hide mul;

// 使用 export 导出库文件后，只需引入一个文件即可
import 'utils/utils.dart';

void main(List<String> args) {
  print(sum(10, 20));
  // print(utils.mul(10, 20));
  print(dateFormat());
  
}


// int sum(num1, num2) {
//   return num1 + num2;
// }
