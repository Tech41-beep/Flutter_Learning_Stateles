import 'package:flutter/material.dart';
import 'package:learning_ex2/models/button_type.dart';
import 'package:learning_ex2/widgets/custom_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     showSemanticsDebugger: false,
     home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Custom Buttons'),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment:  CrossAxisAlignment.stretch,

          children: [
            CustomButton(
              label: 'Submit'
            , icon: Icons.check,
            buttontype: Buttontype.primary,),
           SizedBox(height:15),

           CustomButton(label: 'Time'
           , icon: Icons.access_time,
           buttontype: Buttontype.secondary),

           SizedBox(height: 15),
           
           CustomButton(label: 'Account'
           , 
           icon: Icons.account_box,
           buttontype: Buttontype.disable,
           )
           
          ],
      

        )
      ),
     ),
    );
  }
}
