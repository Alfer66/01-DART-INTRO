void main() {
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10];
  
  print ('List original $numbers');
  print ('Length ${numbers.length}');
  print ('Index 0: ${numbers[0]}');
  print ('First: ${ numbers.first}');
  print ('Reversed: ${numbers.reversed}');
  
  final reversedNumber = numbers.reversed;
  
  print ('Iterable: $reversedNumber');
  print ('List: ${reversedNumber.toList()}');
  print ('Set: ${reversedNumber.toSet()}');
  
  final numberMayorQue5 = numbers.where( (int num){
    return num>5; //true
  });
  
  print('>5: $numberMayorQue5');
  print('>5 Set: ${numberMayorQue5.toSet()}');
  
}
