import 'dart:math';

class Node {
  Node({required this.id, required this.people, this.children});

  final String id;
  final People people;
  final List<Node>? children;
}

class People {
  People({required this.name, required this.age});
  final String name;
  final String age;
}

void main() {
  Node _node = Node(
    id: 'id',
    people: People(name: 'name', age: 'age'),
    children: <Node>[],
  );

  // _node.id = '12312';

  final number = Random().nextInt(10);
  print(number);
  switch (number) {
    case >= 8:
      print('!');

    case <= 1:
      print('@');

    case == 5:
    case == 6:
    case == 7:
      print('#');
    default:
      print('*****');
  }
}
