void main() {
  List<String> fruits = ['사과', '배', '포도', '귤', '딸기'];

  fruits.forEach((e) {
    print('나는 $e을 좋아해');
  });

  // for in
  for (String e in fruits) {
    print('나는 $e을 좋아해');
  }
}
