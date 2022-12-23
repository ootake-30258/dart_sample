void main() {
  //要素を末尾に追加
  final list = <String>[];
  list.add("apple");
  print(list);

  //指定位置に要素を追加
  final list1 = ['Apple', 'Strawberry', 'Peach'];
  list1.insert(1, 'Banana');
  print(list1);

  //指定した要素の削除、複数ある場合は最初のみ
  final list2 = ['Apple', 'Strawberry', 'Peach'];
  list2.remove('Strawberry');
  print(list2);

  //指定位置の要素の削除
  final list3 = ['Apple', 'Strawberry', 'Peach'];
  list3.removeAt(1);
  print(list3);

  //ソート
  final list4 = ['Apple', 'Strawberry', 'Peach'];
  list4.sort(Comparable.compare);
  print(list4);

  //シャッフル
  final list5 = ['Apple', 'Strawberry', 'Peach'];
  list5.shuffle();
  print(list5);


}
