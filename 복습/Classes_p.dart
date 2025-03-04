abstract class Human {
  void walk();
}

mixin class QuickRunner {
  void runQuick(){
    print("runnn!");
  }
}

class Player extends Human with QuickRunner{
  final String name;
  int xp, age;
  String team = '기본팀';

  // positional
  Player.positional(this.name, this.xp, this.age, this.team);
  Player.positional2(this.name, this.xp, this.age);
  Player.positional3(this.name, this.xp, this.age, [this.team = '철퇴팀']);

  // named
  Player.createBluePlayer({required String name, required int age})
  : this.age = age,
  this.name = name,
  this.team = 'blue',
  this.xp = 0;
  Player.createRedPlayer({required String name, required int age})
  : this.age = age,
  this.name = name,
  this.team = 'red',
  this.xp = 0;

  Player.required({
    required this.name,
    required this.xp,
    required this.age,
    required this.team
  });

  void sayHello(){
    print("Hi my name is $name, I'm in $team now.");
  }
  
  @override
  void walk() {
    print("월ㅋ월ㅋ웤웍웕!");
  }
}


void main(){
  Player.positional3("한상원", 23, 35).sayHello(); // team == 철퇴팀
  Player.positional2("한상원", 23, 35).sayHello(); // team == 기본팀
  Player.positional("한상원", 23, 35, "욱가팀").sayHello(); // team == 기본팀
  
  var ukhyeon = Player.required(name:"ukheyon", xp:1100, age:12, team:"욱집")
  ..xp = 10000
  ..team = "현집";

  ukhyeon.sayHello();

  ukhyeon.runQuick();

}


