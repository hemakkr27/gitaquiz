import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gitaproject/HomeScreen.dart';
import 'package:gitaproject/question_data/quest.dart';
import 'package:intl/intl.dart';

void main() {
  // Take the input year, month number, and pass it inside DateTime()
  var now = DateTime(12, 4, 2020);

  // Getting the total number of days of the month
  var totalDays = daysInMonth(now);

  // Stroing all the dates till the last date
  // since we have found the last date using generate
  var listOfDates = new List<int>.generate(totalDays, (i) => i + 1);
  print(listOfDates);
}

// this returns the last date of the month using DateTime
int daysInMonth(DateTime date) {
  var firstDayThisMonth = new DateTime(date.year, date.month, date.day);
  var firstDayNextMonth = new DateTime(firstDayThisMonth.year,
      firstDayThisMonth.month + 1, firstDayThisMonth.day);
  return firstDayNextMonth.difference(firstDayThisMonth).inDays;
}

class GitaQuiz10quest extends StatefulWidget {
  @override
  _GitaQuiz10questState createState() => _GitaQuiz10questState();

  //static indexof(Map category) {}
}

class _GitaQuiz10questState extends State<GitaQuiz10quest> {
//DateTime now = new DateTime.now();
  static final DateTime now = DateTime.now();
  String formattedDate = DateFormat('dd-MM').format(now);
  var currentIndex = 0;
  //static final now = DateTime.now();
  //final lastDayOfMonth = DateTime(0, now.month, now.day);
  static List<dynamic> item = Questions.questions;

 //var parsedDate = DateTime.parse(item[currentIndex]['questionDate']);
  
  List<dynamic> items = item.sublist(0, 10)..shuffle();

  var rightAnswerCount = 0;
  var wrongAnswerCount = 0;
  
  validateAnswer(userInput) {
    print(formattedDate);

    if (currentIndex <= items.length) //for 10 quesstions
    {
      if (userInput == items[currentIndex]['answers']) {
        print(currentIndex);
        setState(() {
          rightAnswerCount += 1;
          currentIndex += 1;
        });
      } else {
        print(currentIndex);
        if (currentIndex == 9) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        }
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
                          //            currentDate questionDate
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

// class ListItem {
//   ListItem(int i, String s);
// }
