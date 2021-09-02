// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:gitaproject/constants.dart';
// import 'package:gitaproject/progressbar.dart';
// import 'package:gitaproject/question_card.dart';
// import 'package:gitaproject/question_controller.dart';

// import 'models/Questions.dart';

// final List sample_data = [
//   {
//     "id": 1,
//     "question":
//         "Flutter is an open-source UI software development kit created by ______",
//     "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
//     "answer_index": 1,
//   },
//   {
//     "id": 2,
//     "question": "When google release Flutter.",
//     "options": ['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
//     "answer_index": 2,
//   },
//   {
//     "id": 3,
//     "question": "A memory location that holds a single letter or number.",
//     "options": ['Double', 'Int', 'Char', 'Word'],
//     "answer_index": 2,
//   },
//   {
//     "id": 4,
//     "question": "What command do you use to output data to the screen?",
//     "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
//     "answer_index": 2,
//   },
// ];

// class KurukshetraQuiz extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // So that we have acccess our controller
//     QuestionController _questionController = QuestionController();
//     return Scaffold(
//       body: Stack(
//         children: [
//           Image.asset("assets/icons/bg.svg", fit: BoxFit.fill),
//           SafeArea(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: kDefaultPadding),
//                   child: ProgressBar(),
//                 ),
//                 SizedBox(height: kDefaultPadding),
//                 Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: kDefaultPadding),
//                   child: Text.rich(
//                     TextSpan(
//                       text:
//                           "Question ${_questionController.questionNumber.value}",
//                       style: Theme.of(context).textTheme.headline4,
//                       children: [
//                         TextSpan(
//                           text: "/${_questionController.questions.length}",
//                           style: Theme.of(context).textTheme.headline5,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Divider(thickness: 1.5),
//                 SizedBox(height: kDefaultPadding),
//                 Expanded(
//                   child: PageView.builder(
//                     // Block swipe to next qn
//                     physics: NeverScrollableScrollPhysics(),
//                     controller: _questionController.pageController,
//                     onPageChanged: _questionController.updateTheQnNum,
//                     itemCount: _questionController.questions.length,
//                     itemBuilder: (context, index) => QuestionCard(
//                         question: _questionController.questions[index]),
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }



// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';



// // class KurukshetraQuiz extends StatefulWidget {
// //   @override
// //   _KurukshetraQuizState createState() => _KurukshetraQuizState();

// //   static indexof(Map category) {}
// // }

// // class _KurukshetraQuizState extends State<KurukshetraQuiz> {
// //   List sample_data = [
// //     {
// //       "id": 1,
// //       "question":
// //           "Q1. Flutter is an open-source UI software development kit created by ______",
// //       "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
// //       "answer_index": 1,
// //     },
// //     {
// //       "id": 2,
// //       "question": "Q2. When google release Flutter.",
// //       "options": ['Jun 2017', 'Jun 2018', 'May 2017', 'May 2018'],
// //       "answer_index": 2,
// //     },
// //     {
// //       "id": 3,
// //       "question": "Q3. A memory location that holds a single letter or number.",
// //       "options": ['Double', 'Int', 'Char', 'Word'],
// //       "answer_index": 2,
// //     },
// //     {
// //       "id": 4,
// //       "question": "Q4. What command do you use to output data to the screen?",
// //       "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
// //       "answer_index": 2,
// //     },
// //   ];

// //   var rightAnswerCount = 0;
// //   var wrongAnswerCount = 0;
// //   var currentIndex = 0;
// //   validateAnswer(userInput) {
// //     if (currentIndex < sample_data.length - 1) {
// //       if (userInput == sample_data[currentIndex]['answer']) {
// //         setState(() {
// //           rightAnswerCount += 1;
// //           currentIndex += 1;
// //         });
// //       } else {
// //         setState(() {
// //           wrongAnswerCount += 1;
// //           currentIndex += 1;
// //         });
// //       }
// //     }
// //   }

