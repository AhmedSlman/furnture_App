// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fournture_task/wedgets/productCard.dart';

import '../models/product.dart';

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.7,
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
          ),
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return ProductCard(product: products[index]);
          },
        ),
      ),
    );
  }
}
