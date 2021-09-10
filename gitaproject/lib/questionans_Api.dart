import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:async';

import 'ModelApi/ques.dart';

class QuestAnsApi extends StatefulWidget {
  @override
  _ApiMapEx04State createState() => _ApiMapEx04State();
}

class _ApiMapEx04State extends State<QuestAnsApi> {
  late List<dynamic> mapResponse;
  late List listResponse;

  late List<Welcome> convertedJsonData;

  get questionDate => null;

  Future<List<Welcome>> fetchData() async {
    try {
      http.Response response =
          await http.get(Uri.parse("http://103.87.24.57/QuizApi/QueData"));
      if (response.statusCode == 200) {
        // final List<User> user = userFromJson(response.body);
        // return user;

        return welcomeFromJson(response.body);
      } else {
        return throw Exception('Failed to load ...');
      }
    } catch (e) {
      return throw Exception('Failed to load ...');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData().then((users) {
      setState(() {
        convertedJsonData = users;
        debugPrint(convertedJsonData.toString());
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: GridView.builder(
        itemCount: 2,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //       builder: (context) => Itempage(
              //           id: convertedJsonData[index].category.toString())
              //       //Cart(_cartList),
              //       ),
              // );
            },
            child: Expanded(
              child: Card(
                color: Colors.grey[350],
                elevation: 20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "${convertedJsonData[index].queDetail.toString()}",
                      //convertedJsonData[index].questionDate.toString(),
                      style: TextStyle(
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

// class QuestAnsApi extends StatefulWidget {
//   @override
//   _ApiMapEx04State createState() => _ApiMapEx04State();
// }

// class _ApiMapEx04State extends State<QuestAnsApi> {
//   late List<dynamic> mapResponse;
//   late List listResponse;

//   late List<Welcome> convertedJsonData;

//   get questionDate => null;

//   Future<List<Welcome>> fetchData() async {
//     try {
//       http.Response response =
//           await http.get(Uri.parse("http://103.87.24.57/QuizApi/QueData"));
//       if (response.statusCode == 200) {
//         // final List<User> user = userFromJson(response.body);
//         // return user;

//         return welcomeFromJson(response.body);
//       } else {
//         return throw Exception('Failed to load ...');
//       }
//     } catch (e) {
//       return throw Exception('Failed to load ...');
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     fetchData().then((users) {
//       setState(() {
//         convertedJsonData = users;
//         debugPrint(convertedJsonData.toString());
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Products'),
//       ),
//       body: GridView.builder(
//         itemCount: 2,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//         ),
//         itemBuilder: (BuildContext context, int index) {
//           return GestureDetector(
//             onTap: () {
//               // Navigator.of(context).push(
//               //   MaterialPageRoute(
//               //       builder: (context) => Itempage(
//               //           id: convertedJsonData[index].category.toString())
//               //       //Cart(_cartList),
//               //       ),
//               // );
//             },
//             child: Card(
//               color: Colors.grey[350],
//               elevation: 20,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Text(
//                     "${convertedJsonData[index].questionDate.toString()}",
//                     //convertedJsonData[index].questionDate.toString(),
//                     style: TextStyle(
//                       color: Colors.brown,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 12,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
