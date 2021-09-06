// ignore: unused_import
import 'dart:convert';
// ignore: unused_import
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:gitaproject/HomeScreen.dart';

// ignore: unused_import
import 'package:http/http.dart' as http;
import "package:shared_preferences/shared_preferences.dart";

var token;
var mobile;

class otp extends StatelessWidget {
  final String mob;

  otp({required this.mob});
  @override
  Widget build(BuildContext context) {
    mobile = mob;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(148, 0, 26, 1),
        // primarySwatch: Colors.black87,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: otpPage(),
    );
  }
}

class otpPage extends StatefulWidget {
  @override
  otpPageState createState() => otpPageState();
}

class otpPageState extends State<otpPage> with SingleTickerProviderStateMixin {
  // ignore: unused_field
  bool _status = true;
  final FocusNode myFocusNode = FocusNode();

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool isLoading = false;

  // ignore: unused_element
  void _showMessageInScaffold(String message) {
    try {
      // ignore: deprecated_member_use
      _scaffoldKey.currentState!.showSnackBar(SnackBar(
        backgroundColor: Color.fromRGBO(148, 0, 26, 1),
        content: Text(message),
      ));
    } on Exception catch (e, s) {
      print(s);
    }
  }

  final TextEditingController otpController = new TextEditingController();
  late SharedPreferences sharedPreferences;

  @override
  void initState() {
    super.initState();
    // this.fetchprofile();
    this.checkLoginStatus();
  }

  checkLoginStatus() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: _scaffoldKey,
        body: new Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/LoginUI.jpeg'), fit: BoxFit.cover)),
          child: new ListView(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(20),
                  child: new Card(
                    color: Colors.green[50],
                    //color: Color(0xffFFFFFF),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                'OTP',
                                style: TextStyle(fontSize: 18),
                              )),
                          Container(
                              height: 250,
                              width: 250,
                              child: Image.asset('assets/otp.jpeg')),
                          TextFormField(
                            cursorColor: Color.fromRGBO(148, 0, 26, 1),
                            controller: otpController,
                            style:
                                TextStyle(color: Colors.black87, fontSize: 20),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(6),
                            ],
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                icon: Icon(Icons.lock, color: Colors.green),
                                // color: Color.fromRGBO(148, 0, 26, 1)

                                hintText: "OTP",
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                filled: true,
                                hintStyle: new TextStyle(color: Colors.black26),
                                fillColor: Colors.green[50]),
                          ),
                          Container(
                            child: ElevatedButton(
                              child: new Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    "Submit",
                                    style: TextStyle(fontSize: 20),
                                  )),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.green),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side: BorderSide(
                                              color:
                                                  Color.fromRGBO(40, 04, 06, 1)
                                              // color: Color.fromRGBO(
                                              //     148, 0, 26, 1)
                                              )))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeScreen()));
                                // print(mobile);
                                // //verify(mobile, otpController.text);

                                // setState(() {
                                //   _status = true;
                                //   FocusScope.of(context)
                                //       .requestFocus(new FocusNode());
                                // });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ));
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    myFocusNode.dispose();
    super.dispose();
  }

  // @override
  // void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  //   super.debugFillProperties(properties);
  //   // properties.add(DiagnosticsProperty<SharedPreferences>('sharedPreferences', sharedPreferences));
  //   // properties.add(DiagnosticsProperty<SharedPreferences>('sharedPreferences', sharedPreferences));
  // }
}
