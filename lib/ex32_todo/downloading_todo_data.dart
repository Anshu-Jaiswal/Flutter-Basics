import 'package:flutter_basic/ex32_todo/todo.dart';
import 'package:http/http.dart' as http;

Future<List<ToDo>> getToDo() async {
  try {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/todos");
    final response = await http.get(url);
    return toDoListFromJson(response.body);
  } catch (e) {
    throw Error();
  }
}
