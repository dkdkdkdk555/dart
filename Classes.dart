class Player{
  final String name;
  int xp, age;
  String team;

  Player(this.name, this.xp, this.age, this.team); // Positional

  /**
   * Named Constructor
   */
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

  void sayHello(){
    print("Hi my name is $name"); // $this.name
  }
}

class Prayer{
  final String name;
  int xp;
  String team;
  int age;

  Prayer({
    required this.name, 
    required this.xp, 
    required this.team, 
    required this.age});
}

void main(){
  // var player = Player("nico", 1500); // new Player();
  // player.sayHello();
  // var player2 = Player("ukhyeon", 11000);
  // player2.sayHello();

  var prayer = Prayer(name: 'name', xp: 1200, age: 18, team: 'team');


  var bPlayer = Player.createBluePlayer(
      name: "ukha",
      age: 27
  );
  var rPlayer = Player.createRedPlayer(
      name: 'Ayoung',
      age : 25
  );

}