void main(){
  int? v;
  print(v.runtimeType);  // Null
  print(v is int);       // false
  print(v is int?);      // true
  print(v is String?);   // true
  print(v is Null);      // true
  print(v is Object);    // false

  v = 10;                // この時点で non-nullable
  print(v.runtimeType);  // int
  print(v is int);       // true
  print(v is int?);      // true
  print(v is Object);    // true


  int? a = null;
  int? b;
  print(a); // null
  print(b); // null
  // print(a.isEven);コンパイルエラー
  print(a?.isEven);  //null
  b = a ?? 5;
  print(a.runtimeType); // Null
  print(b.runtimeType); // int

}