import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(const MyApp());
  
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title: const Text(
            "Netflix Demo",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.orange,

            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 118, 176, 223),

        ),
        body: ListView.builder(
          itemCount: 2,
          physics:const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context,int index){
            return  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Action Movies",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://tse3.mm.bing.net/th?id=OIP.iAsDFqwmY2RZZVAt9kiojwHaLH&pid=Api&P=0&h=180",
                        ),
                        
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://tse2.mm.bing.net/th?id=OIP.4LghctcGIXbP1oIyYijbAgHaJQ&pid=Api&P=0&h=180",
                        ),
                        
                      ),Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://tse4.mm.bing.net/th?id=OIP.ZneFCUzw81CdNcHjw9czdQAAAA&pid=Api&P=0&h=180",
                        ),
                        
                      ),Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://tse4.mm.bing.net/th?id=OIP.J9cVErJ_7IDiwL73ez2bxAHaJ4&pid=Api&P=0&h=180",
                        ),
                        
                      ),

                  ],
                  ),

                ),
              ],
            );
          }
          ),
         ),
    );
  }
}