import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    print("Device Width:${MediaQuery.of(context).size.width}");
    print("Device Width:${MediaQuery.of(context).size.height}");
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Row Scenario",
            style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.w500),
          
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,

        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.red,
          child:Row(
           mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 200,
                color: Colors.amber,
              ),
            ],),

        ),
      ),
    );
  }
}
