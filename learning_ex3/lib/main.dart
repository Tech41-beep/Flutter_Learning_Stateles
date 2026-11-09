
import 'package:flutter/material.dart';
import 'models/product_type.dart';
import 'widgets/product_card.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text('Products'),
        ),
        body: Padding(padding: const EdgeInsetsGeometry.all(15),
        child: Column(
         
          children: const [
         
            ProductCard(productype: ProductType.dart),
                        ProductCard(productype: ProductType.flutter),
                                    ProductCard(productype: ProductType.firebase),
          ],
          )

        ),
      ),
    );
  }
}