// //   reset() {
// //     setState(() {
// //       rightAnswerCount = 0;
// //       wrongAnswerCount = 0;
// //       currentIndex = 0;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Material App',
// //       home: Scaffold(
// //         backgroundColor: Colors.blueGrey[100],
// //         appBar: AppBar(
// //           title: Text('Quiz'),
// //         ),
// //         body: Center(
// //           child: Container(
// //             width: double.infinity,
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.center,
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 Container(
// //                     color: Colors.white,
// //                     margin: EdgeInsets.all(8),
// //                     padding: EdgeInsets.all(8),
// //                     child: Column(
// //                       children: [
// //                         Text(
// //                           '${sample_data[currentIndex]['question']}',
// //                           style: TextStyle(
// //                             fontSize: 24,
// //                           ),
// //                           textAlign: TextAlign.center,
// //                         ),
// //                         Container(
// //                           width: double.infinity,
// //                           height: 40,
// //                           margin: EdgeInsets.only(bottom: 10),
// //                           child: ElevatedButton(
// //                               style: ElevatedButton.styleFrom(
// //                                   primary: Colors.blueGrey[900], elevation: 0),
// //                               onPressed: () {
// //                                 validateAnswer([currentIndex]['id']);
// //                               },
// //                               child: Text(
// //                                   '${sample_data[currentIndex]['options'][0]}')),
// //                         ),
// //                         Container(
// //                           width: double.infinity,
// //                           height: 40,
// //                           margin: EdgeInsets.only(bottom: 10),
// //                           child: ElevatedButton(
// //                               style: ElevatedButton.styleFrom(
// //                                   primary: Colors.blueGrey[900], elevation: 0),
// //                               onPressed: () {
// //                                 validateAnswer(
// //                                     [currentIndex]['option2']);
// //                               },
// //                               child: Text(
// //                                   '${sample_data[currentIndex]['options'][1]}',
// //                                   style: TextStyle(color: Colors.white))),
// //                         ),
// //                         Container(
// //                           width: double.infinity,
// //                           height: 40,
// //                           margin: EdgeInsets.only(bottom: 10),
// //                           child: ElevatedButton(
// //                               style: ElevatedButton.styleFrom(
// //                                   primary: Colors.blueGrey[900], elevation: 0),
// //                               onPressed: () {
// //                                 validateAnswer(
// //                                     [currentIndex]['option3']);
// //                               },
// //                               child: Text(
// //                                   '${sample_data[currentIndex]['options'][2]}')),
// //                         ),
// //                         Container(
// //                           width: double.infinity,
// //                           height: 40,
// //                           margin: EdgeInsets.only(bottom: 10),
// //                           child: ElevatedButton(
// //                               style: ElevatedButton.styleFrom(
// //                                   primary: Colors.blueGrey[900], elevation: 0),
// //                               onPressed: () {
// //                                 validateAnswer(
// //                                     [currentIndex]['option4']);
// //                               },
// //                               child: Text(
// //                                   '${sample_data[currentIndex]['options'][3]}')),
// //                         ),
// //                       ],
// //                     )),

// //                 // ElevatedButton(
// //                 //     onPressed: () {},
// //                 //     child: Text('${questions[currentIndex]['option4']}')),
// //                 SizedBox(
// //                   height: 20,
// //                 ),
// //                 Text(
// //                   // ignore: unnecessary_brace_in_string_interps
// //                   "Total: ${.length} - Right: ${rightAnswerCount} Wrong: ${wrongAnswerCount}",
// //                   style: TextStyle(color: Colors.redAccent[900], fontSize: 22),
// //                 ),
// //                 TextButton(
// //                   onPressed: () {
// //                     reset();
// //                   },
// //                   child: Text(
// //                     "Reset",
// //                     style: TextStyle(color: Colors.red[900], fontSize: 22),
// //                   ),
// //                 )
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
