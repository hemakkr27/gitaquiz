import 'package:flutter/material.dart';
//import 'package:gitaproject/GitaQuiz.dart';
// ignore: unused_import
import 'package:gitaproject/HomeScreen.dart';
import 'package:get/get.dart';
// import 'package:gitaproject/randomquestion.dart';
//import 'package:gitaproject/authentication/Login.dart';

//import 'questionans_Api.dart';
//import 'package:gitaproject/test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:
          //GitaQuiz(),
          //Randmcls(),
          //QuestAnsApi(),
          HomeScreen(),
      // LoginPage(),
    );
  }
}








// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: Scaffold(body: Center(child: Questions())));
//   }
// }

// class Questions extends StatefulWidget {
//   @override
//   _QuestionsState createState() => _QuestionsState();
// }

// class _QuestionsState extends State<Questions> {
//   var _indexQuestion = 0;

//   var _questions = ['Question 1', 'Question 2'];
//   var _answers = [
//     ['Option 1', 'Option 2'],
//     ['Opt 1', 'Opt 2'],
//   ];

//   _next() {
//     setState(() {
//       var lastIndex = _questions.length - 1;
//       if (_indexQuestion < lastIndex) {
//         _indexQuestion++;
//       } else {
//         // Is the last question
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Text(_questions[_indexQuestion]),
//         for (var answer in _answers[_indexQuestion]) Text(answer),
//         FlatButton(
//           color: Colors.blueGrey,
//           child: Text('next'),
//           onPressed: _next,
//         )
//       ],
//     );
//   }
// }

