// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class textboxCOmp extends StatelessWidget {
  final String text_1;
  final String text_2;

  const textboxCOmp({
    super.key,
    required this.text_1,
    required this.text_2});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [

          Text(text_1,textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white
          ),),

          SizedBox(height: 15,),

          Text(text_2,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white
          ),),

        ],
      ),
    );
  }
}