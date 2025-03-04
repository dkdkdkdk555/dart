import 'dart:async';

/**
 * Positional Parameter
 */
String sayHello(String name){
  return "Hello $name nice to meet you!";
}
String sayHello2(String name) => "Hello $name nice to meet you!";
num plus(num a, num b) => a + b;

/**
 * Named Parameter
 * 
 * 더 이상 파라미터 순서를 기억할 것 없이
 * Null safety를 위한 디폴트 값을 함수 정의시 파라미터에 정하거나 
 * required 로 명시하여 호출할때 set 형식으로 파라미터 변수를 명시해 호출하면 된다.
 */
String sayHello3({
  String name = 'anan',
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
String sayHello5(String name, int age, [String? country = 'cuba']) 
=> 'Hello $name, you are $age years old from $country';

/**
 * QQ Operation
 * 
 * 좌 ?? 우
 * 에서 좌항이 null 이면 우항을 리턴
 */


/**
 * 타입에 alias를 지정해서 타입처럼 쓸 수 있음
 */
typedef Ukhamap = Map<String, String?>;

String method1(Ukhamap map){
  var map1 = {
    'name': map['name'] ?? '돼지',
    'sound': map['sound'] ?? "꿀꿀"
  };
  return "${map1['name']} ${map['sound']} 댑니다. ";
}



void main(){
  print(sayHello3());
  print(sayHello3(name: '욱집', age:12, country: '서울'));
  print(sayHello5('꿀꿀', 27, '서울'));
  print(method1({'name':'닭', 'sound':'꼬꼬댁' }));
}
