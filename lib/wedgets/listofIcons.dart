// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../models/iconsData.dart';

class MyListViewOfIcons extends StatefulWidget {
  @override
  State<MyListViewOfIcons> createState() => _MyListViewOfIconsState();
}

class _MyListViewOfIconsState extends State<MyListViewOfIcons> {
  List<bool> isPressedList = [];
  Color defaultColor = Color.fromARGB(255, 219, 219, 219);
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
                      ),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(iconNames[index]),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
