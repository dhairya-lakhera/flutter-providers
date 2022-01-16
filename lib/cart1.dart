import 'package:flutter/material.dart';
import 'package:learn_provider/provider/cart.dart';
import 'package:provider/provider.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cartData = Provider.of<Cart>(context);
    print(cartData);

    return Scaffold(
      appBar: AppBar(
        title: Text('View Cart'),
      ),
      body: Container(
        child: Text(cartData.getCartItems().toString()),
      ),
    );
  }
}
