void main(){
  final ironman = Hero(
    isAlive: false,
    power: 'Money',
    name: 'Tony Stark'
  );
  
  print(ironman);
}

class Hero {
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  /*
  Hero (String pName, String pPower){
    name = pName;
    power = pPower;
  }
  */
  
  /* /// Se asinan los valores al momento de inicializar la clase
  Hero (String pName, String pPower)
      : name  = pName,
        power = pPower;
  */ 
  
  
  ///sobrescribir el metodo de toStrin por defecto
  @override
  String toString(){
    return '$name, $power, isAlive: ${ isAlive ? 'YES!' : 'Nope'}';
  }
  
}