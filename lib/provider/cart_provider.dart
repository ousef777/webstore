import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  List<List> cart = [];
  double total = 0;

  void addCart(String item, double price) {
    print("adding to cart");
    total += price;
    cart.add([item, price]);
  }

  void removeCart(String item, double price) {
    print("removing from cart");
    total -= price;
    print(item + price.toString());
    print(cart.firstWhere((test) => test[0] == item && test[1] == price).toString());
    cart.removeAt(cart.indexWhere((test) => test[0] == item && test[1] == price));
    print(total);
  }
}