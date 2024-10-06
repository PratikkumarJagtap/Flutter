import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Appbar Color change",
      theme: ThemeData(colorScheme:ColorScheme.fromSeed(seedColor:Colors.deepPurple),
    useMaterial3: true,
    ),
    home: AppbarColorApp(),

    );
  }
}
class AppbarColorApp extends StatefulWidget {
  const AppbarColorApp({super.key});

  @override
  State <AppbarColorApp> createState() =>  _AppbarColorApp();
}

class  _AppbarColorApp extends State <AppbarColorApp> {
  bool colorChange=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (colorChange ? Color.fromARGB(255, 175, 21, 116):Color.fromARGB(255, 22, 150, 66)),
        title: const Text(
          'Container Color App',
          style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700),
        ),
        centerTitle: true,

      ),
      body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Change Appbar Color")
            ],
          ),
        
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            if(colorChange){
              colorChange=false;
            }else{
              colorChange=true;
            }

           setState(() {}); 
          } ,
          child: const Icon(Icons.add),
          
          ),
    );
  }
}