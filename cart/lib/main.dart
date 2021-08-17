import 'package:cart/screens/cart.dart';
import 'package:cart/screens/items.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }
}
