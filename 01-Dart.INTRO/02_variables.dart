void main(){

  // variables usando type savety
  final String pokemon = 'Pikachu';
  final int hp = 100;
  final bool  isAlive = true;
  final List<String> abilities = ['Impactrueno, Cegar'];
  final List<String> sprites = ['pikachu/front.dart , pikachu/back.dart'];

  
//   dynamic = cualquier tipo de dato
//   por defecto acepta nulos
//   dynamic == null;
  dynamic errorMessage = 'hola';
  errorMessage = 404;
  errorMessage = false;



 //listado llaves cuadradas []
  //iterable de datos parentesis () | 
  errorMessage = (1 , 2, 3 , 4);
  
  //set de datos{}
  errorMessage = {1 , 2 ,3 };
  
  
//   tambien puede ser igual a una funcion que retorne boleano
  errorMessage = ()=> true;
  
// y nulos
  errorMessage = null;
  
  print ("""
        $pokemon
        $hp
        $isAlive
        $abilities
        $sprites
        $errorMessage
        
        """);
}