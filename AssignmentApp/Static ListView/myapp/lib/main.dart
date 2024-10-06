import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("Device width:${MediaQuery.of(context).size.width}");
    print("Device width:${MediaQuery.of(context).size.height}");
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "ListView Demo",
            style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.w500
            ),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
        ),

        body: ListView(
          children: [
            Image.network("https://tse2.mm.bing.net/th?id=OIP.t57OzeATZKjBDDrzXqbc5gHaE7&pid=Api&P=0&h=180",),
            const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            const Text(
              "Nice",
              style: TextStyle(
                fontSize:30,
                fontWeight: FontWeight.w500,

              ),
            ),
            Image.network("https://tse3.mm.bing.net/th?id=OIP.i-6Q6jGPpFFvD5aC6pojrwHaEK&pid=Api&P=0&h=180",),
            GestureDetector(
              onTap: (){
                print("Button pressed");
              },
              child:Container(
                height: 60,
                color: Colors.green,
                child: const Text(
                  "press me",
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
