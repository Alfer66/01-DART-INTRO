void main() async {
  print('Inicio del programa');
  
  //try es lo que se hara
  try {
    final value = await httpGet('https://fernando-herrera.com/curso');
    print ('Exito: $value' );

  // el on en caso de un error controlado
  } on Exception catch(err) {
    print('Tenemos una Exception: $err');

  //catch En caso de que exiata un erro no esperado
  } catch (err) {
    print ('OOP!! algo terrible paso: $err');

  //finally lo que se hara exista errores o no en el try
  } finally {
    print ('Fin del try y catch');
  }
  
  print('Fin del programa');
}

Future<String> httpGet( String url ) async {
  
 await Future.delayed(const Duration(seconds: 1));
  //exception tipo de error controlado
  //throw Exception('No hay parámetros en el URL');
  
  //error no controlado
  throw 'Error en la petición http';
  
  //respuesta correcta
  //return 'Tenemos un valor de la petición';
}