// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fournture_task/appView/ShippingAddress_View.dart';
import 'package:fournture_task/appView/homeView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShippingAddersView(),
    );
  }
}
