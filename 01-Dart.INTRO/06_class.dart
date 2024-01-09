 void main(){
   
   
//  De esta manera genera el objeto con valores posicionales   
//    final Hero wolvorine = new Hero('Logan' , 'Garras retractiles');
   
   
 //De esta manera genera el objeto con clave valor
   
   final Hero wolvorine = Hero(name : 'Logan' , power :'Garras retractiles');
   print(wolvorine);
   print(wolvorine.name);
   print(wolvorine.power);
 }

// la clase es el molde
class Hero{
  
  String name;
  String power;
  
//   construtor de la clase
  
  //*Tercera manera de incializar el constructor
//   le pasara los argumentos con clave valor
  Hero({
   required this.name,
    //si no se envia un valor al invocar la funcion construtor
    //devolvera el valor que se le asine.
   this.power = 'Sin poder'
   
  });
  
  //sobre escribe el comportamineto nativo de algo
//   el toString lo coloca autmaticamente cuando usas
//     el metodo print aunque no se vea
//     print(wolvorine); ----->  print(wolvorine.toString());

  @override
  String toString(){
    return '$name - $power';
  }
  
  
  
//   *segunda manera de inicializar el constructor
//  De esta manera genera el objeto con valores posicionales   
//   Hero(this.name , this.power);
  
  
//  * primera manera de incializar el constructor
//   Hero(String pName, String pPower)
//     : name = pName,
//       power = pPower;
}