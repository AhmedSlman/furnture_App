// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fournture_task/wedgets/gridView.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  style: GoogleFonts.gelasio(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 182, 180, 180),
                  ),
                ),
                Text(
                  'BEAUTIFUL',
                  style: GoogleFonts.gelasio(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 26, 25, 25),
                  ),
                ),
              ],
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.all(20),
            child: Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Icon(
                Icons.shopping_cart,
                color: Colors.grey,
              ),
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
