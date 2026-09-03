void main() {
  final DateTime now = DateTime.now();
  final DateTime t1 = now.add(const Duration(days: 20));
  final DateTime t2 = now.subtract(const Duration(days: 34));
  // print(now);
  // print(DateTime.fromMillisecondsSinceEpoch(1784781508567));
  // print('$t2 ${t2.millisecondsSinceEpoch}');

  // final List<String> _refinedRow = List<String>.filled(6, '1');
  // final (int, double) ee = (2, 3.3);
  // ee.$1;
  // print(ee.$2);
  // print(_refinedRow);
  // _refinedRow.fillRange(5, 6, '2');
  // print(_refinedRow);
  // print(
  //   list.map((String e) {
  //     final List<String> x = e.split('/');
  //     String result = x[0];

  //     for (final (int, String) element in x.indexed) {
  //       if (element.$1 == 0) {
  //         continue;
  //       }
  //       final String nn = element.$2[0].toUpperCase() + element.$2.substring(1);
  //       result += nn;
  //     }
  //     return result;
  //   }).toList(),
  // );
  final DateTime xx = DateTime.now();
  xx.millisecond;
  xx.microsecond;

  const int e = 8640000000000000; // ms

  print(e / 60);
  print(8640000000000000000 / 60 / 60 / 24 / 365 / 100);
}

List<String> list = <String>['admin/bogunso/package/template/info', 'admin/bogunso/package/group/list', 'admin/bogunso/package/group/count', 'admin/bogunso/package/group/info', 'admin/bogunso/package/instance/info', 'admin/bogunso/package/group/instance/list', 'admin/bogunso/package/group/instance/count', 'admin/bogunso/package/group/instance/info'];
