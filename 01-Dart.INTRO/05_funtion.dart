void main() {
  print('Functions');

  print(greetEveryone());

  print('Suma : ${addTwoNumber(5, 8)}');

  print('addition number Two: ${additionTwoNumber(2, 3)}');

  print(greetPerson(name: 'Josue', message: 'hi'));
}

// funciones usando type savety

// se pueden crear funcion flecha, directamente retornaremos
// lo que queramos, no puede tener un cuerpo
String greetEveryone() => 'hello Everyone';

//hacer una funcion que retorne una suma entre a y b
//y que solo acepte numeros.

int addTwoNumber(int a, int b) {
  return (a + b);
}

//Hacer una funcion fecha que sustituya la anterior funcion
//de suma.

int additionTwoNumber(int a, int b) => (a + b);

//Hacer que los value puedan venir vacio y sea opcional

int addTwoNumeOptional(int a, [int b = 0]) {
  //lo que esta dentro de los parametros en b
  //es lo mismo que "string? name;"

  // b?? = 0;
  return a + b;
}

// FUNCIONES POSICIONALES

String greetPerson({required String name, String message = 'hola'}) {
  return '$message, $name ';
}
