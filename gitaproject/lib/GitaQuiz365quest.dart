import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gitaproject/question_data/quest.dart';

class GitaQuiz365quest extends StatefulWidget {
  @override
  _GitaQuiz365questState createState() => _GitaQuiz365questState();

  static indexof(Map category) {}
}

class _GitaQuiz365questState extends State<GitaQuiz365quest> {
  static List<dynamic> item = Questions.questions;
  List<dynamic> items = item.sublist(0, 187);

  var rightAnswerCount = 0;
  var wrongAnswerCount = 0;
  var currentIndex = 0;
  validateAnswer(userInput) {
    if (currentIndex <= items.length) {
      if (userInput == items[currentIndex]['answers']) {
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
                          '${items[currentIndex]['question']}',
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
                                  validateAnswer(items[currentIndex]['opt1']);
                                },
                                child: Text('${items[currentIndex]['opt1']}',
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
                                  validateAnswer(items[currentIndex]['opt2']);
                                },
                                child: Text('${items[currentIndex]['opt2']}',
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
                                  validateAnswer(items[currentIndex]['opt3']);
                                },
                                child: Text('${items[currentIndex]['opt3']}',
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
                                  validateAnswer(items[currentIndex]['opt4']);
                                },
                                child: Text('${items[currentIndex]['opt4']}',
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
                //     child: Text('${questions[currentIndex]['opt4']}')),
                SizedBox(
                  height: 20,
                ),
                Text(
                  // ignore: unnecessary_brace_in_string_interps
                  "Total: ${items.length} - Right: ${rightAnswerCount} Wrong: ${wrongAnswerCount}",
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
