int add1(int a, int b){
  return a + b;
}

// 戻り値の型、引数の型は省略可能(dynamicになる)
add2(a, b){
  return a + b;
}

// []内は省略可能
// 省略可能と言うことはnullかもしれないのでnull許容型
int add3(int a, [int? b, int? c]){
  int result = a;
  if(b != null) result += b;
  if(c != null) result += c;
  return result;
}

// {}内は呼び出し時に名前指定
int add4(int a, {int? b, int? c}){
  int result = a;
  if(b != null) result += b;
  if(c != null) result += c;
  return result;
}

void main(){
  print(add1(1, 3));
  print(add2(1, 3));
  print(add3(1, 2, 3));
  print(add3(1, 2));
  print(add4(1, b: 2, c: 3));
}