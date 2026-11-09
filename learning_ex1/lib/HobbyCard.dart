
import 'package:flutter/material.dart';

class HobbyCard extends StatelessWidget{
  final String title;
  final IconData icon;
  final Color color;

 const HobbyCard({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
  }
  );


   @override
  Widget build(BuildContext context) {
    return Container(
      width: 350, 
      height: 150,
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: color, width:2),
        borderRadius: BorderRadius.circular(15),
      ),
   
     child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Icon(
            icon,
            size: 23,
            color: Colors.white,
          ),

          const SizedBox(width:  32,),

          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )
          )


      ],)
      
    );

  }

}