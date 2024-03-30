import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> Shoeshop = [
    Shoe(
        name: "SoloMaxLevel",
        price: "Rs15799.99",
        description:
            "Jinhyuk, a gaming Nutuber, was the only person who saw the ending of the game [Tower of Trials].",
        imagePath: "lib/images/shoe1.jpg"),
    Shoe(
        name: "Over Powered",
        price: "Rs51109.99",
        description:
            " The protagonist of a story is always decided from the start. No matter how hard the supporting role tries, they’ll just be a supporting role in the end. Then, a moment came where all of that changed.",
        imagePath: "lib/images/shoe2.png"),
    Shoe(
        name: "TrashClass Hero",
        price: "Rs95559.99",
        description:
            "Kang Han Soo is the main protagonist of the web novel and manhwa, FFF-Class Trashero.",
        imagePath: "lib/images/shoe3.webp"),
    Shoe(
        name: "Solo Leveling",
        price: "Rs999999.99",
        description:
            "10 years ago, after “the Gate” that connected the real world with the monster world opened, some of the ordinary, everyday people received the power to hunt monsters within the Gate. They are known as “Hunters”. ",
        imagePath: "lib/images/shop4.webp"),
    Shoe(
        name: "Regressor ",
        price: "Rs1999.99",
        description:
            "He had borne through each day with pure rage. Finally at the end of his misery, his wish reached the heavens—an unforgiven one. ",
        imagePath: "lib/images/shoe5.png")
  ];
  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return Shoeshop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
