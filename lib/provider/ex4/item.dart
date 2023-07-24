class Item {
  String id;
  int price;
  String name;
  Item(this.id, this.name, this.price);
}

final availableItems = [
  Item("itm_pzz", "Pizza", 100),
  Item("itm_bgr", "Burger", 20),
  Item("itm_psta", "Pasta", 10),
  Item("itm_ndl", "Noodles", 50),
];
