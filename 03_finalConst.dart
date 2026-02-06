main () {
  var a = 10;
  final double b;
  const double c = 10; // const es mas ligero en tiempo de ejecucion
  a = 20;
  b = 20;
  //c = 20;

  print(a);
  print(b);
  print(c);

  //final personasFinal = ['Juan', 'Pedro', 'Maria']; 
  //const personasConst = ['Ana', 'Luis', 'Carlos'];
  final List<String> personasFinal = ['Juan', 'Pedro', 'Maria'];
  List<String> personasConst = const ['Ana', 'Luis', 'Carlos'];

  //personasFinal = ['Miguel', 'Sofia'];
  //personasConst = ['Miguel', 'Sofia'];
  //
  personasFinal.add('Miguel');
  //personasConst('Miguel');

  print(personasFinal);
  print(personasConst);  
  
}