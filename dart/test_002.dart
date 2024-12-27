void main() {
  // final Map<String, List<int>> _map = <String, List<int>>{
  //   'a': <int>[1],
  // };

  // print(_map['a']);

  // _map['a']?.add(3);
  // _map['a']?.add(3);
  // _map['a']?.add(3);
  // _map['a']?.add(3);

  // print(_map['a']);
}

Node{
	children: {
		a: Node{
			children: {
				1: Node{
					children: {}, 
					key: 1, 
					parent: Node{
						children: {...}, 
						key: a, 
						parent: Node{
							children: {...}, 
							key: /, 
							parent: null
						}
					}
				}, 
			}, 
			key: a, 
			parent: Node{
				children: {...}, 
				key: /, 
				parent: null
			}
		}, 
		b: Node{
			children: {
				4: Node{
					children: {}, 
					key: 4, 
					parent: Node{
						children: {...}, 
						key: b, 
						parent: Node{
							children: {...}, 
							key: /, 
							parent: null
						}
					}
				}
			}, 
			key: b, 
			parent: Node{
				children: {...}, 
				key: /, 
				parent: null
			}
		}, 
		d: Node{
			children: {}, 
			key: d, 
			parent: Node{
				children: {...}, 
				key: /, 
				parent: null
			}
		}
	}, 
	key: /, 
	parent: null
}

#
final TreeNode _treeSimple = TreeNode.root()
    ..addAll(
      <Node>[
        TreeNode(key: 'a')
          ..addAll(
            <Node>[
              TreeNode(key: '1'),
              TreeNode(key: '2'),
              TreeNode(key: '3'),
            ],
          ),
        TreeNode(key: 'b')
          ..addAll(
            <Node>[
              TreeNode(key: '4'),
            ],
          ),
        TreeNode(key: 'd')
          ..addAll(
            <Node>[
              //
            ],
          ),
      ],
    );