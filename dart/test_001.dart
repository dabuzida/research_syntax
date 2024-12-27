void main() {
  Map treeMap = {
    null: 'root',
  };
  final Map<String, dynamic> parentNull = <String, dynamic>{
    'key': null,
    'label': 'null',
  };
}

class ADMINCategory {
  ADMINCategory({
    required this.id,
    required this.name,
    this.parentCategoryId,
    this.enabled,
    this.sort,
    this.background,
  });

  String id;
  String name;
  String? parentCategoryId;
  bool? enabled;
  int? sort;
  COMMONAssetInfo? background;
}

class COMMONAssetInfo {
  COMMONAssetInfo({required this.id, required this.url, required this.size});

  String id;
  String url;
  num size;
}

void seekAndPush(
  String? key,
  Map<String, dynamic> parent,
  Map<String, dynamic>? child,
) {
  if (treeMap[key] == null) {
    if (parent['children'] == null) {
      parent['children'] = <dynamic>[];
    }

    (parent['children'] as List<dynamic>).add(child);
  } else {
    final Map<String, dynamic> newParent = <String, dynamic>{
      'key': child!['key'],
      'label': child['label'],
    };

    for (final ADMINCategory child in treeMap[key]!) {
      final Map<String, dynamic> newChild = <String, dynamic>{
        'key': child.id,
        'label': child.name,
      };

      seekAndPush(child.id, newParent, newChild);
    }

    if (parent['children'] == null) {
      parent['children'] = <dynamic>[];
    }

    (parent['children'] as List<dynamic>).add(newParent);
  }
}
