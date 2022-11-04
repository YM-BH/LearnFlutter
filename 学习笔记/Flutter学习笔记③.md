- 通过命令创建 `flutter` 项目
- 项目的名称仅支持小写字母，不支持大写字母、中文和一些特殊字符

```shell
flutter create [项目名称]
eg:
flutter create learn_flutter	// ✅
flutter create LearnFlutter		// ❌
```

使用命令行创建项目后，我们可以使用 `Android Studio` 来打开这个项目。每次创建一个新的 `flutter` 项目，会默认创建一个计数器的项目。

`flutter` 项目的源码的源码就在 `lib` 目录下。

在 `main.dart` 的文件中会有一个 `main` 函数，这个就是整个程序的入口

```dart
void main() {
  runApp(const MyApp());
}
```

如图所示：

<img src="/Users/bh/Documents/GitHub/LearnFlutter/学习笔记/Flutter学习笔记③/image-20211118113249935.png" alt="image-20211118113249935" style="zoom:50%;" />

选择要运行的模拟器，运行该项目我们将会在模拟器中看到该项目，该项目从没有到运行到模拟器这个过程是冷启动的过程。在平时 `iOS/Android` 开发过程中，每改一行代码重新进行运行，就是一次**冷启动**。

项目启动后如图所示：

<img src="/Users/bh/Documents/GitHub/LearnFlutter/学习笔记/Flutter学习笔记③/image-20211118113045941.png" alt="image-20211118113045941" style="zoom:50%;" />

上面说到了冷启动，这是在常规客户端开发中运行项目的方式，这种方式有一个弊端，就是每次都要从0-1启动项目，速度会很慢。在 `flutter` 项目中除了冷启动，还提供了两种方式，**hot reload（热重载）** 和 **hot restart（热重启）**。

- **hot reload**：会重新执行 `build` 方法。

<img src="/Users/bh/Documents/GitHub/LearnFlutter/学习笔记/Flutter学习笔记③/image-20211118114703136.png" alt="image-20211118114703136" style="zoom:50%;" />

我们将项目中代码的颜色进行修改，从 `blue -> red`，执行 `hot reload`，`primarySwatch` 颜色从 `blue` 变为 `red`，不需要重新启动项目即可。

```dart
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        --- primarySwatch: Colors.blue, // 从 blue 修改为 red
        +++ primarySwatch: Colors.red, 
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
```

如图所示：

<img src="/Users/bh/Documents/GitHub/LearnFlutter/学习笔记/Flutter学习笔记③/image-20211118114343690.png" alt="image-20211118114343690" style="zoom:50%;" />

- **hot restart**:项目会重新启动，但不是先完全关闭运行的项目，而是在项目运行过程中进行重新启动。

<img src="/Users/bh/Documents/GitHub/LearnFlutter/学习笔记/Flutter学习笔记③/image-20211118114730276.png" alt="image-20211118114730276" style="zoom:50%;" />

总结来说，当我们仅仅修改了 `build` 方法中的代码，我们只需要执行 `hot reload` 即可，当我们修改的代码不是在 `build` 方法中，我们就可以使用 `hot restart` 了，完全不需要关闭程序，再运行了，运行效率提高了很多。

