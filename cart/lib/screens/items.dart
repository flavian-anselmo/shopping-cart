import 'package:cart/screens/cart.dart';
import 'package:flutter/material.dart';

class ItemsToCart extends StatefulWidget {
  ItemsToCart({Key? key}) : super(key: key);
  static final id = 'itemsScreen';

  @override
  _ItemsToCartState createState() => _ItemsToCartState();
}

class _ItemsToCartState extends State<ItemsToCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('items')),
        actions: [
          InkWell(
            focusColor: Colors.blue,
            child: Icon(
              Icons.shopping_cart,
            ),
            onTap: () {
              //GO TO THE CHECK OUT SCREEN
              //display the items added to the cart 
              Navigator.pushNamed(context, CartAdded.id);
            },
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(),
      ),
    );
  }
}
/***
 * this are the items that are assumed to be in the database 
 * or fecthed form an endpoint provided form a backend 
 * This can be a list of items to be baught from an app 
 * hence the user us required to add to cart 
 */
