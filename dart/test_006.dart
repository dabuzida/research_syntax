void main() {
  // final Map<String, String> excelRow = <String, String>{};
  // excelRow.addEntries(_makeValue());
  // print(excelRow);

  // final zz = [1, 2, 3].map((int k) => MapEntry(k, (k + 1).toString()));
  // print(zz);
  final Map<int, String> _map = <int, String>{};
  final MapEntry<int, String> xx = MapEntry(123, 'value');

  _map.addAll({});
  _map.addEntries([xx]);
  final Map ee = Map.fromEntries([xx]);
  // _map.addEntries(xx);
  print(xx);
  final x = [1, 2, 3, 4, 5].map(
    (e) {
      return e.toString();
    },
  ).toList();
  print(x);
}

Iterable<MapEntry<String, String>> _makeValue() {
  return {'sadfsdf': 'asdf'}.entries;
}
