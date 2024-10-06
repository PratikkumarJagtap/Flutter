
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QuizApp',
      home: QuizApp(),
    );
  }
}
class QuizApp extends StatefulWidget{
  const QuizApp({super.key});
  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State{
    

  List<Map> allQuestions=[
    {
      "question":"Who is the founder of Microsoft?",
      "option":["steve Job","Bill Gate","Lary Gates","Elon musk"],
      "correctAnswer":1
    },{
      "question":"Who is the founder of Google?",
      "option":["steve Job","Bill Gate","Lary Gates","Elon musk"],
      "correctAnswer":2

    },{
      "question":"Who is the founder of Spacex?",
      "option":["steve Job","Bill Gate","Lary Gates","Elon musk"],
      "correctAnswer":3
    },{
      "question":"Who is the founder of Apple?",
      "option":["steve Job","Bill Gate","Lary Gates","Elon musk"],
      "correctAnswer":0
    },
    {
      "question":"Who is the founder of meta?",
      "option":["steve Job","Mark Zuckerberg","Lary Gates","Elon musk"],
      "correctAnswer":1
    },
  ];
  int selectedAnswerIndex =-1;
  int currentQuestionIndex=0;
  int score=0;
  WidgetStatePropertyAll<Color?>checkAnswer(int AnswerIndex){
    if(selectedAnswerIndex!=-1){
      if(AnswerIndex==allQuestions[currentQuestionIndex]["correctAnswer"]){
        return const WidgetStatePropertyAll(Colors.green);
        
      }
      else if(selectedAnswerIndex==AnswerIndex){
        return const WidgetStatePropertyAll(Colors.red);
      }else{
        return const WidgetStatePropertyAll(null);
      }      
    }else{
      return const WidgetStatePropertyAll(null);
    }
  }
  

  bool questionPage=false;

  @override
  Widget build(BuildContext context){
    return isQuestionScreen();}
    Scaffold isQuestionScreen(){
      if(currentQuestionIndex==0 && questionPage==false){
        return Scaffold(
          backgroundColor:const Color.fromARGB(255, 162, 196, 224),
          body:Center( 
            child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network("https://tse2.mm.bing.net/th?id=OIP.4BLsclP6VTqD0JBuHafFvgHaEU&pid=Api&P=0&h=180",
              height: 300,
              ),
              const SizedBox(
                height: 20,
              ),
               ElevatedButton(
                style:const  ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 106, 220, 110),
                  
                  ),
                  ),
                onPressed:(){
                  if(selectedAnswerIndex ==-1 ) {
                    questionPage=true;
                    
                    setState(() {  });
                  }                         
                   } , 
                child:const Text(
                  "Start Quiz",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    
                  ),                 
                  
                ),
                ),
               
              ],
            ),
          ),
        );
        }else if(questionPage == true){
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 169, 202, 230),
      appBar: AppBar(
        title: const Text(
          "QuizApp",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w900,
            color: Colors.orange,

          ),
          ),

          backgroundColor: const Color.fromARGB(255, 42, 124, 191),
          centerTitle: true,
      ),
      body:  Column(
        
        children: [
          const SizedBox(
            height: 50,

          ),
          Row(
            children: [
              const SizedBox(
                width: 80,

              ),
              Text(
                "Question: ${currentQuestionIndex + 1}/ ${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  

                ),
              ),

            ],
            ),
          const SizedBox(
           height: 50,
          ),
          SizedBox(
            height: 50,
            width: 400,
            child: Text(
              allQuestions[currentQuestionIndex]["question"],
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                color: Colors.purple,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height:50,
            width: 350,
            child:ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(0),
              ),
              onPressed:(){
                if(selectedAnswerIndex==-1){
                  selectedAnswerIndex=0;
                  setState(() {});
                  if(selectedAnswerIndex==allQuestions[currentQuestionIndex]["correctAnswer"]){
                    score++;
                  }
                }
              }, 
              child:Text(
                "A.${allQuestions[currentQuestionIndex]["option"][0]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,

                ),
              ),
               
               ),
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            height:50,
            width: 350,
            child:ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(1),
              ),
              onPressed:(){
                if(selectedAnswerIndex==-1){
                  selectedAnswerIndex=1;
                  setState(() {});
                  if(selectedAnswerIndex==allQuestions[currentQuestionIndex]["correctAnswer"]){
                    score++;
                  }
                }
              }, 
              child:Text(
                "B.${allQuestions[currentQuestionIndex]["option"][1]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,

                ),
              ),
               
               ),
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            height:50,
            width: 350,
            child:ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(2),
              ),
              onPressed:(){
                if(selectedAnswerIndex==-1){
                  selectedAnswerIndex=2;
                  setState(() {});
                  if(selectedAnswerIndex==allQuestions[currentQuestionIndex]["correctAnswer"]){
                    score++;
                  }
                }
              }, 
              child:Text(
               "C.${allQuestions[currentQuestionIndex]["option"][2]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,

                ),
              ),
               
               ),
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            height:50,
            width: 350,
            child:ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(3),
              ),
              onPressed:(){
                if(selectedAnswerIndex==-1){
                  selectedAnswerIndex=3;
                  setState(() {});
                  if(selectedAnswerIndex==allQuestions[currentQuestionIndex]["correctAnswer"]){
                    score++;
                  }
                }
              }, 
              child:Text(
               "C.${allQuestions[currentQuestionIndex]["option"][3]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,

                ),
              ),
               
               ),
          ),
        ],
        
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            if(selectedAnswerIndex!=-1){
               if(currentQuestionIndex<allQuestions.length-1){
                  currentQuestionIndex++;
                  
               }else{
                questionPage=false;
               }
               selectedAnswerIndex=-1;
              setState(() {});

            }
          } ,
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.forward,
            color: Colors.orange,
          ),
          ),
    );
 }else{
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Quiz Result",
              style: TextStyle(
                fontSize: 28,
               fontWeight: FontWeight.w900,
               color: Colors.orange,

              ),
              
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://tse2.mm.bing.net/th?id=OIP.AocJf6feoWY2jk87olBEgQHaG0&pid=Api&P=0&h=180",
                  height: 350,
                  ),
                  const SizedBox(
                   height: 10,
                  ),
                  const Text(
                    "Congratulations",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                      color: Colors.purple,
                    ),
                  ),
                  const SizedBox(height: 20,),
                   Text(
                    "Score:$score / ${allQuestions.length}",
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 221, 86, 77))
                      ),
                      
                      onPressed: (){

                        
                      if(selectedAnswerIndex==-1){
                        selectedAnswerIndex=-1;
                        questionPage=false;
                        score=0;
                        currentQuestionIndex=0;
                        setState(() {});
                      }
                    },
                     child:const Text(
                      "start Again",
                      style: TextStyle(
                        
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                         ),
                      ),
                      ),
              ],
              ),



          ),

        );

      }
    }
  }

