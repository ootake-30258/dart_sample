void main(List<String> arguments) {

  int age = 5;  // 整数
  double weight = 3.7;  // 小数
  String name = "Pochi";  // 文字列
  String breed = 'Shiba';  // 文字列
  bool isMale = true;  // もしくはfalse

  // varは最初の代入時に型推論
  var a = 123;
  a = 456;
  //   a = "Hello";  // エラー: 型の変更はできない

  // dynamicは何型であってもよい
  dynamic b = 123;
  b = 456;
  b = "Hello";

  // finalは値の変更を不可に
  final c = 123;
  // c = 456;  // エラー: 値の変更はできない
  // c = "Hello";  // エラー: 値の変更はできない

  // constも値の変更を不可に（　コンパイル時に確定）
  const d = 123;
  // d = 456;  // エラー: 値の変更はできない
  // d = "Hello";  // エラー: 値の変更はできない


  a = 1;

  print("----- if文 -----");
  if (a < 1) {
    print("Good morning!");
  } else if (a < 2) {
    print("Goodd afternoon!");
  }else{
    print("Good evening!");
  }

  print("----- switch文 -----");
  switch(a){
    case 0:
      print("Good morning!");
      break;
    case 1:
      print("Goodd afternoon!");
      break;
    default:
      print("Good evening!");
      break;
  }

  print(null is Object);//false
  int? i1;
  print(i1 is Object);//false

}
