import 'package:flutter/cupertino.dart';

import 'question.dart';

class Quizebrain {
  int _questionNumber =0;

  List<Question> _questionbank =[
    
    Question('You can lead a cow down stairs but not up stairs.',false,),
    Question('Approximately one quarter of human bones are in the feet.',true,),
    Question('The tallest building in the world is Burj Khalfia', true,),
    Question('some cats are actually allergic to human', true,),
    Question('Elon Musk, the co-founder and CEO of Tesla, is The Richest Person in the World With a 269 Billion Dollar Net Worth',true,),
     Question('World\s First Temperature Control City located in Dubai.',true,),
    Question('The Tallest Building in the World is Burj Khalfia is the Height is 828 M',true,),
    Question(' The cost of Making Burj khalifa was 1.5 Billion Dollar ',true,),
    Question('Only Female Mosquito Bite Human',true,),
    Question('keeping Dogs As Pets is Banned in Iceland',false,),
   Question('As a Human Body Grows Larger, Its Number Of Bones Gets Smaller.',true,),
   Question('The U.S Dollars are Made From Fiber',false,),
   Question('China is The secound Largest Country in The World By Land area, But only has 1 Time Zone.',true,),
   Question('Jupiter is The Fifth Planet From The Sun.',true,),
  ];
   void nextQuestion () {
    if (_questionNumber < _questionbank.length - 1){
      _questionNumber++;
    }
  }
  String getQuestionText() {
    return _questionbank[_questionNumber].questionText;
}
bool getCorrectAnswer(){
  return _questionbank[_questionNumber].questionAnswer;
  }
}
