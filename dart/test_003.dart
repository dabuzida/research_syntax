class Parent {}

class Child extends Parent {}

class Brother extends Parent {}

void main() {
  Parent p = Parent();
  Parent p3 = Parent();
  // print(p);
  // print(p.hashCode);
  Child ch = Child();
  Parent p2 = ch as Parent;
  print(identical(ch, p2));

  // print(ch);
  // print(ch.hashCode);
  // print(p2);
  // print(p2.hashCode);

  print(p.hashCode);
  print(p3.hashCode);

  print(identityHashCode(p)); // 메모리의 같은 주소에 저장된 객체 확인용
  print(identityHashCode(p3));

  print(identical(p, p3)); // 두 객체가 동일한 메모리 참조를 가리키는지 확인
  // print((p as Child).hashCode);
  // print((p as Child).hashCode);
}
