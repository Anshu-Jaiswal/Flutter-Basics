import 'package:flutter/material.dart';

import 'item.dart';

class ItemCart with ChangeNotifier {
  final _items = <Item>[];

  List<Item> get items => List.unmodifiable(_items);

  void addToCart(Item item) {
    if (isAlreadyInCart(item)) return;
    _items.add(item);
    notifyListeners();
  }

  void removeFromCart(Item item) {
    if (_items.remove(item)) {
      notifyListeners();
    }
  }

  int get itemCount => _items.length;

  bool isAlreadyInCart(Item item) {
    return _items.contains(item);
  }

  int get totalCost {
    int total = 0;
    for (var i in _items) {
      total += i.price;
    }
    return total;
  }
}
