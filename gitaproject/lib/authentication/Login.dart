// ignore: unused_import
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:gitaproject/authentication/OTP.dart';
import 'package:gitaproject/authentication/Register.dart';

// ignore: unused_import
import 'package:http/http.dart' as http;
// import 'package:modal_progress_hud/modal_progress_hud.dart';
import "package:shared_preferences/shared_preferences.dart";
// import 'package:urban_oncalls/addressform/Addresspage.dart';
// import 'package:urban_oncalls/authentication/Forgotpassword.dart';
// import 'package:urban_oncalls/authentication/Register.dart';
// import 'package:urban_oncalls/pages/Homepage.dart';

var token;

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
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

  final FocusNode myFocusNode = FocusNode();

  final TextEditingController mobileController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  late SharedPreferences sharedPreferences;
  bool _passwordVisible = false;
  @override
  void initState() {
    super.initState();
    // this.fetchprofile();
    _passwordVisible = false;

    this.checkLoginStatus();
  }

  checkLoginStatus() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      body:
          //  ModalProgressHUD(
          //   inAsyncCall: isLoading,
          //   child:
          Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.green[300],
                // image: DecorationImage(
                //     image: AssetImage('assets/LoginUI.jpeg'),
                //     fit: BoxFit.cover)
              ),
              // color: Color(0xffFFFFFF),
              child: SafeArea(
                  child: Align(
                      alignment: Alignment.center,
                      child: ListView(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.all(20),
                              child: new Card(
                                color: Colors.green[50],
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 5.0),
                                  child: new Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Text(
                                            'Login',
                                            style: TextStyle(fontSize: 18),
                                          )),
                                      Container(
                                          height: 250,
                                          width: 250,
                                          child:
                                              Image.asset('assets/login.jpeg')),
                                      Padding(
                                          padding: EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                          ),
                                          child: Container(
                                              width: 270,
                                              height: 60,
                                              child: TextFormField(
                                                cursorColor: Color.fromRGBO(
                                                    148, 0, 26, 1),
                                                controller: mobileController,
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 20,
                                                ),
                                                inputFormatters: [
                                                  LengthLimitingTextInputFormatter(
                                                      10),
                                                ],
                                                keyboardType:
                                                    TextInputType.number,
                                                decoration: new InputDecoration(
                                                    icon: Icon(Icons.phone,
                                                        color: Colors.green),
                                                    // border: InputBorder.none,
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100)),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100)),
                                                    border: OutlineInputBorder(
                                                        borderSide:
                                                            BorderSide(),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100)),
                                                    filled: true,
                                                    hintStyle: new TextStyle(
                                                        color: Colors.black26),
                                                    hintText: "Mobile",
                                                    fillColor:
                                                        Colors.green[50]),
                                              ))),
                                      Padding(
                                          padding: EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                          ),
                                          child: Container(
                                              width: 270,
                                              height: 60,
                                              child: TextFormField(
                                                cursorColor: Colors.black87,
                                                controller: passwordController,
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 20),
                                                obscureText: !_passwordVisible,
                                                //  keybordType: TextInputType.number,
                                                decoration: InputDecoration(
                                                    suffixIcon: IconButton(
                                                      icon: Icon(
                                                          // Based on passwordVisible state choose the icon
                                                          _passwordVisible
                                                              ? Icons.visibility
                                                              : Icons
                                                                  .visibility_off,
                                                          color: Colors.green),
                                                      onPressed: () {
                                                        // Update the state i.e. toogle the state of passwordVisible variable
                                                        setState(() {
                                                          _passwordVisible =
                                                              !_passwordVisible;
                                                        });
                                                      },
                                                    ),
                                                    icon: Icon(Icons.lock,
                                                        color: Colors.green),
                                                    //border: InputBorder.none,

                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100)),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100)),
                                                    border: OutlineInputBorder(
                                                        borderSide:
                                                            BorderSide(),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100)),
                                                    filled: true,
                                                    hintStyle: new TextStyle(
                                                        color: Colors.black26),
                                                    hintText: "Password",
                                                    fillColor:
                                                        Colors.green[50]),
                                              ))),
                                      Container(
                                        child: ElevatedButton(
                                          child: new Padding(
                                              padding: EdgeInsets.all(10),
                                              child: Text(
                                                "Login",
                                                style: TextStyle(fontSize: 20),
                                              )),
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.green),
                                              shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18.0),
                                                      side: BorderSide(
                                                          color:
                                                              Colors.green)))),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        otpPage()));
                                            // setState(() {
                                            //   isLoading = true;
                                            // });
                                            // LogIn(mobileController.text,
                                            //     passwordController.text);
                                          },
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              GestureDetector(
                                                child: Text(
                                                  'Forgot Password? ',
                                                  style: TextStyle(
                                                      color: Colors.red),
                                                ),
                                                onTap: () {
                                                  // Navigator.of(context)
                                                  //     .pushAndRemoveUntil(
                                                  //         MaterialPageRoute(
                                                  //             builder: (BuildContext
                                                  //                     context) =>
                                                  //                // ForgotPage()
                                                  //                 ),
                                                  //         (Route<dynamic>
                                                  //                 route) =>
                                                  //             false);
                                                },
                                              ),
                                              GestureDetector(
                                                child: Text(
                                                  'New? Register Here',
                                                  style: TextStyle(
                                                      color: Colors.green),
                                                ),
                                                onTap: () {
                                                  Navigator.of(context)
                                                      .pushAndRemoveUntil(
                                                          MaterialPageRoute(
                                                              builder: (BuildContext
                                                                      context) =>
                                                                  RegisterPage()),
                                                          (Route<dynamic>
                                                                  route) =>
                                                              false);
                                                },
                                              ),
                                            ],
                                          )),
                                    ],
                                  ),
                                ),
                              )),
                          /*  SafeArea(
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child:Container(
                              width: 50,
                              height: 50,
                              child:Image.asset('assets/login.png'),
                            )
                        )),*/
                        ],
                      )))),
    );
  }

  LogIn(String Mobile, password) async {}

/*  if(_controllercity.text!=null ||
  _controllerapt.text!=null||
  _controllerstreet.text!=null||
  Lat!=null ||
  Long!=null){
  }
}*/
/*
  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    myFocusNode.dispose();
    super.dispose();
  }
*/

}
