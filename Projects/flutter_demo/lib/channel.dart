class Channel {
  String name;
  String type;

  Channel(this.type, this.name);

  @override
  String toString() {
    return "name is $name, type is $type";
  }
}