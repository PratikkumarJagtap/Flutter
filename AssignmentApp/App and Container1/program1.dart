import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "AppBar",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          actions:const [
           
            Icon(Icons.shopping_cart, ),
            Icon(Icons.camera),
          ],
          
          backgroundColor: Colors.blue,
        ),
        body: Column(),
      ),
    );
  }
}
