import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
   
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            " Column scroll view",
            style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.w500),
          
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,

        ),
        body:SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            children: [
              Image.network("https://tse2.mm.bing.net/th?id=OIP.UwLdXJeXkclCYqLYEf6EGgHaE8&pid=Api&P=0&h=180",),
              Container(
                width: 100,
                height: 100,
                color: Colors.orange,
              ),
              Image.network("https://tse3.mm.bing.net/th?id=OIP.KY__xOOKjP59qHzyduyntgHaE8&pid=Api&P=0&h=180",),
              Container(
                width: 100,
                height: 100,
                color: Color.fromARGB(255, 76, 27, 189),
              ),
              Image.network("https://tse2.mm.bing.net/th?id=OIP.I4X_ilJ5O8dMg1yrVXovmQHaEo&pid=Api&P=0&h=180",),
              Container(
                width: 100,
                height: 100,
                color: Color.fromARGB(255, 183, 16, 127),
              ),
              Image.network("https://tse3.mm.bing.net/th?id=OIP.Zd4EJWyobVFDseNBEoTnrgHaFj&pid=Api&P=0&h=180"),
              Container(
                width: 100,
                height: 100,
                color: Color.fromARGB(255, 149, 3, 3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
