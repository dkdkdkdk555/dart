/**
 * 추상화 클래스
 * : 다른 클래스들의 청사진
 */
abstract class Human {
  void walk();

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
   */
  var nico = Player(name: "name", xp: 1200, team: Team.blue)
  ..name = 'las'
  ..xp = 120000
  ..team = Team.blue;

  var nico2 = Player(name: "name", xp: 1200, team: Team.red);
  var potato = nico2
  ..name = 'las'
  ..xp = 120000
  ..team = Team.red
  ..sayHello();

}