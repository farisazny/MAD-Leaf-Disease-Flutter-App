// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_leaf_disease_app/component/drawer.dart';
import 'package:flutter_leaf_disease_app/component/text_box.dart';

class dashboardPage extends StatelessWidget {
  const dashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(34, 62, 54, 1),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(' D A S H B O A R D'),
        toolbarHeight: 100,
      ),
      drawer: const drawerComp(),

      body:Column(
        children: [

          
        ],
      ));
  }
}
