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
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
           
            children: [
              Container(
                height: 300,
                width: 150,
                child: Image.network(
                  "https://tse4.mm.bing.net/th?id=OIP.EBOSZvxhYib3FMu8HWrjSAHaNK&pid=Api&P=0&h=180",
                  fit: BoxFit.cover,
                ),
              ),Container(
                height: 300,
                width: 150,
                child: Image.network(
                  "https://www.gamersdecide.com/sites/default/files/authors/u152622/top-25-action-comedy-movies-2020-7.jpg",
                  fit: BoxFit.cover,
                ),
              ),Container(
                height: 300,
                width: 150,
                child: Image.network(
                  "https://tse4.mm.bing.net/th?id=OIP.EBOSZvxhYib3FMu8HWrjSAHaNK&pid=Api&P=0&h=180",
                  fit: BoxFit.cover,
                ),
              ),Container(
                height: 300,
                width: 150,
                child: Image.network(
                  "https://tse4.mm.bing.net/th?id=OIP.EBOSZvxhYib3FMu8HWrjSAHaNK&pid=Api&P=0&h=180",
                  fit: BoxFit.cover,
                ),
              ),Container(
                height: 300,
                width: 150,
                child: Image.network(
                  "https://tse4.mm.bing.net/th?id=OIP.EBOSZvxhYib3FMu8HWrjSAHaNK&pid=Api&P=0&h=180",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        
        
      ),
    );
  }
}
