void main(){
  String name = 'ukha';
  bool alive = true;
  int age = 12;
  double mony = 13.5;

  /**
   * num is parents of int and double
   */
  num x = 12;
  x = 1.1;

  /**
   * list & Collection If
   */
  // dynamic 타입
  var numbers = [1,2,3,4,];
  var giveMeFive = true;
  //[1]
  List<int> numbers2 = [1,2,3,4,
    if(giveMeFive) 5,
  ];
  //[2]
  if(giveMeFive){
    numbers.add(5);
  }

  /**
   * String interpolation
   */
  var name2 = '박욱현';
  var age2 = 28;
  var greeting = "Hi my name is $name2 and I'm $age2 years old.";
  print(greeting);

  /**
   * Collection For
   */
  var oldFriends = ['기찬', '민규'];
  var newFriends = [
    '동일',
    '재은',
    '희재',
    for(var friend in oldFriends) "$friend"
  ];
  print(newFriends);

  /**
   * Maps
   */
  var player = { // Map<String, Object> 로 자동타입추적
    'name':'nico',
    'xp': 18.88,
    'superpower':true,
  };

  Map<int, bool> player2 = { // 타입명시
    1:true,
    2:false,
    3:true,
  };

  /**
   * Sets
   */

  // 자동타입추적
  var numberSet = {1,2,3,4,};

  // 타입명시
  Set<int> numbersSet = {1,2,3,5};
  numberSet.add(1); // set은 중복을 허락하지 않으므로 출력 결과는 {1,2,3,4}
  
  print(numberSet);

}