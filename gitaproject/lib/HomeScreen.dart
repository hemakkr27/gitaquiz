import 'package:flutter/material.dart';
import 'package:gitaproject/GitaQuiz.dart';
import 'package:gitaproject/Kmowkurukshetra.dart';
import 'package:gitaproject/Modules/Data.dart';
import 'package:gitaproject/Modules/Event.dart';
import 'package:gitaproject/ProfileScreen.dart';
import 'package:gitaproject/screens/quiz/quiz_screen.dart';

import 'Widgets/HomeEventContainer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // int _selectedCategory = 0;

  //List<Widget> buildCategoriesWidgets() {
  //List<Widget> categoriesWidgets = [];
  // for (Map category in categories) {
  //   categoriesWidgets.add(GestureDetector(
  //     child: Container(
  //       color: _selectedCategory == categories.indexOf(category)
  //           ? KAppColor
  //           : Colors.transparent,
  //       padding: EdgeInsets.symmetric(horizontal: 2, vertical: 5),
  //       child:
  //        Row(
  //         children: [
  //           Icon(category['icon'], color: Colors.white),
  //           SizedBox(width: 2),
  //           Text(category['name'], style: TextStyle(color: Colors.white)),
  //         ],
  //       ),
  //     ),
  //     onTap: () {
  //       setState(() {
  //         // Navigator.push(
  //         //     context, MaterialPageRoute(builder: (context) => GitaQuiz()));
  //         _selectedCategory = categories.indexOf(category);
  //       });
  //     },
  //   )
  //   );
  // }
  //return categoriesWidgets;
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Container(
              //height: 200,
              padding: EdgeInsets.all(20),
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                          ),
                          Text(
                            'kurukshetra',
                            style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                            ),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfileScreen(),
                            ),
                          );
                        },
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(
                            'assets/event1.jpg',
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        child: Container(
                          height: 50,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 5),
                                  child: Icon(Icons.music_note,
                                      color: Colors.white),
                                ),
                                SizedBox(width: 5),
                                Text('Gita Quiz',
                                    style: TextStyle(color: Colors.white)),
                              ]
                              //buildCategoriesWidgets(),
                              ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GitaQuiz()));
                        },
                      ),
                      InkWell(
                        child: Container(
                          height: 50,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 5),
                                  child: Icon(Icons.sports_basketball,
                                      color: Colors.white),
                                ),
                                SizedBox(width: 5),
                                Text('Know1 Kurukshetra',
                                    style: TextStyle(color: Colors.white)),
                              ]
                              //buildCategoriesWidgets(),
                              ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => QuizScreen()));
                        },
                      ),
                      InkWell(
                        child: Container(
                          height: 50,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 5),
                                  child:
                                      Icon(Icons.fastfood, color: Colors.white),
                                ),
                                SizedBox(width: 5),
                                Text('Gita Sound',
                                    style: TextStyle(color: Colors.white)),
                              ]
                              //buildCategoriesWidgets(),
                              ),
                        ),
                        onTap: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => Body()));
                        },
                      ),
                      InkWell(
                        child: Container(
                          height: 50,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 5),
                                  child: Icon(Icons.bubble_chart,
                                      color: Colors.white),
                                ),
                                SizedBox(width: 5),
                                Text('Upcoming Gita',
                                    style: TextStyle(color: Colors.white)),
                              ]
                              //buildCategoriesWidgets(),
                              ),
                        ),
                        onTap: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => Body()));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'This Weelend',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          'All',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 290,
                    child: ListView.builder(
                      itemCount: weekendEvents.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        Event event = weekendEvents[index];
                        return HomeEventContainer(
                          event: event,
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Upcoming Events',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          'All',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 300,
                    child: ListView.builder(
                      itemCount: upcomingHomeEvents.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        Event event = upcomingHomeEvents[index];
                        return HomeEventContainer(
                          event: event,
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
