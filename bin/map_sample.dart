void main(){
  final map = <int,String>{
    0: 'Apple',
    1: 'Peach',
    2: 'Litchi',
  };
  //もしkeyに対する値がなければ追加する
  map.putIfAbsent(0, () => 'Banana');
  map.putIfAbsent(3, () => 'Banana');
  print(map);

  final map1 = <int, String>{
    0: 'Apple',
    1: 'Peach',
    2: 'Litchi',
  };
  //指定されたkeyの値を削除
  map1.remove(1);
  print(map1);



}