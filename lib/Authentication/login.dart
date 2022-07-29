import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:zap_flutter/Marketing%20Executive/Guidline%20page.dart';
import '../HomeScreen.dart';
import '../constants.dart';
import 'background.dart';
import 'register.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool _obscureTextSignup = true;
    _toggleSignup() {
      setState(() {
        _obscureTextSignup = false;
      });
    }

    return Scaffold(
      key: _scaffoldKey,
      body: Background(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Image.asset(
                      'assets/images/final 01.png',
                      fit: BoxFit.fitWidth,
                      width: 230,
                    ),
                  )),
              // Container(
              //   alignment: Alignment.centerLeft,
              //   // padding: EdgeInsets.symmetric(horizontal: 20),
              //   child: Text(
              //     "LOGIN",
              //     style: TextStyle(
              //       fontWeight: FontWeight.bold,
              //       color: Color(0xFF2661FA),
              //       fontSize: 26
              //     ),
              //     textAlign: TextAlign.left,
              //   ),
              // ),

              // SizedBox(height: size.height * 0.03),

              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  // padding: EdgeInsets.only(left: 10),
                  child: TextFormField(
                    inputFormatters: [LengthLimitingTextInputFormatter(40)],
                    // keyboardType: keyType,
                    controller: usernameController,
                    cursorColor: Color(0xFF3d68d9),
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF3d68d9),
                        fontFamily: "Sans"),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF3d68d9)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15.0)),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF3d68d9)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20.0)),
                      ),
                      isCollapsed: true,
                      contentPadding: EdgeInsets.only(top: 16),
                      border: InputBorder.none,
                      hintText: "username".tr,
                      hintStyle: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF3d68d9),
                          fontFamily: "Sans"),
                      prefixIcon: Icon(Icons.person, color: Color(0xFF3d68d9)),
                    ),
                  ),
                ),
              ),
              // SizedBox(height: size.height * 0.03),

              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  // padding: EdgeInsets.only(left: 10),
                  child: TextFormField(
                    obscureText: _obscureTextSignup,
                    inputFormatters: [LengthLimitingTextInputFormatter(16)],
                    // keyboardType: keyType,
                    controller: passwordController,
                    cursorColor: Color(0xFF3d68d9),
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF3d68d9),
                        fontFamily: "Sans"),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF3d68d9)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15.0)),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF3d68d9)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20.0)),
                      ),
                      isCollapsed: true,
                      contentPadding: EdgeInsets.only(top: 16),
                      border: InputBorder.none,
                      hintText: "password".tr,
                      hintStyle: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF3d68d9),
                          fontFamily: "Sans"),
                      prefixIcon:
                          Icon(Icons.password, color: Color(0xFF3d68d9)),
                      suffixIcon: GestureDetector(
                        onTap: _toggleSignup(),
                        child: Icon(
                          _obscureTextSignup
                              ? FontAwesomeIcons.eyeSlash
                              : FontAwesomeIcons.eye,
                          size: 13.0,
                          color: Color(0xFF3d68d9),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Text(
                  "forgot your password?".tr,
                  style: TextStyle(fontSize: 13, color: Color(0XFF2661FA)),
                ),
              ),

              SizedBox(height: size.height * 0.03),

              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: RaisedButton(
                  onPressed: () {
                    // validate();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Guideline()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    width: size.width * 0.5,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(80.0),
                        gradient: new LinearGradient(colors: [
                          Color.fromARGB(255, 255, 136, 34),
                          Color.fromARGB(255, 255, 177, 41)
                        ])),
                    padding: const EdgeInsets.all(0),
                    child: Text(
                      "Login".tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),

              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: GestureDetector(
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()))
                  },
                  child: Text(
                    "Don't Have an Account? Sign up".tr,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2661FA)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> validate() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if ((usernameController.text.isEmpty ||
        usernameController.text.length < 10)) {
      showInSnackBar("Please enter valid Number".tr);
      return null;
    }
    if (passwordController.text.isEmpty) {
      showInSnackBar("Please enter valid Password".tr);
      return null;
    }
    //
    // _showBottomLoader();

    // if (!rememberMe) {
    //   prefs.getKeys();
    //   prefs.remove("mob");
    //   prefs.remove("password");
    //   print("Okay i removed");
    // }

    final param = {
      "mobileno": usernameController.text,
      "password": passwordController.text,
    };

    final response = await http.post(
      Uri.parse("http://68.183.81.35:8001/login-api"),
      body: param,
    );
    // LoginData data;
    var responseJson = json.decode(response.body);

    // Navigator.pop(context);

    if (response.statusCode == 200) {
      prefs.setInt('id', responseJson['data']['id']);
      prefs.setString('mobile', responseJson['data']['mobile_no']);
      prefs.setString('password', responseJson['data']['password']);
      prefs.setString('email', responseJson['data']['email']);
      prefs.setString('first_name', responseJson['data']['first_name']);
      prefs.setString('last_name', responseJson['data']['last_name']);
      prefs.setString('Date', responseJson['data']['date_joined']);
      prefs.setBool('is_customer', responseJson['data']['is_customer']);
      prefs.setBool('is_franchise', responseJson['data']['is_franchise']);
      print(responseJson);
      // if(responseJson['is_franchise'] == true) {
      //   // setState(() {
      //   //   entry = responseJson['is_franchise'];
      //   // });
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => Guideline()),
        (Route<dynamic> route) => false,
      );
    } else {
      showInSnackBar("Something Went Wrong".tr);
    }
  }

  void showInSnackBar(String value) {
    FocusScope.of(context).requestFocus(new FocusNode());
    _scaffoldKey.currentState?.removeCurrentSnackBar();
    _scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(
        value,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white, fontSize: 16.0, fontFamily: "PoppinsMedium"),
      ),
      backgroundColor: kPrimaryColorBlue,
      duration: Duration(seconds: 2),
    ));
  }
}
