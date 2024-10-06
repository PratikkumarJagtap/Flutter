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
        body:Center(
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.orange,
              ),
              Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 117, 50, 45),
              ),Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 34, 118, 37),
              ),

            ],

          ),

        ) ,    
      ),
    );
    
  }
}
