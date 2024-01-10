void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('htttp://fernando-herrera.com/curso');
    print('exito: $value');

  }on Exception catch(err){
    print('Tenemos una Exception: $err');
  } catch (err) {
    print('Algo a pasado: ${err}');
  } finally {
    print('Fin del try cath');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw Exception('No hay parárametros en el URL');
  
//   throw 'Erro en la peticion';
//  return 'Tenemos un valor de la peticion';
}

