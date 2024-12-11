import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  List<List> cart = [];
  double total = 0;

  void addCart(String item, double price) {
    print("adding to cart");
    total += price;
    cart.add([item, price]);
  }
}