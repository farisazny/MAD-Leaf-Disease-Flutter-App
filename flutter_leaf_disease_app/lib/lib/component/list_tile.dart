// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class listTileComp extends StatelessWidget {

  final String text;
  final IconData icon;
  final void Function()? onTap;

  const listTileComp ({
    super.key,
    required this.text,
    required this.icon, 
    required this.onTap
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:45.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.white,),
          title: Text(text),
          textColor: Colors.white,
          onTap: onTap,
      ),
    );
  }
}