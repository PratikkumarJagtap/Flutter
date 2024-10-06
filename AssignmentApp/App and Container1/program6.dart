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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
           
            children: [
              Container(
                height: 150,
                width: 150,
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2023/02/08/14/02/ai-generated-7776701_1280.jpg",
                  fit: BoxFit.cover,
                ),
              ),Container(
                height: 150,
                width: 150,
                child: Image.network(
                  "https://i.pinimg.com/originals/2b/73/9b/2b739bab4d0a6f6eee1434c6e4e6942e.jpg",
                  fit: BoxFit.cover,
                ),
              ),Container(
                height: 150,
                width: 150,
                child: Image.network(
                  "https://images.nightcafe.studio/jobs/vEYzyrrJuHtUyohpbplg/vEYzyrrJuHtUyohpbplg--1--4fz7y_6x.jpg?tr=w-1600,c-at_max",
                  fit: BoxFit.cover,
                ),
              ),Container(
                height: 150,
                width: 150,
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2023/02/08/14/02/ai-generated-7776701_1280.jpg",
                  fit: BoxFit.cover,
                ),
              ),Container(
                height: 150,
                width: 150,
                child: Image.network(
                  "https://i.pinimg.com/originals/2b/73/9b/2b739bab4d0a6f6eee1434c6e4e6942e.jpg",
                  fit: BoxFit.cover,
                ),
              ),Container(
                height: 150,
                width: 150,
                child: Image.network(
                  "https://images.nightcafe.studio/jobs/vEYzyrrJuHtUyohpbplg/vEYzyrrJuHtUyohpbplg--1--4fz7y_6x.jpg?tr=w-1600,c-at_max",
                  fit: BoxFit.cover,
                ),
              ),Container(
                height: 150,
                width: 150,
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2023/02/08/14/02/ai-generated-7776701_1280.jpg",
                  fit: BoxFit.cover,
                ),
              ),Container(
                height: 150,
                width: 150,
                child: Image.network(
                  "https://i.pinimg.com/originals/2b/73/9b/2b739bab4d0a6f6eee1434c6e4e6942e.jpg",
                  fit: BoxFit.cover,
                ),
              ),Container(
                height: 150,
                width: 150,
                child: Image.network(
                  "https://images.nightcafe.studio/jobs/vEYzyrrJuHtUyohpbplg/vEYzyrrJuHtUyohpbplg--1--4fz7y_6x.jpg?tr=w-1600,c-at_max",
                  fit: BoxFit.cover,
                ),
              ),Container(
                height: 150,
                width: 150,
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2023/02/08/14/02/ai-generated-7776701_1280.jpg",
                  fit: BoxFit.cover,
                ),
              ),Container(
                height: 150,
                width: 150,
                child: Image.network(
                  "https://i.pinimg.com/originals/2b/73/9b/2b739bab4d0a6f6eee1434c6e4e6942e.jpg",
                  fit: BoxFit.cover,
                ),
              ),Container(
                height: 150,
                width: 150,
                child: Image.network(
                  "https://images.nightcafe.studio/jobs/vEYzyrrJuHtUyohpbplg/vEYzyrrJuHtUyohpbplg--1--4fz7y_6x.jpg?tr=w-1600,c-at_max",
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
