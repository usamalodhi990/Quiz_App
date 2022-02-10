import 'package:flutter/material.dart';
//TODO: Step 2 - Import the rFlutter_Alert package here.
import 'quizebrain.dart';
import 'question.dart';

Quizebrain quizeBrain = Quizebrain();
void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[50],
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Quiz_Time'),),
        body: SafeArea(
           child: Padding(
             padding: EdgeInsets.symmetric(horizontal: 10),
           child: QuizPage(),
          ),
           ),
       ),
    );
  }
}
class QuizPage extends StatefulWidget {
  const QuizPage({ Key? key }) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scorekeper = [];

  void checkAnswer (bool userPickedAnswer){
    bool correctAnswer = quizeBrain.getCorrectAnswer(); 

         setState(() {
           //TODO: Step 4 - Use IF/ELSE to check if we've reached the end of the quiz. if so, 1 show an alert using rFlutter_alert, 2 reset the questionNumber, 3 empty out the scorekeeper.

           //TODO: Step 6 - if we've not reached the end, ELSE do the answer checking steps below 
           
          if (userPickedAnswer == correctAnswer){

            scorekeper.add(Icon(Icons.check,color: Colors.green,),);
          } else {

            scorekeper.add(Icon(Icons.close,color: Colors.red,),);
           }
          quizeBrain.nextQuestion();
          });
  }
   @override
  Widget build(BuildContext context) {
    return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      Expanded(
        flex: 5,
        child:Padding(padding: EdgeInsets.all(15),
        child: Center(
          child: Text(
             quizeBrain.getQuestionText(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ), ),
        ),), ),
     Expanded(
       child:
     Padding(padding: EdgeInsets.all(15,),
     child:FlatButton(
        color: Colors.green,
        onPressed: (){
          checkAnswer(true);
          }, child: Text('True',
       style: TextStyle(
        color: Colors.white,
        fontSize: 25,
      ),
      ),), ),),
     Expanded(
       child: Padding(padding: EdgeInsets.all(15,),
     child:FlatButton(
        color: Colors.red,
        onPressed: (){
          //The user picked false
          checkAnswer(false);
        }, 
       child: Text('False',
       style: TextStyle(
        color: Colors.white,
        fontSize: 25,
      ),
      ),
      ),
      ),
      ),
    Row(
      children: scorekeper,
      )
    ],
);
}
}
