void main(List<String> args) {
  SuperMan sm = SuperMan();
  sm.flying();
  sm.running();
}

mixin Runner {
  void running() {
    print("Runner running");
  }
}

mixin Flyer {
  void flying() {
    print("Flyer flying");
  }
}

// 使用混入 就不需要必须实现 混入中的方法
class SuperMan with Runner, Flyer {}
