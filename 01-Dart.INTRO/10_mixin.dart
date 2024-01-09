// clase padre
abstract class Animales{
  
}

abstract class Mamifero extends Animales{}
abstract class Ave extends Animales{}
abstract class Pez extends Animales{}


// mixin
// propiedada especificas que se pueden usar en clases
mixin  class Volador{
  void volar() => print('Estoy volando');
}
mixin  class Nadador{
  void nadar() => print('Estoy nadando');
}
mixin  class Caminante{
  void caminar() =>print('Estoy caminando');
}




class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Volador, Caminante{}
class Gato extends Mamifero with Caminante{}


class Paloma extends Ave with Volador, Caminante{}
class Pato extends Ave with Volador, Caminante, Nadador{}
class Tiburton extends Pez with Nadador{}
class PezVolador extends Pez with Nadador, Volador{}

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