void main(){
  
  //Cuando se utiliza un stream se tiene que estar escuchando, para poder ver los datos que regrese
  emitNumbers().listen((value) {
    print('Stream value: $value');
  });
  
}


// async* = funcion que regresa un metodo Stream
Stream<int> emitNumbers() async* {
  
  final valuesToEmit = [1,2,3,4,5];
  
  for(int i in valuesToEmit){
    await Future.delayed(const Duration(seconds: 1));
    //el yield es para pasarle valores, como decir ten este valor, y ahora ten este valor.
    yield i; //El stream estaria regresando el valor de i
  }
  
}