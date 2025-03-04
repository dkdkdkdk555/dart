void main(){
  /**
   * 1.다이나믹 타입
   */
  var name;
  dynamic name1;
  if(name1 is String){
    // name1이 String 이라 가정하고 String 함수를 쓸 수 있음
    name1.toLowerCase();
    //name1.ceil(); // 그러니 num 관련 함수는 컴파일 에러가 남
  }

  /**
   * 2.might be null
   */
  String? nico = 'nico';
  nico = null;
  String ukha = 'ukha';
  // ukha = null;

  //[1]
  if(nico != null){
    nico.isNotEmpty;
  }
  //[2]
  nico?.isNotEmpty;
  //[1]==[2]


  //[3]
  if(ukha != null){
    ukha.isNotEmpty;
  }
  //[4]
  ukha?.isNotEmpty;


  /**
   * 3. Type that cannot be modified
   */
  final name5 = 'ymin';
  // name5 = 'ukha';

  /**
   * 4. late init 
   * 선언만 먼저하고 값은 나중에 줄 수 있음
   */
  String nn;
  nn = 'ukha';
  late String na;
  na = 'junhak';
  late final String nb;
  nb = 'myeongbak';


  print(nn);
  print(na);
  print(nb);


  /**
   * 5. const
   * final 과 비슷 하지만 좀 다름 final 은 컴파일 타임 뿐만 아니라 런타임 시 변수 할당이 가능,
   * const 는 컴파일타임에만 변수할당이 가능하고 그걸 바꿀 수 없다. 
   * 그래서 앱을 올리기 전에 이미 알고있는 값을 const로 선언하는게 좋다.
   */
  const name7 = '12';


}