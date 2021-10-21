## Flutter 的环境配置

1. 下载安装包获取最新的 `stable Flutter SDK`，[SDK 版本列表](https://flutter.cn/docs/development/tools/sdk/releases?tab=macos)
2. 将文件解压到目标路径，以下是我解压的路径

```shell
/Users/bh/Documents/flutter
```

3. 配置 `flutter` 的环境变量，找到 `.zshrc` 文件，打开并修改

```shell
export FLUTTER_HOME=/Users/bh/Documents/flutter
export PATH=$PATH:$FLUTTER_HOME/bin
export PATH=$PATH:$FLUTTER_HOME/bin/cache/dart-sdk/bin
```

当配置完 `flutter` 的环境变量，在终端输入 `flutter` 命令，就会有响应了。

4. flutter 项目会依赖一些东西，国内下载速度比较慢，在环境变量的配置文件中，需要配置一些国内的镜像

```shell
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
```

## 开发工具

- VScode
- Android Studio

无论使用 `Android Studio` 还是 `VScode` 都需要安装 `Dart` 和 `Flutter` 的插件

## Flutter 的一些命令

- 查看 `flutter` 的版本

```shell
flutter --version
```

- 查看当前环境是否需要安装其他的依赖

```shell
flutter doctor
```

我的运行结果：

```shell
[✓] Flutter (Channel stable, 2.5.2, on macOS 11.3 20E232 darwin-x64, locale
    zh-Hans-CN)
[✓] Android toolchain - develop for Android devices (Android SDK version 29.0.3)
[✓] Xcode - develop for iOS and macOS
[✓] Chrome - develop for the web
[✓] Android Studio (version 4.0)
[✓] IntelliJ IDEA Ultimate Edition (version 2020.1)
[✓] VS Code (version 1.61.0)
[✓] Connected device (1 available)
```

- 创建一个 `flutter` 项目

```shell
flutter create 项目名
```

## 遇到的错误

- 当执行 `flutter` 的命令时候，提示 无法打开 `Dart`，因为 `Apple` 无法检查其是否包含恶意软件

解决方法：执行下面的命令，输入密码，再次重试 `flutter` 命令。

```shell
sudo spctl --master-disable
```

