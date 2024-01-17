import 'package:flutter/material.dart';
import 'package:flutter_leaf_disease_app/component/list_tile.dart';

class drawerComp extends StatelessWidget {
  const drawerComp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
 
      backgroundColor: const Color.fromRGBO(34, 62, 54, 1),
      surfaceTintColor: Color.fromARGB(255, 37, 66, 58),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      //header
      Column(
        children: [
          const DrawerHeader(
            child: Icon(
              Icons.spa,
              size: 80,
              color: Colors.white,),),
          
          //dashboard tiles
          listTileComp(
            text: 'Dashboard', 
            icon: Icons.home, 
            onTap: () => Navigator.pop(context)),
          
          //scanner tiles
          listTileComp(
            text: 'Prediction', 
            icon: Icons.search, 
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/PredictionPage');
            }),
          
          //about tiles
          listTileComp(
            text: 'About', 
            icon: Icons.info, 
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/AboutPage');
            }),
        ],
      ),

      //exit tiles  
      Padding(
        padding: const EdgeInsets.only(bottom:30.0),
        child: listTileComp(
          text: 'Exit', 
          icon: Icons.exit_to_app, 
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/WelcomePage');
          }),
      ),
        ],
      ),

      
    );
  }
}