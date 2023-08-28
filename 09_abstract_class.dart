void main(){
  
  final windPlant = WindPlant(initialEnergy: 100);
  
  final nuclearPlant = NuclearPlant(energyLeft: 1000);
  
  print('wind: ${ chargePhone(windPlant) }');
  print('nuclear: ${ chargePhone(nuclearPlant) }');
  
  //print(windPlant);
  
}

double chargePhone (EnergyPlant plant) {
  if(plant.energyLeft < 10){
    throw Exception('Not enough energy');
  }
  
  return plant.energyLeft - 10;
}

//tipo de variable especial
//Cuando tenemos tipos especificos en lugar de un string podemos utilizar enum
enum PlantType { nuclear, wind, water }

//Las clases abstractes sirven como moldes para hacer moldes
//Sirve para indicar lo que otras clases deben de tener
abstract class EnergyPlant {
  
  double energyLeft;
  final PlantType type; //nuclear, wind, water
  
  //constructor
  EnergyPlant({required this.energyLeft, required this.type});
  
  //metodo para indicar la cantidad de energuia que quiero consumir
  void consumeEnergy( double amount );
}

// extends o implements
class WindPlant extends EnergyPlant{
  
  WindPlant({ required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlantType.wind ); //llama el constructor del padre 
  
  @override
  void consumeEnergy( double amount ) {
    energyLeft -= amount;
  }
}

class NuclearPlant implements EnergyPlant {
  
  @override
  double energyLeft;
  
  @override
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant({required this.energyLeft});
    
  @override
  void consumeEnergy( double amount ){
    energyLeft -= (amount * 0.5);
  }
  
}