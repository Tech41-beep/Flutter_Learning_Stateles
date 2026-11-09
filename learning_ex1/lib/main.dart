import 'package:flutter/material.dart';
import 'package:learning_ex1/HobbyCard.dart';

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
         backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('My Hobbies'),
        ),
        body: Center(child:
         Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HobbyCard(title: 'Travelling',
             icon: Icons.travel_explore,
              color: Colors.green),

              HobbyCard(title: 'Skating',
               icon: Icons.skateboarding, 
               color: Colors.blueAccent),
            
        ],
        )
        ,)
      )
       
    );
  }
}
