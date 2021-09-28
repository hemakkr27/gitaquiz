import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gitaproject/GitaQuiz10quest.dart';
import 'package:gitaproject/GitaQuiz1quest.dart';
import 'package:gitaproject/GitaQuiz365quest.dart';

class GitaQuiz extends StatefulWidget {
  @override
  _GitaQuizState createState() => _GitaQuizState();

  static indexof(Map category) {}
}

class _GitaQuizState extends State<GitaQuiz> {
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
                        // width: double.infinity,
                        // color: Colors.white,
                        margin: EdgeInsets.all(8),
                        padding: EdgeInsets.all(8),
                        child: Column(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors
                                      .redAccent, //background color of button
                                  side: BorderSide(
                                      width: 3,
                                      color: Colors
                                          .brown), //border width and color
                                  elevation: 3, //elevation of button
                                  shape: RoundedRectangleBorder(
                                      //to set border radius to button
                                      borderRadius: BorderRadius.circular(30)),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 50,
                                      vertical:
                                          50) //content padding inside button
                                  ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            GitaQuiz1quest()));
                              },
                              child: Text("One question show One Day"),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors
                                        .redAccent, //background color of button
                                    side: BorderSide(
                                        width: 3,
                                        color: Colors
                                            .brown), //border width and color
                                    elevation: 3, //elevation of button
                                    shape: RoundedRectangleBorder(
                                        //to set border radius to button
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 50,
                                        vertical:
                                            50) //content padding inside button
                                    ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              GitaQuiz10quest()));
                                },
                                child: Text("Ten question show One Day")),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors
                                        .redAccent, //background color of button
                                    side: BorderSide(
                                        width: 3,
                                        color: Colors
                                            .brown), //border width and color
                                    elevation: 3, //elevation of button
                                    shape: RoundedRectangleBorder(
                                        //to set border radius to button
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 50,
                                        vertical:
                                            50) //content padding inside button
                                    ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              GitaQuiz365quest()));
                                },
                                child: Text("One question show Daywise")),
                          ],
                        ),
                      ),
                    ]),
              ),
            )));
  }
}

//  DropdownButton(
//                                 value: _value,
//                                 items: [
//                                   DropdownMenuItem(
//                                     child: InkWell(
//                                       child: Text(
//                                         "Daily Question",
//                                       ),
//                                       onTap: () {
//                                         Navigator.push(
//                                             context,
//                                             MaterialPageRoute(
//                                                 builder: (context) =>
//                                                     GitaQuiz()));
//                                       },
//                                     ),
//                                     value: 0,
//                                   ),
//                                   DropdownMenuItem(
//                                     child: InkWell(
//                                       child: Text(
//                                         "Daily Question 10",
//                                       ),
//                                       onTap: () {
//                                         Navigator.push(
//                                             context,
//                                             MaterialPageRoute(
//                                                 builder: (context) =>
//                                                     GitaQuiz10quest()));
//                                       },
//                                     ),
//                                     value: 1,
//                                   ),
//                                   DropdownMenuItem(
//                                     child: Text(
//                                       "Days 365 ",
//                                     ),
//                                     value: 2,
//                                   )
//                                 ],
//                                 onChanged: (dynamic value) {
//                                   setState(() {
//                                     _value = value;
//                                   });
//                                 },
//                                 hint: Text("Gita Quiz",
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                     ))),
