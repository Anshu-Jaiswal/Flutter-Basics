import 'package:flutter_basic/ex31/album.dart';
import 'package:http/http.dart' as http;

//  step 1 Asynchronous function to download data from Internet

Future<List<Album>> getAlbums() async {
  try {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/albums"); // it convert string into url
    final response = await http.get(
        url); // sending get request to that url to get response and it will not proceed until response is not received
    return albumListFromJson(response.body); //  passing response as an argument to a class
  } catch (e) {
    throw Error();
  }
}
