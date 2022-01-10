class Items {
  List<Item> items = [];

  initialize() {
    List<Item> _items = [];
    for (int i = 1; i < 79; i++) {
      Item ie = Item(i);
      ie.initialize();
      _items.add(ie);
    }
    //_items.shuffle();
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
    List l = [
      "Ant",
      "Apple",
      "Aeroplane",
      "Ball",
      "Banana",
      "Balloon",
      "Coconut",
      "Car",
      "Cake",
      "Dog",
      "Doll",
      "Duck",
      "Egg",
      "Eye",
      "Eagle",
      "Fan",
      "Fish",
      "Flower",
      "Glass",
      "Guitar",
      "Giraffe",
      "Hat",
      "Home",
      "Handshake",
      "Iron",
      "Injection",
      "Ice-cream",
      "Jug",
      "Juice",
      "Jacket",
      "Key",
      "Kite",
      "Kangaroo",
      "Lamp",
      "Lion",
      "Lemon",
      "Money",
      "Mango",
      "Mask",
      "Net",
      "Nib",
      "Necklace",
      "Ox",
      "Onion",
      "Orange",
      "Pencil",
      "Panda",
      "Parrot",
      "Queen",
      "Quail",
      "Quill",
      "Ring",
      "Rose",
      "Rabbit",
      "Sun",
      "Ship",
      "Shoe",
      "Tree",
      "Tiger",
      "Tomato",
      "Unicorn",
      "Uniform",
      "Umbrella",
      "Van",
      "Vase",
      "Vegetable",
      "Watch",
      "Window",
      "Watermelon",
      "X-ray",
      "Xmas Tree",
      "Xylophone",
      "Yak",
      "Yacht",
      "Yogurt",
      "Zero",
      "Zebra",
      "Zipper",
    ];
    // l.remove(word);
    if (index < 75) {
      int newIndex = l.indexOf(word);
      l.remove(word);
      String op1 = l[newIndex];
      l.remove(op1);
      String op2 = l[newIndex];
      List<String> listOfOp = [word, op1, op2];
      listOfOp.shuffle();
      options = listOfOp;
    } else {
      List<String> listOfOp = [l[75], l[76], l[77]];
      listOfOp.shuffle();
      options = listOfOp;
    }
  }
}

List words = [
  "Ant",
  "Apple",
  "Aeroplane",
  "Ball",
  "Banana",
  "Balloon",
  "Coconut",
  "Car",
  "Cake",
  "Dog",
  "Doll",
  "Duck",
  "Egg",
  "Eye",
  "Eagle",
  "Fan",
  "Fish",
  "Flower",
  "Glass",
  "Guitar",
  "Giraffe",
  "Hat",
  "Home",
  "Handshake",
  "Iron",
  "Injection",
  "Ice-cream",
  "Jug",
  "Juice",
  "Jacket",
  "Key",
  "Kite",
  "Kangaroo",
  "Lamp",
  "Lion",
  "Lemon",
  "Money",
  "Mango",
  "Mask",
  "Net",
  "Nib",
  "Necklace",
  "Ox",
  "Onion",
  "Orange",
  "Pencil",
  "Panda",
  "Parrot",
  "Queen",
  "Quail",
  "Quill",
  "Ring",
  "Rose",
  "Rabbit",
  "Sun",
  "Ship",
  "Shoe",
  "Tree",
  "Tiger",
  "Tomato",
  "Unicorn",
  "Uniform",
  "Umbrella",
  "Van",
  "Vase",
  "Vegetable",
  "Watch",
  "Window",
  "Watermelon",
  "X-ray",
  "Xmas Tree",
  "Xylophone",
  "Yak",
  "Yacht",
  "Yogurt",
  "Zero",
  "Zebra",
  "Zipper",
];
