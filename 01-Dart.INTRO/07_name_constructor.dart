void main(){
  
  final Map<String, dynamic> rawJson = {
    'name' : 'Tony Stark',
    'power' : 'Armor',
    'isAlive' : true
  };
  
  final ironman = Hero.fromJson( rawJson );
  print(ironman);
  
//  final ironman = Hero( 
//    name :' Tony Stark' , 
//    power :'armor', 
//    isAlive : true );

}


 class Hero{
    String name;
    String power;
    bool isAlive;
    
    
    Hero({
      required this.name,
      required this.power,
      required this.isAlive,
    });
   
//    Hero.fromJson( Map<String,dynamic> json)
//      : name = json['name'] ?? 'Not name found ',
//       power = json['power'] ?? 'Not power found ',
//       isAlive = json['isAlive'] ?? 'Not isAlive found';
  
   
   //puedes crear un constructor con el nombre que necesites
   //en este caso es .fromJson
   Hero.fromJson(Map<String, dynamic> json)
     : name = json['name'] ?? 'Not name found',
       power = json['power'] ?? 'Not power found',
       isAlive = json['isAlive'] ?? 'Not isAlive found';
   
  
  //para quitar el instance class al momento de usar
//    print(ironman);
   @override
   String toString(){
     return '$name, $power, isAlive: ${ isAlive ? 'Yes' : 'Nope'}';
   }
 }