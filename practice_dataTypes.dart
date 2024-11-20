void main(){
  /**
   * num is parents of int and double
   */
  num x = 12;
  x = 1.1;

  /**
   * list &
   * Collection If
   */
  // dynamic타입
  var numbers = [1, 2, 3, 4,];
  var giveMeFive = true;
  //[1]
  List<int> numbers2 = [1, 2, 4, 4,
    if(giveMeFive) 5, // collection If 지원 ,, 동적으로 인자 추가 가능
  ];
  //[2]
  if(giveMeFive){
    numbers.add(5);
  }
  // [1] and [2] is the same logic

  /**
   * String interpolation
   */
  var name2 = '박욱현';
  var age2 = 18;
  var greeting = "안녕 내 이름은 $name2야 나이는 $age2고 반가워";
  print(greeting);

  /**
   * Collection For
   */
  var oldFriends = ['nico', 'lynn'];
  var newFriends = [
    'lewis',
    'ralph',
    'ivanka',
    for(var friend in oldFriends) "$friend"
  ];
  print(newFriends);

  /**
   * Maps
   */
  var player = { // Type: Map<String, Object>로 자동타입추적
    'name' : 'nico',
    'xp' : 19.99,
    'superpower' : true,
  };
  Map<int, bool> player2 = {
    1:true,
    2:false,
    3:true
  };


  /**
   * Sets
   */
  var numberSet = {1,2,3,4};
  Set<int> numbersSet = {1,2,3,5};
  numberSet.add(1); // set은 중복 x
  print(numberSet);

}
