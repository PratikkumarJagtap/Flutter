import 'package:flutter/material.dart';
void main(){
  runApp(const PlayerApp());
}
class PlayerApp extends StatefulWidget{
  const PlayerApp({super.key});
  @override
  State<PlayerApp> createState() => _PlayerAppState();
}
class _PlayerAppState extends State<PlayerApp>{

  int _counter=0;
  List<String> playerList=<String>[
    "https://tse4.mm.bing.net/th?id=OIP.Nqp5U4060yKkgFJQwgoswQHaFj&pid=Api&P=0&h=180",
    "https://tse4.mm.bing.net/th?id=OIP.9Bc-70oSAuYZsSbBdxqt1wHaFL&pid=Api&P=0&h=180",
    "https://tse2.mm.bing.net/th?id=OIP.MyFQbCx_aEdsZb3Usp--WgHaHa&pid=Api&P=0&h=180",
    "https://tse4.mm.bing.net/th?id=OIP.ClOII7UWbYKatMG2Q-nuHAHaFL&pid=Api&P=0&h=180",
    "https://tse4.mm.bing.net/th?id=OIP.kVUm8yuWuijHXyzaQwTUaAHaGt&pid=Api&P=0&h=180",

  ];

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Player',
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("PlayerApp"),
          centerTitle: true,
        ),
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              Image.network(
                playerList[_counter],
                height: 500,
                width: 300,

              ),

            ],) ,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              if(_counter<playerList.length-1){
                _counter++;
              }else{
                _counter=0;
              }
              setState(() {
                
              });

            },
            tooltip: 'Increment',
            child:const Icon(Icons.add),

      ),
      ),

    );
  }

}