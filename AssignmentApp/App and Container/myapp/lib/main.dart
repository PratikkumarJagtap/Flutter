import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
            "Hello Core2Web",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          actions:const [
           
            Icon(Icons.shopping_cart, ),
            
          ],
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 107, 6, 124),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            
            
            decoration: const BoxDecoration(
              color: Colors.red,
               borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), 
                bottomRight: Radius.circular(20), 
              ),
              
            )
          ),
        ),
        
        
        
      ),
    );
  }
}
