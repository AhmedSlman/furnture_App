// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
            child: Text(
              product.productName,
              style: GoogleFonts.nunitoSans(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 182, 180, 180),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Text(
              product.productPrice,
              style: GoogleFonts.nunitoSans(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 22, 22, 22),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
