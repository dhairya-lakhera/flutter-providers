import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  //It must not be final because it can be changed.
  List<dynamic> _cartItems = ['Soap', 'Toothpaste', 'Black pepper'];

  getCartItems() {
    //we must not return the _cartItems object directly. Rather return only items.
    return [..._cartItems];
  }

  addCartItem(String? item) {
    _cartItems.add(item);
    notifyListeners();
  }
}
