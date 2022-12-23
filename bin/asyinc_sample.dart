void process1()=>print("process1");

// asyncをメソッドのbodyの前（=「{」の前）に付与する
// awaitは、asyncが定義されているメソッド内でのみ使用ができる
// asyncを定義したメソッドの戻り値は、Futureでラップした値とする
Future<void> process2() async{
  Future<String> future =
  Future.delayed(Duration(seconds: 2), () => "process2");
  String value = await future;
  print(value);
}
void process3()=>print("process3");

void main(){
  process1();
  process2();
  process3();
}