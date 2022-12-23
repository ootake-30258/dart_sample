// コールバックは関数の引数にメソッドを渡すことである
void testOutput(List<String> list, void Function(String) callback) {
  for (final item in list) {
    callback(item);
  }
}

void main() {
  final list = ['A', 'B', 'C'];
  // 無名関数を引数として渡している
  testOutput(list, (String s) => print(s));
  list.forEach((String s) {
    print(s.toLowerCase());
  });
}