import 'dart:convert'; // decodificar y codificar JSON
import 'package:http/http.dart' as http;

Future<void> main() async {
  await fetchData();
  print("Fin del programa");
}

Future<void> fetchData() async {
  try {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));

    final hasError = response.statusCode != 200;
    if (hasError) {
      throw Exception('Error');
    }

    final data = jsonDecode(response.body);
    data.forEach((element) => print(element["title"]));
  } catch (e) {
    print(e);
  }
}
