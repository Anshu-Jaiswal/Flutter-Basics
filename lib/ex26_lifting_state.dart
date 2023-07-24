import 'package:flutter/material.dart';

//Lifting state up
// In Flutter, it makes sense to keep the state above the widgets that use it.
//state which is being dependent upon by the set of widgets and place it as far up as the parent widget
// that enclose all those widgets,

class Ex26 extends StatefulWidget {
  const Ex26({Key? key}) : super(key: key);

  @override
  State<Ex26> createState() => _Ex26State();
}

class _Ex26State extends State<Ex26> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Count = $count"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AdditionBtn(increase), //  function passed as an argument to the widget
          SubtractBtn(decrease),
        ],
      ),
    );
  }

  void increase() => setState(() =>
      count++); // declare all function in parent to update the  count state and will be  accessible by all widget.

  void decrease() => setState(() => count--);
}

class AdditionBtn extends StatelessWidget {
  const AdditionBtn(this.onClick, {Key? key})
      : super(key: key); // received the function and initialised using constructor
  final VoidCallback onClick; //  VoidCallback datatype used to declare function variable

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onClick, child: Text("Add"));
  }
}

class SubtractBtn extends StatelessWidget {
  const SubtractBtn(this.onPressed, {Key? key}) : super(key: key);
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text("sub"));
  }
}
