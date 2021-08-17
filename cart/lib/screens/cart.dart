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
        child: Container(),
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
