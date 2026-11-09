import 'package:flutter/material.dart';
import '../models/product_type.dart';

class ProductCard extends StatelessWidget{
    final ProductType productype;

    const ProductCard ({
      super.key,
      required this.productype
    });

    @override
    Widget build(BuildContext context){
      return Card(
        
        
        color:Colors.white,
        child: Padding(padding: const EdgeInsets.all(15),
         child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
               mainAxisSize: MainAxisSize.min,
               crossAxisAlignment: CrossAxisAlignment.start,
          // display product image
             children: [
              
                Image.asset(getProductImage(productype
                ),
                height: 100,
                fit: BoxFit.contain,),
                SizedBox(height: 6),
                Text(getProductName(productype)),
                 SizedBox(height: 6),
                Text(getProductDescription(productype),)
             ],
         )
         )
      );
    }
}