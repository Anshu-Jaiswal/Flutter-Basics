import 'package:flutter/material.dart';
import 'package:flutter_basic/ex32_todo/downloading_todo_data.dart';
import 'package:flutter_basic/ex32_todo/todo.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("ToDo List"),
      ),
      body: FutureBuilder<List<ToDo>>(
        future: getToDo(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
            case ConnectionState.active:
              return Center(
                child: CircularProgressIndicator(),
                heightFactor: 30,
              );

            case ConnectionState.done:
              if (snapshot.hasError || !snapshot.hasData) {
                return Center(
                    child: Text(
                  "Some Error",
                  style: TextStyle(
                    fontSize: 45,
                    color: Colors.pink,
                  ),
                ));
              } else {
                return _ListTodo(snapshot.requireData);
              }
          }
        },
      ),
    ));
  }
}

class _ListTodo extends StatelessWidget {
  const _ListTodo(this.list, {Key? key}) : super(key: key);
  final List<ToDo> list;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          var l = list[index];
          return ListTile(
              title: Text(l.title),
              leading: Card(
                color: Colors.grey.shade100,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("${l.id}"),
                ),
              ),
              trailing: l.completed
                  ? Icon(
                      Icons.done_sharp,
                      color: Colors.green,
                    )
                  : Icon(
                      Icons.close_sharp,
                      color: Colors.pink,
                    ));
        },
        separatorBuilder: (context, index) => Divider(thickness: 2, color: Colors.grey.shade400),
        itemCount: list.length);
  }
}
