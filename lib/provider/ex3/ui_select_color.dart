import 'package:flutter/material.dart';
import 'package:flutter_basic/provider/ex3/color_provider.dart';
import 'package:flutter_basic/utils/random_color.dart';
import 'package:provider/provider.dart';

class SelectColor extends StatelessWidget {
  const SelectColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.select((ColorProvider p) => p.color),
        title: const Text("Color change"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            _ColorBtnWidget(Colors.amber),
            _ColorBtnWidget(Colors.red),
            _ColorBtnWidget(Colors.blue),
            _ColorBtnWidget(Colors.green),
          ],
        ),
      ),
    );
  }
}

class _ColorBtnWidget extends StatelessWidget {
  final Color c;
  const _ColorBtnWidget(this.c);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration:
          BoxDecoration(border: Border.all(color: randomColor(), width: 4)),
      child: ElevatedButton(
        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(c)),
        child: const Text(""),
        onPressed: () => context.read<ColorProvider>().color = c,
      ),
    );
  }
}
