// ignore: unused_import
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:gitaproject/authentication/Login.dart';
import 'package:gitaproject/authentication/OTP.dart';
// ignore: unused_import
import 'package:http/http.dart' as http;

import "package:shared_preferences/shared_preferences.dart";

var token;

class RegisterPage extends StatefulWidget {
  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage>
    with SingleTickerProviderStateMixin {
  final FocusNode myFocusNode = FocusNode();

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool isLoading = false;

  // ignore: unused_element
  void _showMessageInScaffold(String message) {
    try {
      // ignore: deprecated_member_use
      _scaffoldKey.currentState!.showSnackBar(SnackBar(
        backgroundColor: Color.fromRGBO(114, 0, 06, 0),
        content: Text(message),
      ));
    } on Exception catch (e, s) {
      print(s);
    }
  }

  final TextEditingController nameController = new TextEditingController();
  final TextEditingController phoneController = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  late SharedPreferences sharedPreferences;
  bool _passwordVisible = false;
  @override
  void initState() {
    super.initState();
    //_passwordVisible = false;

    // this.checkLoginStatus();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      body: new Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/LoginUI.jpeg'), fit: BoxFit.cover)),
          alignment: Alignment.center,
          child: ListView(
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Card(
                    color: Colors.green[50],
                    //color: Color(0xffFFFFFF),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                'Register',
                                style: TextStyle(fontSize: 18),
                              )),

                          Container(
                              height: 200,
                              width: 250,
                              child: Image.asset('assets/LoginUI.jpeg')),

                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Container(
                                width: 270,
                                height: 60,
                                child: TextFormField(
                                    cursorColor: Colors.black87,
                                    controller: nameController,
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 20),
                                    decoration: InputDecoration(
                                        icon: Icon(Icons.person,
                                            color: Colors.green),
                                        // border: InputBorder.none,
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        filled: true,
                                        hintStyle: new TextStyle(
                                            color: Colors.black26),
                                        hintText: "Full Name",
                                        fillColor: Colors.green[50]))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Container(
                                width: 270,
                                height: 60,
                                child: TextFormField(
                                    cursorColor: Colors.black87,
                                    controller: phoneController,
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 20),
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(10),
                                    ],
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        icon: Icon(Icons.phone,
                                            // color:
                                            //     Color.fromRGBO(148, 0, 26, 1)
                                            color: Colors.green),
                                        // border: InputBorder.none,
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        filled: true,
                                        hintStyle: new TextStyle(
                                            color: Colors.black26),
                                        hintText: "Mobile",
                                        fillColor: Colors.green[50]))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Container(
                                width: 270,
                                height: 60,
                                child: TextFormField(
                                    cursorColor: Colors.black87,
                                    controller: emailController,
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 20),

                                    //keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        icon: Icon(Icons.email,
                                            color: Colors.green),
                                        // border: InputBorder.none,
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        filled: true,
                                        hintStyle: new TextStyle(
                                            color: Colors.black26),
                                        hintText: "Email",
                                        fillColor: Colors.green[50]))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10.0, top: 10),
                            child: Container(
                                width: 270,
                                height: 60,
                                child: TextFormField(
                                  obscureText: !_passwordVisible,

                                  cursorColor: Colors.black87,
                                  controller: passwordController,
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 20),
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(10),
                                  ],
                                  // keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                            _passwordVisible
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                            color: Colors.green),
                                        onPressed: () {
                                          // Update the state i.e. toogle the state of passwordVisible variable
                                          setState(() {
                                            _passwordVisible =
                                                !_passwordVisible;
                                          });
                                        },
                                      ),
                                      icon: Icon(Icons.lock, color: Colors.green
                                          //color: Color.fromRGBO(148, 0, 26, 1)
                                          ),
                                      //border: InputBorder.none,

                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      filled: true,
                                      hintStyle:
                                          new TextStyle(color: Colors.black26),
                                      hintText: "Password",
                                      fillColor: Colors.green[50]),
                                )),
                          ),

                          Container(
                              child: ElevatedButton(
                            child: new Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "Register",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
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
                                            color: Color.fromRGBO(40, 04, 06, 1)
                                            // color: Color.fromRGBO(
                                            //     148, 0, 26, 1)

                                            )))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => otpPage()));
                            },
                          )),
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: GestureDetector(
                                child: Text(
                                  'Already Registered?Login Here',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontStyle: FontStyle.normal),
                                ),
                                onTap: () {
                                  Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              LoginPage()),
                                      (Route<dynamic> route) => false);
                                },
                              ))

                          // !_status ? _getActionButtons() : new Container(),
                        ],
                      ),
                    ),
                  )),
            ],
          )),
    );
  }
}
