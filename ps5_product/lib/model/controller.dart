abstract class Item {}

class Controller extends Item {
  final String imagePath, title, description;

  Controller(this.imagePath, this.title, this.description);
}

final controllers = [
  Controller("assets/images/ps5_dual_sense.png", "Dual Sense",
      "Official PS5 Controller"),
  Controller("assets/images/ps5_dual_sense_black.png", "Dual Sense Black",
      "Official PS5 Controller"),
  Controller("assets/images/ps5_dual_sense.png", "Dual Sense",
      "Official PS5 Controller"),
  Controller("assets/images/ps5_dual_sense_black.png", "Dual Sense Black",
      "Official PS5 Controller"),
];
