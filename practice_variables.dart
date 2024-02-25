void main(){
  // 1. 다이나믹 타입
  var name; 
  dynamic name1;
  if(name1 is String){
    // name1이 String이라 가정하고 String 함수 씀
  }

  // 2. might be null
  String? nico = 'nico';
  nico = null;
  String ukha = 'ukha';
  // ukha = null;

  // 3. 'value != null' == '?.'
  ukha?.isNotEmpty;
  nico?.isNotEmpty;

  // 4. final
  final a = 'nico';
  // a = 's';

  // 5. late init
  late final String b;
  // do something, go to api\
  b = 'ㅁㅁㅁ';

  // 6. const 
  const c = 'aaa';
  // cannot 할당 in runtime
  // only 할당 in compiletime
  // it can be 할당 when you know value before 배포
  

}