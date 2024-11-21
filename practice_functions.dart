/**
 * 1. Positional Param
 */
String sayHello(String name){
  return "Hello $name nice to meet you!";
}
// same
String sayHello2(String name) => "Hello $name nice to meet you!";
num plus(num a, num b) =>  a+b;

/**
 * 2. Named Parameter
 * 파라미터 순서를 기억할 필요 없다.
 * Null safe 를 위한 디폴트값을 함수 정의시 파라미터에 정해 놓거나 required 로 명시해놓고
 * 호출할때 set 형식으로 파라미터 변수를 명시해 호출하면 됨!
 * 
 * 결론:파라미터 순서로 함수 호출안하고, 어느 파람인지 명시해주면됨
 */
String sayHello3({ // 디폴트값 지정해준 사례
  String name = 'anon',
  int age = 99,
  String country = 'korea'
}){
  return "Hello $name and $age, $country";
}
String sayHello4({ // required 해준 사례
  required String name,
  required String age,
  required String country
}){
  return "Hello $name and $age, $country";
}
// => 결국 둘다 파라미터 명시하는건 마찬가지

/**
 * 3. Optional Parameter
 */
// country는 값을 지정해줬으니까 not required가 된다.
String sayHello5(String name, int age, [String? country = 'cuba'])
  => 'Hello $name, you are $age years old from $country';

/**
 * 4. QQ Operator 
 * 
 * 좌 ?? 우
 * 에서 좌항이 null이면 우항을 리턴
 */
//[1]
String capitalizeName(String? name){
  if(name != null){
    return name.toUpperCase();
  }
  return "ANON";
}
//[2]
String capitalizeName2(String? name)
  => name?.toUpperCase() ?? 'ANON';
  // Null-Safe 연산자를 사용하는 경우를 위해 만들어졌나보다.

//[3]
String capitalizeName3(String? name)
  => name != null ? name.toUpperCase() : 'ANON';
// [1] == [2] == [3]

/**
 * 5. 타입에 alias를 지정해서 타입처럼 사용
 */
typedef ListOfInts = List<int>; // ListOfInts를 타입처럼 사용할 수 있다.
// 장점이라면 축약형? 이어서인가??

ListOfInts reverseListOfNumbers(ListOfInts list){
  var reversed = list.reversed;
  return reversed.toList();
}

typedef UserInfo = Map<String, String>;

String sayHi(UserInfo userInfo){
  return "Hi ${userInfo['name']}";
}


void main(){
  print(sayHello3(name: 'ukhyeon', age: 28, country: 'South Korea'));
  print(sayHello4(name: "name", age: "age", country: "country"));
/*  print(sayHello5(name:"ukha", age:23));
      --> Named Parameter 경우가 아니라서 이렇게하면 name, age 파라미터가 정의되지
      않았다고 컴파일 에러난다. Named Parameter는 ({ }) 안에 지정해줘야 하나보다
*/ 
  print(sayHello5("ukha", 23, "Russia"));
  print(capitalizeName("name"));
  print(capitalizeName2(null));

  print(reverseListOfNumbers([1, 2, 3]));
  print(sayHi({'name' : 'Ukbak'}));
}