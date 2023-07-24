import 'package:flutter_basic/ex33_Navigation/user.dart';
import 'package:http/http.dart' as http;

Future<List<User>> getData() async {
  try {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/users");
    final response = await http.get(url);
    return userListFromJson(response.body);
  } catch (e) {
    throw Error();
  }
}
