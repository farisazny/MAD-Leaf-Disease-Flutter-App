// ignore_for_file: sort_child_properties_last, avoid_unnecessary_containers

import 'package:flutter/material.dart';

// ignore: camel_case_types
class textlistComp extends StatelessWidget {
  final String text;

  const textlistComp({
    super.key,
    required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10.0),
      child: Container(
       child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          letterSpacing: 2
        ),),
      ),
    );
  }
}