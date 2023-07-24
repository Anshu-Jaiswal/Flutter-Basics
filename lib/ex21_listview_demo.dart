import 'package:flutter/material.dart';

class Ex21 extends StatelessWidget {
  const Ex21({Key? key}) : super(key: key);

  static final humans = [
    Human("Anshu", 24),
    Human("Anjali", 21),
    Human("Aditi", 18),
    Human("Anshika", 11),
    Human("Anshu", 24),
    Human("Anjali", 21),
    Human("Aditi", 18),
    Human("Anshika", 11),
    Human("Anshu", 24),
    Human("Anjali", 21),
    Human("Aditi", 18),
    Human("Anshika", 11),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.separated(
          itemCount: humans.length,
          itemBuilder: (context, index) {
            var human = humans[index];
            return Container(
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.amber.shade200,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.amber.shade600, width: 2, style: BorderStyle.solid)),
              child: ListTile(
                title: Text("NAME :${human.name}"),
                subtitle: Text("AGE :${human.age}"),
                leading: Card(
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("${index + 1}", style: TextStyle(color: Colors.white)),
                    )),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              thickness: 2,
              color: Colors.blue,
              indent: 100,
              endIndent: 100,
            );
          },
        ),
      ),
    );
  }
}

class Human {
  String name;
  int age;

  Human(this.name, this.age);
}
