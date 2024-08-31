void main() {
  /* String saludo1 = saludar('Juan', 'Perez', 30);
  // print(saludo);
  String saludo = saludar2(amigos: ['Pedro', 'Maria']);
  print(saludo); */
  //imprimir_nombres(['Pedro', 'Maria', 'Juan']);
  List<int> numeros = multiplicador([1, 2, 3, 4, 5]);
  List<int> filtrados = numeros.where((element) => element > 2).toList();

  filtrados.forEach((element) => print("Elemento: $element"));
}

int sumar(int a, int b) {
  return a + b;
}

int sumar_flecha(int a, int b) => a + b;

void imprimir_nombres(List<String> amigos) =>
    amigos.forEach((element) => print(element));

List<int> multiplicador(List<int> numeros, [String? nombre]) =>
    numeros.map((e) => e * 2).toList();

String saludar(String nombre, [String? apellido, int? edad]) {
  return 'Hola $nombre el apellido es $apellido y la edad es $edad';
}

String saludar2(
    {String? nombre,
    String? apellido,
    int? edad,
    required List<String> amigos}) {
  amigos.forEach((amigo) => print(amigo));
  return "Hola $nombre el apellido es $apellido y la edad es $edad";
}
