import 'package:cart/provider/provider.dart';
import 'package:cart/screens/cart.dart';
import 'package:cart/screens/items.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      //RAISE STATE AT THE HIGHEST PART POSSIBLE 
      //for our case it is the cartModel 
      create: (context)=>CartModel(),
      child: MaterialApp(
        title:'cart demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          
        ),
        initialRoute: ItemsToCart.id,
        routes: {
          ItemsToCart.id:(context)=>ItemsToCart(),
          CartAdded.id:(context)=>CartAdded(),
        },
      ),
    );
  }
}


/**@documentation
 * include the change notifier in the highest possible level 
 * so that data can be shared .I will add it at main level so that the 
 * data will be available across the whole application 
 * Wrap it around the materialapp widget which is the main point of my app 
 */