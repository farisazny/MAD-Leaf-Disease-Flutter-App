import 'package:flutter/material.dart';

class textboxCOmp extends StatelessWidget {
final String text_1;
final String text_2;


  const textboxCOmp({
    super.key,
    required this.text_1,
    required this.text_2
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [

          Text(text_1,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),

          const SizedBox(height: 10,),

          Text(text_2,
          style: const TextStyle(
            color: Colors.white
          ),)
        ],
      ),
    );
  }
}