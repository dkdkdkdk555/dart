/**
 * Mixins
 * 생성자가 없는 클래스!
 * 클래스에 프로퍼티를 추가할 때 사용
 */
mixin class Strong {
  final double strenghtLevel = 1500.99;
}

mixin class QuickRunner {
  void runQuick(){
    print('runnnnnn!');
  }
}

mixin class Tall {
  final double height = 1.99;
}

class Prayer with Strong, QuickRunner {

}


/**
 * Inheritance
 */
class Human {
  final String name;
  Human({required this.name});
  void sayHello(){
    print("Hi my name is $name");
  }
}

enum Team { blue, red}

class Player extends Human {
  final Team team;

  Player({
    required this.team,
    required String name
  }) : super(name:name); // 이렇게 해줘야 상속한 Human의 property 인 name이 초기화가 된다.

  @override
  void sayHello(){
    super.sayHello();
    print('and I play for ${team}');
  }
}

void main(){
 var player = Player(team: Team.red, name :"nico");
}
