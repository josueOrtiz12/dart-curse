void main(){
  
  final windPlant = WindPlant(inicialEnergy : 100 );
  
  final nuclearPlant = NuclearPlant(energyLeft : 1000 );
  
  
  print('Wind: ${changePhone (windPlant)}' );
   print('Nuclear: ${changePhone (nuclearPlant)}' );
  
  

}





//plant = es el nombre que le damos para utilizar el valor  
  double changePhone (EnergyPlant plant ){
    if(plant.energyLeft < 10){
      throw Exception('Not enough energy');
    }
    return plant.energyLeft -10;
  }





// enumeracion 
enum PlantType {nuclear , wind, water}


//clase abstracta es un "molde" para 
//otros "moldes" mas pequeños
abstract class EnergyPlant{
  
  double energyLeft;
  final PlantType type; //Nuclear , wind, water
  
  //constructor
  EnergyPlant({
    required this.energyLeft,
    required this.type
  });
  
  //metodo sin usar
  void consumeEnergy( double amount);
  
}
//////Ahora podemos usar la clase padre y externderla

//////////////////////extends 
class WindPlant extends EnergyPlant{
  
  
  WindPlant ({required double inicialEnergy })
  //super para llamar el nombre del constructor del padre
  : super( energyLeft: inicialEnergy , type: PlantType.wind);
    
  
  //ahora si usamos el metodo del padre
  @override
  void consumeEnergy( double amount){
    energyLeft -= amount;
  }
}

//////////////////////implements 

class NuclearPlant implements EnergyPlant {
   @override
  double energyLeft;
   @override
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant({
    required this.energyLeft,
 
  });
   @override
  void consumeEnergy( double amount){
    energyLeft -= (amount *0.5);
  }
  
}



