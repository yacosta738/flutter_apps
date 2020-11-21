import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What \'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What \'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Snake', 'score': 10},
        {'text': 'Dog', 'score': 6},
        {'text': 'Cat', 'score': 7}
      ]
    },
    {
      'questionText': 'What \'s your favorite car?',
      'answers': [
        {'text': 'BMW', 'score': 1},
        {'text': 'Ferrari', 'score': 2},
        {'text': 'Toyota', 'score': 9},
        {'text': 'Lamborghini', 'score': 3}
      ]
    },
    {
      'questionText': 'What \'s your favorite sport?',
      'answers': [
        {'text': 'Football', 'score': 1},
        {'text': 'Basketball', 'score': 2},
        {'text': 'Baseball', 'score': 4},
        {'text': 'Volleyball', 'score': 3}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print('Answer $_questionIndex chosen');
  }

  void _resetQuiz() {
  setState(() {
    _totalScore = 0;
    _questionIndex = 0;
  });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
