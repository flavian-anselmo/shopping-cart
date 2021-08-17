import 'package:flutter/widgets.dart';

class Items {
  static List<String> cartItems = [
    'MacBook',
    'Lenovo',
    'Dell',
    'Helwet packard'
  ];
  static List getListOfItems() {
    return cartItems;
    //return the existing list of the items in the items screen
    //this are the items that the user will click to add to the
    //list of items in the cart
  }
}

class CartModel extends ChangeNotifier {
  static List cart = [];
  //method to add items to the cart
  void addToCart(String item) {
    cart.add(item);
    //allow the user to add items in the cart
    notifyListeners();
  }

  //method to delete item form the cart
  void deleteFromCart(String item) {
    cart.remove(item);
    //allow the user to remove items from the cart
    notifyListeners();
  }

  List getCartItems() {
    return cart;
    //return all the items that are added to the cart
  }
}
/**
 * this is a class model that will be used to maintain the 
 * state data in the application 
 * this class model usallt extends the changeNotifier 
 * 
 * IN this case we have a list of items that will be used in the
 * checkout screen and in the item screen 
 * This is a typical demonstration for a shoping cart 
 * 
 *--------------- notifyListener--------------
 *this is provided by changeNotifier and as the name indicates it will 
 *notify the flutter UI to repaint itself when the value is changed 
 *call it every time the value is changed or updated otherwise the 
 UI will not refresh itself to get the new data 
 * 
 */
