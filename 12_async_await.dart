void main() async {
  print('Inicio del programa');
  
  //Los await pueden tener error, por lo que es bueno colocar un try catch para esperarlos
  try {
    final value = await httpGet('https://fernando-herrera.com/curso');
    print ( value );
  } catch (err) {
    print ('Tenemos un error: $err');
  }
  
  //httpGet('https://fernando-herrera.com/curso')
  //  // Si sale bien la peticion
  //  .then( (value){
  //    print(value);
  //    //Si ocurre un error
  //  }).catchError( (err){
  //    print('Error: $err');
  //  });
  print('Fin del programa');
}

Future<String> httpGet( String url ) async {
  
 await Future.delayed(const Duration(seconds: 1));
  throw 'Error en la petición http';
 //return 'Tenemos un valor de la petición';
  
  
//  return Future.delayed( const Duration(seconds: 1), (){
//    throw 'Error en la petición http';
//    //return 'Respuesta de la petición http';
//  });
}