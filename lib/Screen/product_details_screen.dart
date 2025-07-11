import 'package:flutter/material.dart';
import '../models/model_product.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(product.imageUrl),
            SizedBox(height: 10),
            Text(product.name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text("\$${product.price.toStringAsFixed(2)}", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text(product.description),
          ],
        ),
      ),
    );
  }
}
