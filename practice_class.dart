class Player{
  /*
    필드
  */
  final String name;
  int xp, age;
  String team;
  // 여까지만 쓰면 각 변수에 대해 반드시 초기화 되야한다고 뜬다.
  // 또는 초기화 할 수 있는 수단(생성자)을 추가하기를 바란다.

  /*  
    생성자
    : 초기화의 수단으로서 생성자를 추가하면 필드에 컴파일 에러가 사라진다.
  */
  // Positional Constructor (Unnamed Constructor)
  Player(this.name, this.xp, this.age, this.team);

  // Named Constructor 인데 Unnamed Constructor 가 정의돼있으면 얘 정의 못함..ㅠ웃김
  // Player({
  //   required this.name, 
  //   required this.xp, 
  //   required this.team, 
  //   required this.age});

  // Named Constructor
  Player.createBluePlayer({required String name, required int age})
  : this.age = age,
    this.name = name,
    this.team = 'blue',
    this.xp = 0; // 디폴트값이 있는경우는 파라미터를 받지 않는다.

  
  void sayPlayerHi(){
    print("Hi my name is $name and my age is $age");
  }

}

/**
 * 추상화 클래스
 * : 다른 클래스들의 청사진
 */
abstract class Human {
  String? ss;
  void walk(); // 상속받으면 해당 메소드 재정의 하도록 강제
}

/**
 * Enums
 */
enum Team {red, blue}

class Player2 extends Human{
  @override
  void walk() {
    print('im walkin');    
  }

  String name;
  int xp;
  Team team;

  @override
  String? ss;

  Player2({
    required this.name,
    required this.xp,
    required this.team,
    required this.ss,
  });
  
}

/**
 * Mixins
 * 생성자가 없는 클래스!
 * 클래스에 프로퍼티를 추가하는 용도,
 * 재사용성을 높임
 * , 프로퍼티를 재정의 할 수 없다.
 * mixin은 상수이고 final처럼 간주된다.
 * Mixin은 기능(method) 제공에 초점이 맞춰져 있으며, 
 * 필드 변경은 Mixin의 설계 철학에 맞지 않는 경우가 많다.
 * getter로 재정의 할 수 있으나 잘 안쓸거같다.
 */
mixin class String {
  final double strenghtLevel = 1500.00;
}

mixin class QuickRunner {
  void runQuick(){
    print("runnn!");
  }
}

mixin class Tall {
  final double height = 1.99;
}

class Horse with String, QuickRunner, Tall{
}

void main(){
  /**
   * Cascade Notation
   * 중복제거 용도
   * 참조를 반복하지 않아도 됨
   * 체이닝 효과
   * 
   */
  var nico = Player2(name: "ukha", xp: 12, team: Team.blue, ss: "11")
  ..name = 'sieun'
  ..xp = 14
  ..team = Team.red;

  print(nico.name);
}