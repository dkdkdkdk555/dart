/**
 * 추상화 클래스
 * : 다른 클래스들의 청사진
 */
abstract class Human {
  void walk(); // 상속받으면 해당 메소드 재정의 하도록 강제

}

/**
 * Enums
 */
enum Team { red, blue }

class Player extends Human{
  String name;
  int xp;
  Team team;

  Player({
    required this.name,
    required this.xp,
    required this.team});

  void sayHello(){
    print("Hi my name is $name"); // $this.name
  }
  
  @override
  void walk() {
    print('im walkin');
  }
}


void main(){
  /**
   * Cascade Notation
   * 중복제거 용도
   */
  var nico = Player(name: "name", xp: 1200, team: Team.blue)
  ..name = 'las' // nico.name = 'las' 와 같다.
  ..xp = 120000
  ..team = Team.blue;
 
  var nico2 = Player(name: "name", xp: 1200, team: Team.red);
  var potato = nico2
  ..name = 'las'
  ..xp = 120000
  ..team = Team.red
  ..sayHello();

}