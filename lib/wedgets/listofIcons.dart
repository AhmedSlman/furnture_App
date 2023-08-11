// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../models/iconsData.dart';

class MyListViewOfIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: iconsData.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Icon(
                  iconsData[index],
                  size: 30,
                ),
              ),
              SizedBox(height: 5.0),
              Text(iconNames[index]),
            ],
          );
        },
      ),
    );
  }
}
