void main (){
  
  final mySquare = Square( side: 10);
  
  mySquare.side = -5;
  
  print('área: ${mySquare.calculateArea()}');
  
}

class Square {
  
  double _side; // side * side
  
  // LAs hacerciones sirven para poner reglas de negocio
  Square({required double side}) //se recomienda primero las aserciones y luego las asignaciones
    : assert(side > 0, 'side must be >= 0'), // si no se comple no hace la asignacion, ya que llegaria hasta aqui, el segundo argumento posicional es el mensaje del error
      _side = side;
  
  double get area {
    return _side * _side;
  }
  
  set side( double value ){
    print ('setting new value $value');
    //si la condicion se cumple se manda el throw
    if (value < 0 ) throw 'Value must be >=0';
    
    _side = value;
  }
  
  double calculateArea() {
    return _side * _side;
  }

}