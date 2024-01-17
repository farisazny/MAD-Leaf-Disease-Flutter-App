// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class welcomePage extends StatelessWidget {
  const welcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(34, 62, 54, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            // logo
            Icon(
              Icons.spa,
              size: 140,
              color: Colors.white),

            SizedBox(height: 20,),
          
            //title
            Text('LEAF GUARD',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 15 ,
              fontSize: 20),),

            SizedBox(height: 10,),
        
            //subtitle
            Text('Disease Detect',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 5,
              color: Colors.white
            ),),

            SizedBox(height: 20,),
        
            //button
            ElevatedButton(
              onPressed:() => Navigator.pushNamed(context,'/DashboardPage'),
              style: ButtonStyle(), 
              child: Icon(
                Icons.arrow_forward,
                color: Color.fromRGBO(34, 62, 54, 1),),)
          ],
        ),
      )
    );
  }
}