import 'dart:collection';

void main() {
  Queue<dynamic> cola = Queue<dynamic>();
  cola.add(1);
  cola.addAll([2, 3, 4, 5]);
  cola.addFirst("Luis");
  cola.addLast("Mejia");
  print(cola);

  Iterator it = cola.iterator;

  cola.forEach((element) {
    print("Elemento: $element");
  });

  while (it.moveNext()) {
    print(it.current);
  }
}
