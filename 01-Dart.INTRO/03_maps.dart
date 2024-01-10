void main(){
  
  final Map <String , dynamic> pokemon ={
    'name' : 'Pikachu',
    'hp' : 100,
    'isAlive' : true,
    'abilites' : ['Impactrueno'],
    'sprintes' : { 
     1 :  'pikachu/front.png',
     2 :  'Pikachu/back.png',
    }
  };
  
  print(pokemon);
  print('Name : ${ pokemon['name']}');
  print('Hp : ${pokemon['hp']}');
  print('Is alive : ${pokemon['isAlive']} ');
  print('Anbilites : ${pokemon['abilites']}');
  print('Back : ${pokemon['sprintes'][1]}');
  print('Front : ${pokemon['sprintes'][1]}');

}