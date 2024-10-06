import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState()=> _MainAppState();
}
class _MainAppState extends State<MyApp>{
  TextEditingController nameController=TextEditingController();
  String? myName;
  List<String> playersList=[];

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: const Text(
            "Textfield ListView Demo",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding:const EdgeInsets.all(20.0) ,
              child: TextField(
                controller: nameController,
                style: const TextStyle(
                  fontSize: 20,
                ),
                obscureText: true,
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.visibility),
                  hintText: "Enter Name",
                  hintStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(),
                ),
                onChanged:(String val){
                  print("value:$val");
                } ,
                onEditingComplete: (){
                  print("Editing Completed");
                },
                onSubmitted: (value){
                  print("value Submitted :$value");
                },
                

              ),
              
            ),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                print("Add Data");
                myName=nameController.text.trim();
                print("My Name:$myName");
                if(myName!=""){
                  playersList.add(myName!);
                  print("Playerlist length:${playersList.length}");
                nameController.clear();
                setState((){});
                }
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                  
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                "Add Data",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
                ),


                ),
            ),
            const SizedBox(
              height: 40,
            ),
            ListView.builder(
              itemCount: playersList.length,
              shrinkWrap: true,
              itemBuilder:(context,index){
                return Text(
                  "Name:${playersList[index]}",
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                );
              },
              

              ),
          ],
          ),
      ),
    );
  }

}
