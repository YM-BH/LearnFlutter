void main(List<String> args) {
  final direction = Direction.north;

  switch (direction) {
    case Direction.east:
      print("东部");
      break;
    case Direction.north:
      print("北部");
      break;
    case Direction.south:
      print("南部");
      break;
    case Direction.west:
      print("西部");
      break;
  }
}

enum Direction { north, south, west, east }
