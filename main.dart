import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

/*void main(){
runApp(MyApp());
}*/

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questioniIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questioniIndex = _questioniIndex + 1;
    });
    print(_questioniIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'How old are you?',
        'answer': [1, 2, 3, 4]
      },
      {
        'questionText': 'What is your favorite color?',
        'answer': ['green', 'yellow', 'red']
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questioniIndex]['questionText'],
            ),
            ...(questions[_questioniIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
