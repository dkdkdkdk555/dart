class Player{
  final String name;
  int xp, age;
  String team;
  
  Player(this.name, this.xp, this.age, this.team); // Positional

  /**
   * Named{} Constructor
   */
  Player.createBluePlayer({required String name, required int age})
  : this.age = age,
    this.name = name,
    this.team = 'blue',
    this.xp = 0;  
}
void main(){

}