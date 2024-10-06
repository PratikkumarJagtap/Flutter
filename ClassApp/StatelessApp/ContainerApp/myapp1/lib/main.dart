import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Containers"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: 
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            

          
          
           ),
      );
    
  }
}
