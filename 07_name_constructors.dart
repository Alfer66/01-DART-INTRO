void main(){
  
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true
  };
  
  //final ironman = Hero(
  //  isAlive: false,
  //  power: 'Money',
  //  name: 'Tony Stark'
  //);
  
  
  //crear la isntacia basada en el hero que le mandamos al json
  final ironman = Hero.fromJson( rawJson );
    
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
  
  //Constructor con un nombre
  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No isAlive found';
  
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