// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/iconsData.dart';

class MyListViewOfIcons extends StatefulWidget {
  @override
  State<MyListViewOfIcons> createState() => _MyListViewOfIconsState();
}

class _MyListViewOfIconsState extends State<MyListViewOfIcons> {
  List<bool> isPressedList = [];
  Color defaultColor = Color.fromARGB(255, 218, 217, 217);
  Color pressedColor = Color.fromARGB(255, 151, 148, 148);

  void initState() {
    super.initState();
    isPressedList = List.generate(iconsData.length, (index) => false);
  }

  void toggleColor(int index) {
    setState(() {
      for (int i = 0; i < isPressedList.length; i++) {
        if (i == index) {
          isPressedList[i] = !isPressedList[i];
        } else {
          isPressedList[i] = false;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: iconsData.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => toggleColor(index),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color:
                            isPressedList[index] ? pressedColor : defaultColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        iconsData[index],
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    iconNames[index],
                    style: GoogleFonts.nunitoSans(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 192, 190, 190),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
