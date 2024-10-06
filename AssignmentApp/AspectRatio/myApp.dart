import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "AspectRatio",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            child: Image.network(
              "https://tse3.mm.bing.net/th?id=OIP.nyLAzWYdvc-wb9ntq1cU7QHaHa&pid=Api&P=0&h=180",
            ),
          ),
        ),
      ),
    );
  }
}
