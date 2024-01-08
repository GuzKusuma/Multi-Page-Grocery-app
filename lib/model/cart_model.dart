import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    [
      "avocado",
      "4.99",
      "https://w7.pngwing.com/pngs/423/156/png-transparent-avocado-taobao-creative-fruit-avocado.png",
      Colors.green
    ],
    [
      "Banana",
      "2.99",
      "https://w7.pngwing.com/pngs/2/105/png-transparent-banana-peel-food-health-banana-eating-nutrition-fruit.png",
      Colors.yellow
    ],
    [
      "chicken",
      "8.99",
      "https://w7.pngwing.com/pngs/389/76/png-transparent-chicken-chicken-meat-protein.png",
      Colors.brown
    ],
    [
      "Water",
      "9.99",
      "https://w7.pngwing.com/pngs/308/919/png-transparent-mineral-water-bottles-transparent-bottle-mineral-water-bottles-mineral-water.png",
      Colors.blue
    ],
  ];

  ///list of cart items
  final List _cartItems = [];
  get shopItems => _shopItems;
  get cartItems => _cartItems;

  ///add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  ///remove item from cart
  void removeItemsFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  ///calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
