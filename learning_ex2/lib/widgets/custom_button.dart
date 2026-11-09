import 'package:flutter/material.dart';
import '../models/button_type.dart';

// create class
class CustomButton extends StatelessWidget{
  final String label;
  final IconData icon;
  final IconPosition iconPostion;
  final Buttontype buttontype;

  const CustomButton({
    super.key,
    required this.label,
    required this.icon,
    this.iconPostion = IconPosition.left,
    this.buttontype = Buttontype.primary,
  });
 
 Color getButtonColor(){
  switch(buttontype){
    case Buttontype.primary:
    return Colors.blue;
  
  case Buttontype.secondary:
  return Colors.green;

  case Buttontype.disable:
  return Colors.grey;
  }
 }
   @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16
      ),
        decoration: BoxDecoration(
          color: getButtonColor(),
          borderRadius:  BorderRadius.circular(30),
        ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min ,
         children: [
          Icon(icon, color: Colors.white),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white
            )
          )
        ],)
    );
  }

}