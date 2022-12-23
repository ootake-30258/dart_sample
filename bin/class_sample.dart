abstract class Animal{
  String? _name;
  String? _cry;

  // コンストラクタ
  Animal(String name) {
    _name = name;
  }

  bark(){
    print(_cry);
  }

  callName(){
    print(_name);
  }

  // 抽象メソッド
  jump();

  // セッター
  set setCry(String cry) => _cry = cry;

  // ゲッター
  String get introduction => "Name:$_name,Cry:$_cry";

}

class Dog extends Animal{

  Dog({String? name, String? cry}) : super(name!){
    _cry = cry;
  }

  @override
  jump() {
    print("犬ジャンプ");
  }

}

class Cat extends Animal{

  // コンストラクタ(略)
  Cat(super.name);

  @override
  jump() {
    print("猫ジャンプ");
  }

}

void main(){
  Animal dog = Dog(name: "potita", cry: 'wan');
  dog.bark();
  dog.callName();
  dog.jump();

  Animal cat = Cat("neko");
  cat.bark();
  cat.callName();
  cat.setCry = "myaw";
  cat.bark();
  cat.callName();
  print(cat.introduction);
  cat.jump();

}
