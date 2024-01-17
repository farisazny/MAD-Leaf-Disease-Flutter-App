// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

class buttonComp extends StatelessWidget {
  final void Function()? onPressed;
    final IconData icon;
    final String text;

  const buttonComp({
    super.key,
    required this.onPressed,
    required this.text,
    required this.icon});
    

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 150,
        height: 50,
          child: ElevatedButton.icon(onPressed: onPressed, icon: Icon(icon,color: Colors.black,), label: Text(text,style: TextStyle(
            color: Colors.black, fontSize: 15
          ),)),
      ),
    );
  }
} 