import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GitaQuiz extends StatefulWidget {
  @override
  _GitaQuizState createState() => _GitaQuizState();

  static indexof(Map category) {}
}

class _GitaQuizState extends State<GitaQuiz> {
  List questions = [
    {
      'question': 'Q1. Who created Flutter?',
      'option1': 'Facebook',
      'option2': 'Adobe',
      'option3': 'Google',
      'option4': 'Microsoft',
      'answers': 'Google',
    },
    {
      'question': 'Q2. What is Flutter?',
      'option1': 'Android Development Kit',
      'option2': 'IOS Development Kit',
      'option3': 'Web Development Kit',
      'option4':
          'SDK to build beautiful IOS, Android, Web & Desktop Native Apps',
      'answers': 'Android Development Kit',
    },
    {
      'question': 'Q3. Which programing language is used by Flutter',
      'option1': 'Ruby',
      'option2': 'Dart',
      'option3': 'C++',
      'option4': 'Kotlin',
      'answers': 'Dart',
    },
    {
      'question': 'Q4. Who created Dart programing language?',
      'option1': 'Lars Bak and Kasper Lund',
      'option2': 'Brendan Eich',
      'option3': 'Bjarne Stroustrup++',
      'option4': 'Jeremy Ashkenas',
      'answers': 'Brendan Eich',
    },
    {
      'question':
          'Q5. Is Flutter for Web and Desktop available in stable version?',
      'option1': 'Yes',
      'option2': 'No',
      'option3': 'Bjarne Stroustrup++',
      'option4': 'Jeremy Ashkenas',
      'answers': 'Yes',
    },
  ];
  var rightAnswerCount = 0;
  var wrongAnswerCount = 0;
  var currentIndex = 0;
  validateAnswer(userInput) {
    if (currentIndex < questions.length - 1) {
      if (userInput == questions[currentIndex]['answers']) {
        print(currentIndex);
        setState(() {
          rightAnswerCount += 1;
          currentIndex += 1;
        });
      } else {
        setState(() {
          wrongAnswerCount += 1;
          currentIndex += 1;
        });
      }
    }
  }

  reset() {
    setState(() {
      rightAnswerCount = 0;
      wrongAnswerCount = 0;
      currentIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: Center(
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: double.infinity,
                    color: Colors.white,
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Text(
                          '${questions[currentIndex]['question']}',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(25)),
                          width: 360,
                          height: 40,
                          margin: EdgeInsets.only(bottom: 10, top: 10),
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white, elevation: 0),
                                onPressed: () {
                                  validateAnswer(
                                      questions[currentIndex]['option1']);
                                },
                                child: Text(
                                    '${questions[currentIndex]['option1']}',
                                    style: TextStyle(color: Colors.red))),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(25)),
                          width: 360,
                          height: 40,
                          margin: EdgeInsets.only(bottom: 10, top: 10),
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    visualDensity: VisualDensity(),
                                    primary: Colors.white,
                                    elevation: 0),
                                onPressed: () {
                                  validateAnswer(
                                      questions[currentIndex]['option2']);
                                },
                                child: Text(
                                    '${questions[currentIndex]['option2']}',
                                    style: TextStyle(color: Colors.red))),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(25)),
                          width: 360,
                          height: 40,
                          margin: EdgeInsets.only(bottom: 10, top: 10),
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white, elevation: 0),
                                onPressed: () {
                                  validateAnswer(
                                      questions[currentIndex]['option3']);
                                },
                                child: Text(
                                    '${questions[currentIndex]['option3']}',
                                    style: TextStyle(color: Colors.red))),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(25)),
                          width: 360,
                          height: 40,
                          margin: EdgeInsets.only(bottom: 10, top: 10),
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white, elevation: 0),
                                onPressed: () {
                                  validateAnswer(
                                      questions[currentIndex]['option4']);
                                },
                                child: Text(
                                    '${questions[currentIndex]['option4']}',
                                    style: TextStyle(color: Colors.red))),
                          ),
                        ),
                        // Container(
                        //   decoration: BoxDecoration(
                        //       border: Border.all(),
                        //       borderRadius: BorderRadius.circular(25)),
                        //   width: 360,
                        //   height: 40,
                        //   margin: EdgeInsets.only(bottom: 10, top: 10),
                        //   child: ElevatedButton(
                        //       style: ElevatedButton.styleFrom(
                        //           primary: Colors.transparent, elevation: 0),
                        //       onPressed: () {
                        //         validateAnswer(
                        //             questions[currentIndex]['option5']);
                        //       },
                        //       child: Text(
                        //           '${questions[currentIndex]['option5']}',
                        //           style: TextStyle(color: Colors.red))),
                        // ),
                      ],
                    )),

                // ElevatedButton(
                //     onPressed: () {},
                //     child: Text('${questions[currentIndex]['option4']}')),
                SizedBox(
                  height: 20,
                ),
                Text(
                  // ignore: unnecessary_brace_in_string_interps
                  "Total: ${questions.length} - Right: ${rightAnswerCount} Wrong: ${wrongAnswerCount}",
                  style: TextStyle(color: Colors.redAccent[900], fontSize: 22),
                ),
                TextButton(
                  onPressed: () {
                    reset();
                  },
                  child: Text(
                    "Reset",
                    style: TextStyle(color: Colors.red[900], fontSize: 22),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
