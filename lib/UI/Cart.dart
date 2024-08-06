import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems;

  const CartPage({required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final item = cartItems[index];
          return ListTile(
            title: Text(item['name']),
            subtitle: Text('\$${item['price']}'),
          );
        },
      ),
    );
  }
}