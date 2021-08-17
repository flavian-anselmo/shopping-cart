import 'package:flutter/widgets.dart';

class CartModel extends ChangeNotifier {
  List<String> cartItems = [];
  //method to add items to the cart
  void addToCart(String item) {
    cartItems.add(item);
    //allow the user to add items in the cart
    notifyListeners();
  }

  //method to delete item form the cart
  void deleteFromCart(String item) {
    cartItems.remove(item);
    //allow the user to remove items from the cart
    notifyListeners();
  }

  List getCartItems() {
    return cartItems;
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
