import 'package:flutter/material.dart';
import 'package:learn_provider/provider/cart.dart';
import 'package:provider/provider.dart';

class CartAdd extends StatefulWidget {
  const CartAdd({Key? key}) : super(key: key);

  @override
  State<CartAdd> createState() => _CartAddState();
}

class _CartAddState extends State<CartAdd> {
  final TextEditingController _cartItemController = TextEditingController();
  String? itemVal;

  updateCart(Cart cartData) {
    cartData.addCartItem(_cartItemController.text);
  }

  @override
  Widget build(BuildContext context) {
    var cartData = Provider.of<Cart>(context, listen: false);
    print(itemVal);

    return Scaffold(
      appBar: AppBar(
        title: Text('Add Cart'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _cartItemController,
              decoration: InputDecoration(hintText: 'Item'),
            ),
            ElevatedButton(
              onPressed: () {
                updateCart(cartData);
              },
              child: Text('Add item'),
            )
          ],
        ),
      ),
    );
  }
}
