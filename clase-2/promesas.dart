void main() {
/*   fetchData()
      .then((value) => {print(value)})
      .catchError((error) => {print("Error")}); */

  fetchString()
      .then((response) => {
            response.forEach((element) {
              print("Elemento: $element");
            })
          })
      .catchError((error) => {print("Error")});
  print("Fin del programa");
}

fetchData() {
  return Future.delayed(Duration(seconds: 1), () {
    print("Datos obtenidos 1");
    return "Datos obtenidos 2";
  });
}

Future<List<int>> fetchString() {
  return Future.delayed(Duration(seconds: 1), () {
    print("Datos obtenidos 1");
    return [1, 2, 3, 4, 5];
  });
}
