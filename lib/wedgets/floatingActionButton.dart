// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.white,
      child: Icon(
        Icons.add,
        color: Colors.black,
      ),
    );
  }
}
