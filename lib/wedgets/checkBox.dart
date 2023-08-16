import 'package:flutter/material.dart';

class CheckBoxItem extends StatefulWidget {
  const CheckBoxItem({super.key});

  @override
  State<CheckBoxItem> createState() => _CheckBoxItemState();
}

class _CheckBoxItemState extends State<CheckBoxItem> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          activeColor: Colors.black,
          onChanged: (newValue) {
            setState(() {
              isChecked = newValue!;
            });
          },
        ),
        SizedBox(width: 10),
        GestureDetector(
          onTap: () {
            setState(() {
              isChecked = !isChecked;
            });
          },
          child: Text(
            "Use as the shipping address",
            style: TextStyle(
                fontSize: 18, color: isChecked ? Colors.black : Colors.grey),
          ),
        )
      ],
    );
  }
}
