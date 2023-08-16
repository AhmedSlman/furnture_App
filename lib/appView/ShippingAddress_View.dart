// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fournture_task/wedgets/checkBox.dart';
import 'package:fournture_task/wedgets/shippingAddress_Card.dart';
import 'package:google_fonts/google_fonts.dart';

class ShippingAddersView extends StatefulWidget {
  const ShippingAddersView({super.key});

  @override
  State<ShippingAddersView> createState() => _ShippingAddersViewState();
}

class _ShippingAddersViewState extends State<ShippingAddersView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(
            FontAwesomeIcons.angleLeft,
            color: Colors.black,
          ),
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Text('Shipping address',
                  style: GoogleFonts.merriweather(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  )),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              CheckBoxItem(),
              SizedBox(
                height: 20,
              ),
              ShippingAddress_Card(),
              SizedBox(height: 20),
              CheckBoxItem(),
              SizedBox(
                height: 20,
              ),
              ShippingAddress_Card(),
              SizedBox(height: 20),
              CheckBoxItem(),
              SizedBox(
                height: 20,
              ),
              ShippingAddress_Card(),
            ],
          ),
        ),
      ),
    );
  }
}
