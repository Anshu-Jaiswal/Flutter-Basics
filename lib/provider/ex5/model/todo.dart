class ToDo {
  String id;
  String todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: "Morning Exercise", isDone: true),
      ToDo(id: '02', todoText: "Buy Groceries", isDone: false),
      ToDo(id: '03', todoText: "Check mails", isDone: true),
      ToDo(id: '04', todoText: "Jitsi Meet", isDone: true),
      ToDo(id: '05', todoText: "Practise", isDone: false),
    ];
  }
}
