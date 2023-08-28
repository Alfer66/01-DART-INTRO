void main(){
  
  //Cuando se utiliza un stream se tiene que estar escuchando, para poder ver los datos que regrese
  emitNumbers().listen((value) {
    print('Stream value: $value');
  });
  
}


//Despues del stream se pone que va a fluir a trabas de el, en este caso numeros enteros
Stream<int> emitNumbers(){
  
  //estara emitiendo cada segundo
  return Stream.periodic(const Duration(seconds: 1), (value){
    // print('desde periodic $value');
    return value;
  }).take(5); //La cantidad de emisiones que hara
  
}