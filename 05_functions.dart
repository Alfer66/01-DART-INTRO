void main() {
  print( greetEveryone());
  
  print('Suma: ${addTwoNumbers(10, 20)}');
  
  print( greetPerson(name: 'Alfer', messaje: 'Hi'));
}

String greetEveryone() => 'Hello everyone!';

int addTwoNumbers(int a, int b ) => a + b; 

//Los corchetes indican que b puede ser nulo
int addTwoNumbersOptional (int a, [ int b = 0 ] ) => a + b;

String greetPerson({ required String name, String messaje = 'Hola'}){
  return '$messaje, $name';
}