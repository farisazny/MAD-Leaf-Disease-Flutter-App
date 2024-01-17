import 'package:flutter/material.dart';

class predictionPage extends StatelessWidget {
  const predictionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:const  Color.fromRGBO(34, 62, 54, 1),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(' P R E D I C T I O N'),
        toolbarHeight: 100,
      ),
    );
  }
}