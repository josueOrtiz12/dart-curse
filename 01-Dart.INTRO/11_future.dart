void main(){
  
  print('Inicio del programa');
  
  httpGet('htttp://fernando-herrera.com/curso').then( (value){
    print(value);
  }).catchError( (err){
    //err toma el valor de thorw del 
    //return del objeto Future
    print ('Erro: $err');
  });
  
  print ('Fin del programa');
}


Future<String> httpGet( String url){
  
 return Future.delayed(const Duration(seconds : 1),(){
   
   throw 'Error en la peticion http';
//    return 'Respuesta de la peticion http';
 });
}