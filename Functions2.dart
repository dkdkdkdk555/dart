/**
 * QQ Operator
 * 
 * 좌 ?? 우 
 * 에서 좌항이 null 이면 우항을 리턴.
 */
String capitalizeName(String? name) {
  if(name != null){
    return name.toUpperCase();
  }
  return "ANON";
}
// same
String capitalizeName2(String? name) => name != null ? name.toUpperCase() : 'ANON';
// same
String capitalizeName3(String? name) => name?.toUpperCase() ?? 'ANON';


/**
 * 타입에 alias를 지정해서 타입처럼 쓸 수 있음
 */
typedef ListOfInts = List<int>;

ListOfInts reverseListOfNumbers(ListOfInts list){
  var reversed = list.reversed;
  return reversed.toList();
}

typedef UserInfo = Map<String, String>;

String sayHi(UserInfo userInfo){
  return "Hi ${userInfo['name']}";
}


void main(){
  capitalizeName('nico');
  capitalizeName(null);

  /**
   *  QQ asignment operator
   */
  String? name;
  name ??= 'nico'; // name이 null이면 할당해라
  name ??= 'nnn'; // warnings
  print(name); // nico

  print(reverseListOfNumbers([1,3,5]));

  print(sayHi({'name':'ukhyeon'}));
}