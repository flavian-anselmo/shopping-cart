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
        actions: [
          TextButton(
              onPressed: () {
                //update the ui in real time
                // Provider.of(context, listen: false)<CartModel>()
                //     .deleteFromCart(CartModel.cart);

                setState(() {
                  CartModel.cart.clear();
                });
                // Navigator.pushNamed(context, ItemsToCart.id);
              },
              child: Text('clear')),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
            itemCount: CartModel.cart.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                  child: ListTile(
                leading: Text(CartModel.cart[index]),
                trailing: TextButton(
                  onPressed: () {
                    //remove the items from the cart
                    setState(() {
                      CartModel.cart.removeAt(index);
                    });
                  },
                  child: Text('Delete'),
                ),
              ));
            },
          ),
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
