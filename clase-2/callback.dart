void main() {
  miFuncion(35, imprimir);
}

void imprimir(int edad) => print('Hola la edad es $edad');
miFuncion(int edad, void otraFuncion(int edad)) {
  print(edad);
  otraFuncion(edad);
}
