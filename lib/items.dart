import 'dart:math';

class Items {
  List<Item> items = [];

  initialize() {
    List<Item> _items = [];
    for (int i = 1; i < 27; i++) {
      Item ie = Item(i);
      ie.initialize();
      _items.add(ie);
    }
    _items.shuffle();
    items = _items;
  }
}

class Item {
  int index;
  Item(this.index);
  String get word => words[index - 1];
  String get image => "assets/images/$index.png";
  String get sound => "assets/sounds/$index.mp3";
  List<String> options = [];

  initialize() {
    Random rand = Random();
    List l = [
      "Ant",
      "Ball",
      "Cat",
      "Doll",
      "Egg",
      "Fan",
      "Gift",
      "Hen",
      "Ice",
      "Jelly",
      "Kite",
      "Lemon",
      "Mango",
      "Nail",
      "Owl",
      "Pen",
      "Queen",
      "Ring",
      "Sand",
      "Tops",
      "Umbrella",
      "Van",
      "Win",
      "Xylophone",
      "Yak",
      "Zoo",
    ];
    l.remove(word);
    String op1 = l[rand.nextInt(24)];
    l.remove(op1);
    String op2 = l[rand.nextInt(23)];
    l.remove(op2);
    String op3 = l[rand.nextInt(22)];
    List<String> listOfOp = [word, op1, op2, op3];
    listOfOp.shuffle();
    options = listOfOp;
  }
}

List words = [
  "Ant",
  "Ball",
  "Cat",
  "Doll",
  "Egg",
  "Fan",
  "Gift",
  "Hen",
  "Ice",
  "Jelly",
  "Kite",
  "Lemon",
  "Mango",
  "Nail",
  "Owl",
  "Pen",
  "Queen",
  "Ring",
  "Sand",
  "Tops",
  "Umbrella",
  "Van",
  "Win",
  "Xylophone",
  "Yak",
  "Zoo",
];
