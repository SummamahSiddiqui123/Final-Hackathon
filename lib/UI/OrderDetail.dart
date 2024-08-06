import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Get.back();
            },
          ),
          title: const Text('Order Details'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OrderItem(
                itemName: 'Chicken Veggi Salad',
                itemPrice: 52.00,
                itemImage: 'assets/images/chicken_veggi_salad.jpg',
                itemDescription: 'With cheese sauce',
                initialQuantity: 2,
              ),
              OrderItem(
                itemName: 'Nutton curry',
                itemPrice: 23.00,
                itemImage: 'assets/images/nutton_curry.jpg',
                itemDescription: 'With basmati rice',
                initialQuantity: 2,
              ),
              OrderItem(
                itemName: 'French Fry',
                itemPrice: 21.00,
                itemImage: 'assets/images/french_fry.jpg',
                itemDescription: 'With beef bacon',
                initialQuantity: 2,
              ),
              const SizedBox(height: 20),
              const Divider(),
              const SizedBox(height: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _OrderSummaryItem(label: 'Subtotal', value: 96.00),
                    _OrderSummaryItem(label: 'Delivery', value: 2.00),
                    const SizedBox(height: 20),
                    _OrderSummaryItem(
                      label: 'Total',
                      value: 98.00,
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {                   
                      },
                      child: const Text('Checkout'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Order Item Widget
class OrderItem extends StatelessWidget {
  final String itemName;
  final double itemPrice;
  final String itemImage;
  final String itemDescription;
  final int initialQuantity;

  const OrderItem({
    Key? key,
    required this.itemName,
    required this.itemPrice,
    required this.itemImage,
    required this.itemDescription,
    required this.initialQuantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemName,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                itemDescription,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
        SizedBox(
          width: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$${itemPrice.toStringAsFixed(2)}'),
              Obx(
                () => Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.remove_circle_outline),
                    ),
                    Text(initialQuantity.toString()),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add_circle_outline),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Order Summary Item Widget
class _OrderSummaryItem extends StatelessWidget {
  final String label;
  final double value;
  final TextStyle? textStyle;

  const _OrderSummaryItem({
    Key? key,
    required this.label,
    required this.value,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        Text(
          '\$${value.toStringAsFixed(2)}',
          style: textStyle,
        ),
      ],
    );
  }
}