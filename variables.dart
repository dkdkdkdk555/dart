void main() {
  var name = '니꼬'; // 자동 타입 추적
  // name = 1;
  print(name); // 변수를 업데이트 해줘도 본래 타입을 변경하면 안됨

  String name2 = '욱현'; // 이렇게 데이터 타입을 명시할 수 있다.

  var name3; // dynamic 타입
  dynamic name4; // dynamic 타입 -> 정말로 필요할 때만 써라.
  if(name4 is String){
    // name4. // 변수를 String 타입일때의 String 타입의 수많은 함수들을 사용할 수 있다.
  }

  /**
   *  on Dart, which value might be null
   */

  // Nullable 타입
  String? nico  = null; // String , String? is different
  //nico = null; // 'String nico' can't be 'null' but String? could be 'null'
  // [1] checking, isn't empty
  if(nico != null){
    nico.isNotEmpty; // nico가 null이라면 에러가 발생 즉, null이 아닐때만 사용할 수 있는 속성 
  }
  // [2] checking sol2, isn't empty / nico가 null이 아니면 실행함!!
  // Null-safe 연산자
  nico?.isNotEmpty; // String 으로 선언한 경우는 어차피 null일 경우가 없어서 '변수명?' 으로 써주는게 무의미,,
  // [1][2] is the same logic, 


  /**
   *  Type that cannot be modified
   */
  final name5 = 'nico';
  //name5 = 'nnnn'; // can't change

  /**
   * 지연할당, 지연초기화 
   * 선언만 먼저하고 값은 나중에 줄 수 있음. data fetching할때 유리
   */
  late final String name6;
  // do something, go to api
  name6 = 'nico';

  /**
   * const
   * final 과 비슷 하지만 좀 다름 final은 컴파일 타임 뿐만 아니라 런타임 시 변수 할당이 가능하지만
   * const 는 컴파일타임에만 변수할당이 가능하고 그걸 바꿀 수 없다. 즉 api 호출해서 값을 할당받을 수 없다.
   * 그래서 앱을 올리기 전에 이미 알고있는 값을 const로 선언하는게 좋다.
   */
  const name7 = 'nico';
  //name7 = '12'; //compile error
  print(name7);

}