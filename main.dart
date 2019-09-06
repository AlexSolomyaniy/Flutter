import 'package:flutter/material.dart';
import 'question.dart';

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

class _MyAppState extends State<MyApp>{

  var _index=0;

  void _answerQuestion() {
    setState(() {
      _index=_index+1;
    });
    print(_index);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['What is it', 'WHo is it'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App'),
        ),
        body: Column(children: [
          Text(questions[_index]),
          RaisedButton(
            child: Text('Hello'),
            onPressed: _answerQuestion,
          ),
          RaisedButton(
            child: Text('Hello'),
            onPressed: () => print('Hop'),
          )
        ]),
      ),
    );
  }
}

