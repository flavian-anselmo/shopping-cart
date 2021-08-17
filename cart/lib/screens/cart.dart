import 'package:cart/provider/provider.dart';
import 'package:flutter/material.dart';

class CartAdded extends StatefulWidget {
  CartAdded({Key? key}) : super(key: key);
  static final id = 'checkoutScreen';

  @override
  _CartAddedState createState() => _CartAddedState();
}

class _CartAddedState extends State<CartAdded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: CartModel.cart.length,
          itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Text(CartModel.cart[index]),
          );
         },
        ),
      ),
    );
  }
}
/**
 * display the items that  chosen form the items screen 
 * this should be able to maintain the state of the app 
 * even if the app is closed and opened later 
 * 
 */
