import 'dart:convert';

//  step 2 Class  that convert Json data into Dart

List<Album> albumListFromJson(String str) => List<Album>.from(json.decode(str).map((x) => Album.fromJson(x)));

class Album {
  Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  final int userId;
  final int id;
  final String title;

  factory Album.fromJson(Map<String, dynamic> json) => Album(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
      );
}
