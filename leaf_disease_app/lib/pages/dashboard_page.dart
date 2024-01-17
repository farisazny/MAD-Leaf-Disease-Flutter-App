// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:leaf_disease_app/component/drawer.dart';
import 'package:leaf_disease_app/component/text_box.dart';

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

      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
            Icon(Icons.spa,
                size: 110,
                color: Colors.white,),
             
                Text('Leaf Guard',
                style: TextStyle(
                  fontSize: 30,
              letterSpacing: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
            
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Where Machine Learning Nurtures \nNature's Beauty!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                ),
                
                SizedBox(height: 10,),
            
                textboxCOmp(text_1: 'Introduction', text_2: ' Introducing LeafGuard: DiseaseDetect, your revolutionary companion in leveraging machine learning to discern and deter leaf diseases in your plants. Dive into the realm of advanced technology, where predictive analysis takes center stage, foreseeing potential diseases before they manifest.'),

                SizedBox(height: 50,),

               ElevatedButton(onPressed: () => Navigator.pushNamed(context,'/PredictionPage')
               , child: Text('Start Prediction',
               style: TextStyle
               (color: Color.fromRGBO(34, 62, 54, 1),
               fontWeight: FontWeight.bold),),
               style: ButtonStyle(),)
          ],
        ),
      ),
      );
  }
}
