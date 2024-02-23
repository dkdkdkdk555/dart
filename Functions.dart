
/**
 * Positional Prameter
 */
String sayHello(String name){
  return "Hello $name nice to meet you!";
}
// same
String sayHello2(String name) => "Hello $name nice to meet you!";

num plus(num a, num b) => a + b;

/**
 * Named Parameter
 * 더 이상 파라미터 순서를 기억할 필요 없다!
 * Null safety를 위한 디폴트값을 함수 정의시 파라미터에 정해 놓거나 required 로 명시해놓고
 * 호출할대 set 형식으로 파라미터 변수를 명시해 호출하면 됨!
 */
String sayHello3({
  String name = 'anon',
  int age = 99,
  String country = 'wakanda'
}){
  return "Hello $name and $age, $country";
}
String sayHello4({
  required String name,
  required int age,
  required String country
}){
  return "Hello $name and $age, $country";
}

/**
 * Optional Parameter
 */
String sayHello5(String name, int age, [String? country = 'cuba']) // country 는 not required 가 된다.
  => 'Hello $name, you are $age years old from $country';


void main(){
  // print(sayHello3("욱현", 12, "korea"));

  print(sayHello3(
    age :12,
    country : 'korea',
    name : 'ukhyeon'));

  sayHello5('nico', 12);
}