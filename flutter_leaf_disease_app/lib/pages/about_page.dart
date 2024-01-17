import 'package:flutter/material.dart';
import 'package:flutter_leaf_disease_app/component/text_list.dart';

class aboutPage extends StatelessWidget {
  const aboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:const  Color.fromRGBO(34, 62, 54, 1),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(' A B O U T'),
        toolbarHeight: 100,
      ),

      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //made by
              //title
              Text('Made By', 
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),

              SizedBox(height: 10,),

                textlistComp(text: 'Faris Farhan Bin Azlan '),
                textlistComp(text: 'Muhammad Faris Bin  Musa '),
                textlistComp(text: 'Muhammad Ikmal Hafiz Bin Jauferry '),

              SizedBox(height: 50,),

              //Guide by
                Text('Guide By', 
               style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              ),

                textlistComp(text: 'Rizal Bin Mohd . Nor'),

               SizedBox(height: 50,),

                //version by
                //title
                Text('Version', 
                style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),

                textlistComp(text: '1 . 0'),

          ],
        ),
      ),
    );
  }
}