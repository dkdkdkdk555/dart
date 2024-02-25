/**
 * 1. Positional Param
 */
String sayHello(String name, int age){
  return "Hello $name , i'm $age";
}
/**
 * 2. Named Param
 */
String sayHalo({String name = 'name', int age = 18, String country = 'wakanda'}){
  return "Hello $name, i'm $age, i'm fron $country";
}

/**
 * 3. Optional Param
 */
String sayHi(String name, int age, [String? country = 'cuba'])
  => "Hello $name, i'm age, i'm from $country";

/**
 * QQ Operator
 */
String ccccc(String? name) => name?.toUpperCase() ?? 'AAAA';

/**
 * Type alias
 */
typedef ListOfInts = List<int>;

ListOfInts reverseListOfNumbers(ListOfInts list){
  var reversed = list.reversed;
  return reversed.toList();
}

void main(){
  // Positional
  print(sayHello('ukha', 14));
  print(sayHello(14, 'ukha'));

  // Named
  print(sayHalo(country:'korea', age:22, name:'ukuk'));

  // Optional
  print(sayHi('sss', 19));

  /**
   * QQ asignment operator
   */
  String? name;
  name ??= 'ukha';
  




}