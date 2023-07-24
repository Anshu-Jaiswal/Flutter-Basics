main() async {
  //printHello();
  // printHelloDelayed();
  // getSum(2, 4).then((value) => print(value));
  // getSum(6, 4).then(print);
  // final h = await makeHuman("Anshu");
  // print(h.runtimeType);
  // print(h.name);
  makeHuman("Alpha").then((h) {
    print(h.runtimeType);
    print(h.name);
  });
  print("End of main");
}

Future<Human> makeHuman(String s) async {
  print("Making human");
//  await Future.delayed(Duration(seconds: 3));
  // print("hey");
  await Future.delayed(Duration(seconds: 2));
  return Human(s);
}

Future<int> getSum(int i, int j) async {
  await Future.delayed(Duration(seconds: 2));
  return i + j;
}

void printHelloDelayed() async {
  await Future.delayed(Duration(seconds: 4));
  print("Hello from future");
}

void printHello() {
  print("Hello Everyone");
}

class Human {
  String name;
  Human(this.name);
}
