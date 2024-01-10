void main(){
  
  final numbers = [1,2,3,4,4,5,6,7,7,8,9,10,10 ];
  
  print('List Original : ${numbers}');
  print('Lenth list :  ${numbers.length}');
  print('Index 0 : ${numbers[0]}');
  print('First Elment : ${numbers.first}');
  
  //regresa la lista alrevez 
  //pero convierte la lista en un iterable
  
  print('Reversed : ${numbers.reversed}');
  
  
  final reversedNumber = numbers.reversed;
  print ('Iterable : ${reversedNumber}');
  
  //paso el iterable a una lista con el metodo .tolist[]
  print ('List : ${reversedNumber.toList()}');
  
  //paso el iterable a un set con el metodo .toSet[]
  //la ventaja es que set no repite valores son siempre unicos.
  print('Set : ${reversedNumber.toSet()}');
  
  final numberGreaterThan5 = numbers.where(( int numb ){
    return numb > 5; //true
  });
  print('>5 Iterable: ${numberGreaterThan5}');
  print('>5 Set : ${numberGreaterThan5.toSet()}');
}
