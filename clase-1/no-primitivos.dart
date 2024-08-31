import 'Colors.dart';
import 'Propiedades.dart';

void main() {
  const Colors color = Colors.RED;

  const Propiedades propiedad =
      Propiedades.GRAND_OASIS; // viene de la base datos;

  if (propiedad == Propiedades.MOON_PALACE) {
    //print("Tienes estos beneficios");
  }

  List<int> numbers = [1, 2, 3, 4, 5];

  Set<int> uniqueNumbers = {1, 2, 3, 4, 5};

  for (var i = 0; i < numbers.length; i++) {
    // print(numbers[i]);
  }
  //numbers.forEach(print);
  numbers.forEach((number) {
    // print("Number: $number");
  });

  Map<String, int> ages = {"Juan": 10, "Pedro": 20, "Maria": 30, "Jose": 40};
  List<String> nombres = ages.keys.toList();
  nombres.forEach((nombre) {
    String edad = ages[nombre].toString();
    // print("$nombre =  Edad $edad");
  });
  Person person = new Person("Luis", "Mejia");
  person.printName();
}

class Person {
  String name = "";
  String lastName = "";

  //Person(this.name, this.lastName);
  Person(name, last) {
    this.name = name;
    this.lastName = last;
  }

  void printName() {
    print(name);
  }
}
