import 'package:flutter/material.dart';
import 'package:flutter_basic/provider/ex4/cart.dart';
import 'package:flutter_basic/provider/ex4/item.dart';
import 'package:provider/provider.dart';

class ShoppingMain extends StatelessWidget {
  const ShoppingMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Shopping"), actions: [const _CartCounterWidget()]),
      body: const _ShoppingListView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.shopping_bag_sharp),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OrderScreen(),
              ));
        },
      ),
    );
  }
}

class _ShoppingListView extends StatelessWidget {
  const _ShoppingListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final item = availableItems[index];
        return _ShoppingListTile(item: item);
      },
      itemCount: availableItems.length,
    );
  }
}

class _ShoppingListTile extends StatelessWidget {
  final Item item;

  const _ShoppingListTile({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.name, style: const TextStyle(fontSize: 20)),
      subtitle: Text(item.price.toString()),
      trailing: _PickDropBtn(item),
    );
  }
}

class _PickDropBtn extends StatelessWidget {
  final Item item;
  const _PickDropBtn(this.item);

  @override
  Widget build(BuildContext context) {
    var inCart = context.select((ItemCart c) => c.isAlreadyInCart(item));
    // var inCart = context.watch<ItemCart>().isAlreadyInCart(item);
    final label = inCart ? "Drop" : "Pick";
    final color = inCart ? Colors.red : Colors.blue;
    return ElevatedButton(
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
      onPressed: () {
        inCart
            ? context.read<ItemCart>().removeFromCart(item)
            : context.read<ItemCart>().addToCart(item);
      },
      child: Text(label),
    );
  }
}

class _CartCounterWidget extends StatelessWidget {
  const _CartCounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var count = context.select((ItemCart c) => c.itemCount);
    return Container(
      decoration: BoxDecoration(
          color: Colors.green.shade800,
          borderRadius: BorderRadius.circular(4.5)),
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 2.5),
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.green.shade200,
            borderRadius: BorderRadius.circular(4)),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
            child: Text(count.toString(),
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black))),
      ),
    );
  }
}

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = context.watch<ItemCart>().items;

    return Scaffold(
      appBar: AppBar(
        title:
            Text("Your Cart : ${context.select((ItemCart c) => c.totalCost)}"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          var item = items[index];
          return ListTile(
            title: Text(item.name),
          );
        },
      ),
    );
  }
}
