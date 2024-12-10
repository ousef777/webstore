import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  List<String> cart = [];

  void addCart(String item) {
    print("adding to cart");
    cart.add(item);
  }
}