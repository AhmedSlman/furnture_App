import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              width: 100,
              height: 200,
              child: Image.asset(
                product.imagePath,
                fit: BoxFit.cover,
                scale: 10,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Text(product.productName),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Text(product.productPrice),
          ),
        ],
      ),
    );
  }
}
