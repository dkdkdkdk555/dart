void main(){
  /**
   * num is parents of int and double
   */
  num x= 12;
  x = 1.1;

  /**
   * Collection if
   */
  var numbers = [1, 2, 3, 4,]; // List
  List<int> numbers2 = [1, 2, 3, 4,]; // List

  bool isFive = true;
  List<int> numbers3 = [1, 2, 3, 4,
    if(isFive) 5, 
  ]; // Collection if

  /**
   * Collection For
   */
  var oldF = ['ukha', 'heejae'];
  var newF = [
    'isak',
    'dongil',
    'hana',
    'eunsol',
    'yeahsol',
    'jinyoong',
    for(var friend in oldF) "${friend}"
  ];

  print(newF);


}
