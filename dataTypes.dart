void main(){
  String name = "nico";
  bool alive = true;
  int age = 12;
  double mony = 69.99;
  
  /**
   * num is parents of int and double
   */
  num x = 12;
  x = 1.1;
 
  /**
   * list &
   * Collection If
   */
  var numbers = [1, 2, 3, 4,];
  var giveMeFive = true;
  List<int> numbers2 = [1, 2, 4, 4,
    if(giveMeFive) 5, // collection if 지원
  ];
// 위랑 아래랑 같은 의미
  if(giveMeFive){
    numbers.add(5);
  }

  numbers.add(1);
  numbers.last;
  numbers.first;


  /**
   * String interpolation
   */
  var name2 = 'nico';
  var age2 = 18;
  var greeting = "Hello everyone, my name is $name2, nice to meet you! and I'm ${age2 + 2}"; // $변수 
  print(greeting);


  /**
   * Collection For
   */
  var oldFriends = ['nico', 'lynn'];
  var newFriends = [
    'lewis',
    'ralph',
    'darren',
    for(var friend in oldFriends) "🐙${friend}"
  ]; 
  // same
  // for(var friend in oldFriends){
  //   newFriends.add(friend); 
  // }
  print(newFriends);

  
  /**
   * Maps
   */
  var player =  { // Type:Map<String, Object> 로 자동타입추적됨
    'name' : 'nico',
    'xp' : 19.99,
    'superpower': false,
  };
  Map<int, bool> player2 = {
    1:true,
    2:false,
    3:true
  };
  Map<List<int>, bool> ply = {
    [1,2,3,4]:false,
    [3,4,5]:true
  };

  /**
   * Sets
   */
  var numberSet = {1, 2, 3, 4};
  Set<int> numbersSet = {1, 2, 3, 5};
  numbersSet.add(1);
  numbersSet.add(1); // Set은 중복을 허락하지 않음, 요소가 항상 하나씩만 있어야하면 Set써야함

  print(numbersSet);


}