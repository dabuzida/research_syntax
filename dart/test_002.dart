void main() {
  // 다형성
  final num x = 13; // int로 생성됨. num type x
  final num x2 = 15.2; // double로 생성됨. num type x
  final int x3 = 14;
  final double x4 = 9.4;

  final num yy = x3 as num;
  final int zz = x as int;

  // final num aa = 11.0;
  // final int bb = 33;
  // final double cc = 14.5;

  // final num _x = bb as num;
  // final num _x2 = cc as num;

  // final int _y = aa as int;
  // final int _y2 = cc as int; //  not a subtype of type

  // print(aa.runtimeType);
  // final double _z = aa as double;
  // final double _z2 = bb as double; //  not a subtype of type

  print(DateTime.now().toString());
  print(DateTime.now().toString().substring(11, 16));
}
