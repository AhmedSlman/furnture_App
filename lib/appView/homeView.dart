// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fournture_task/wedgets/gridView.dart';

import '../wedgets/listofIcons.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Center(
            child: Column(
              children: [
                Text(
                  'Make home',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                ),
                Text(
                  'BEAUTIFUL',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 22),
                ),
              ],
            ),
          ),
          leading: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          actions: [
            Icon(
              Icons.shopping_cart,
              color: Colors.grey,
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 100,
              child: MyListViewOfIcons(),
            ),
            Expanded(child: MyGridView()),
          ],
        ),
      ),
    );
  }
}
