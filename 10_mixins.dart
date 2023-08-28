//Clase abstracta Animal
abstract class Animal {}

//Clases que heredan de Animal
abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}

//mixins
mixin class Volador {
  void volar() => print('estoy volando!');
}

mixin class Caminante {
  void caminar() => print('estoy caminando!');
}

mixin class Nadador {
  void nadar() => print('estoy nadando!');
}


//Se utiliza el with para implementar el Mixin, es como darle una especialisacion al animal
//Mamifers
class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Volador, Caminante{}
class Gato extends Mamifero with Caminante{}

//Aves
class Paloma extends Ave with Volador, Caminante {}
class Pato extends Ave with Volador, Caminante, Nadador {}

//Paces
class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Volador, Nadador {}


//Función main principal
void main(){
  final flipper = Delfin();
  flipper.nadar();
  
  final batman = Murcielago();
  batman.caminar();
  batman.volar();
  
  final namor = Pato();
  namor.caminar();
  namor.volar();
  namor.nadar();
}