import 'package:quizzler1/question.dart';

class QuizBrain{
  int _quesNo=0;
  List<Question> _quesBank=[
    Question('The Big Apple is a nickname given to Washington D.C in 1971.',false),
    Question('Peanuts are not nuts!',true),
    Question('People may sneeze or cough while sleeping deeply.',false),
    Question('Light travels in a straight line.',true),
    Question('The Mona Liza was stolen from the Louvre in 1911.',true),
    Question('SWOT analysis is a type of personality test used to screen job applicants.',false),
    Question('Ethereum is the second-largest cryptocurrency after Bitcoin.',true),
    Question('Women usually reach the earning-peak of their career when they are younger than men.',true),
    Question('There are three rivers in Saudi Arabia.',false),
    Question('There are tools to help you monitor your competitor’s marketing efforts.',true),
    Question('The Great Wall of China is visible from space',false),
    Question('The Atlantic Ocean is the warmest in the world.',false),
    Question('When the Eiffel Tower was unveiled, the Parisian art community hated it.',true),
  ];
  void getNextQues(){
    if(_quesNo < _quesBank.length-1){
      _quesNo++;
    }
  }
  String getQuesText(){
    return _quesBank[_quesNo].quesText;
  }
  bool? getCrtAns(){
    return _quesBank[_quesNo].quesAns;
  }
  bool? isFinished(){
    if(_quesNo>=_quesBank.length-1){
      return true;
    }
    else{
      return false;
    }
  }
  void reset(){
    _quesNo=0;
  }
}