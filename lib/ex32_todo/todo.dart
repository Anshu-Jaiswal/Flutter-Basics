// To parse this JSON data, do
//
//     final toDo = toDoFromJson(jsonString);

import 'dart:convert';

List<ToDo> toDoListFromJson(String str) => List<ToDo>.from(json.decode(str).map((x) => ToDo.fromJson(x)));
// Class contain logic to convert json data into dart (code generated using QuickType)

class ToDo {
  ToDo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  final int userId;
  final int id;
  final String title;
  final bool completed;

  factory ToDo.fromJson(Map<String, dynamic> json) => ToDo(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        completed: json["completed"],
      );
}
