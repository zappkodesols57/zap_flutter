import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../constants.dart';
import 'background.dart';
import 'login.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  TextEditingController referalController = TextEditingController();

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      body: Background(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/images/Zapregister.png',
                    fit: BoxFit.fitWidth,
                    width: MediaQuery.of(context).size.width,
                  )),
              Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "REGISTER".tr,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange.shade300,
                      fontSize: 26),
                  textAlign: TextAlign.left,
                ),
              ),

              // SizedBox(height: size.height * 0.01),

              // Padding(
              //   padding: const EdgeInsets.only(left: 15.0,right: 15.0),
              //   child: Container(
              //     margin: EdgeInsets.only(top: 10),
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.all(Radius.circular(20)),
              //       color: Colors.white,
              //     ),
              //     // padding: EdgeInsets.only(left: 10),
              //     child: TextFormField(
              //       inputFormatters: [
              //         LengthLimitingTextInputFormatter(40)
              //       ],
              //       // keyboardType: keyType,
              //       controller:firstnameController,
              //       cursorColor: Color(0xFF3d68d9),
              //       style: TextStyle(fontSize: 18,color: Color(0xFF3d68d9),fontFamily: "Sans"),
              //       decoration: InputDecoration(
              //         focusedBorder:OutlineInputBorder(
              //           borderSide: BorderSide(
              //               color: Color(0xFF3d68d9)
              //           ) ,
              //           borderRadius:
              //           const BorderRadius.all(Radius.circular(15.0)),
              //         ) ,
              //         errorBorder: OutlineInputBorder(
              //           borderSide: BorderSide(
              //               color: Colors.red
              //           ) ,
              //           borderRadius:
              //           const BorderRadius.all(Radius.circular(15.0)),
              //         ),
              //         enabledBorder: OutlineInputBorder(
              //           borderSide: BorderSide(
              //               color: Color(0xFF3d68d9)
              //           ),borderRadius:
              //         const BorderRadius.all(Radius.circular(20.0)),
              //         ),
              //         isCollapsed: true,
              //         contentPadding: EdgeInsets.only(top: 16),
              //         border: InputBorder.none,
              //         hintText: "First Name *",
              //         hintStyle: TextStyle(fontSize: 14,color:Color(0xFF3d68d9),fontFamily: "Sans"),
              //         prefixIcon: Icon(Icons.person, color: Color(0xFF3d68d9)),
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(height: size.height * 0.01),
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40.0,
                        width: MediaQuery.of(context).size.width / 2.3,
                        child: TextField(
                          controller: firstnameController,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(15)
                          ],
                          decoration:  InputDecoration(
                              prefixIcon:
                                  Icon(Icons.person, color: Color(0xFF3d68d9)),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF3d68d9)),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20.0)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF3d68d9)),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0)),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF3d68d9)),
                                borderRadius:  BorderRadius.all(
                                    Radius.circular(15.0)),
                              ),
                              labelText: 'First Name'.tr,
                              labelStyle: TextStyle(color: Color(0xFF3d68d9))),
                        ),
                      ),
                      Container(
                        height: 40.0,
                        width: MediaQuery.of(context).size.width / 2.3,
                        child: TextField(
                          controller: lastnameController,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(15)
                          ],
                          decoration:  InputDecoration(
                              prefixIcon:
                                  Icon(Icons.person, color: Color(0xFF3d68d9)),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF3d68d9)),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20.0)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF3d68d9)),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0)),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF3d68d9)),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0)),
                              ),
                              labelText: 'Last Name'.tr,
                              labelStyle: TextStyle(color: Color(0xFF3d68d9))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Padding(
              //   padding: const EdgeInsets.only(left: 15.0,right: 15.0),
              //   child: Container(
              //     margin: EdgeInsets.only(top: 10),
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.all(Radius.circular(20)),
              //       color: Colors.white,
              //     ),
              //     // padding: EdgeInsets.only(left: 10),
              //     child: TextFormField(
              //       inputFormatters: [
              //         LengthLimitingTextInputFormatter(40)
              //       ],
              //       // keyboardType: keyType,
              //       controller:lastnameController,
              //       cursorColor: Color(0xFF3d68d9),
              //       style: TextStyle(fontSize: 18,color: Color(0xFF3d68d9),fontFamily: "Sans"),
              //       decoration: InputDecoration(
              //         focusedBorder:OutlineInputBorder(
              //           borderSide: BorderSide(
              //               color: Color(0xFF3d68d9)
              //           ) ,
              //           borderRadius:
              //           const BorderRadius.all(Radius.circular(15.0)),
              //         ) ,
              //         errorBorder: OutlineInputBorder(
              //           borderSide: BorderSide(
              //               color: Colors.red
              //           ) ,
              //           borderRadius:
              //           const BorderRadius.all(Radius.circular(15.0)),
              //         ),
              //         enabledBorder: OutlineInputBorder(
              //           borderSide: BorderSide(
              //               color: Color(0xFF3d68d9)
              //           ),borderRadius:
              //         const BorderRadius.all(Radius.circular(20.0)),
              //         ),
              //         isCollapsed: true,
              //         contentPadding: EdgeInsets.only(top: 16),
              //         border: InputBorder.none,
              //         hintText: "Last Name *",
              //         hintStyle: TextStyle(fontSize: 14,color:Color(0xFF3d68d9),fontFamily: "Sans"),
              //         prefixIcon: Icon(Icons.person, color: Color(0xFF3d68d9)),
              //       ),
              //     ),
              //   ),
              // ),

              // SizedBox(height: size.height * 0.01),

              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, bottom: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  height: 40.0,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: mobileController,
                    inputFormatters: [LengthLimitingTextInputFormatter(8)],
                    decoration:  InputDecoration(
                        prefixIcon: Icon(Icons.call, color: Color(0xFF3d68d9)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
                        ),
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
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        labelText: 'Mobile Number'.tr,
                        labelStyle: TextStyle(color: Color(0xFF3d68d9))),
                  ),
                ),
              ),

              // SizedBox(height: size.height * 0.01),

              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, bottom: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  height: 40.0,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    controller: emailController,
                    inputFormatters: [LengthLimitingTextInputFormatter(25)],
                    decoration:  InputDecoration(
                        prefixIcon: Icon(Icons.email, color: Color(0xFF3d68d9)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
                        ),
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
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        labelText: 'Email'.tr,
                        labelStyle: TextStyle(color: Color(0xFF3d68d9))),
                  ),
                ),
              ),

              // SizedBox(height: size.height * 0.01),

              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, bottom: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  height: 40.0,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    controller: referalController,
                    inputFormatters: [LengthLimitingTextInputFormatter(6)],
                    decoration:  InputDecoration(
                        prefixIcon: Icon(Icons.pin, color: Color(0xFF3d68d9)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
                        ),
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
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        labelText: 'Referral Code'.tr,
                        labelStyle: TextStyle(color: Color(0xFF3d68d9))),
                  ),
                ),
              ),

              // SizedBox(height: size.height * 0.01),

              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, bottom: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  height: 40.0,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    controller: passwordController,
                    inputFormatters: [LengthLimitingTextInputFormatter(16)],
                    decoration:  InputDecoration(
                        prefixIcon:
                            Icon(Icons.password, color: Color(0xFF3d68d9)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
                        ),
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
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        labelText: 'password'.tr,
                        labelStyle: TextStyle(color: Color(0xFF3d68d9))),
                  ),
                ),
              ),
              // SizedBox(height: size.height * 0.01),

              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, bottom: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  height: 40.0,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    controller: confirmPassController,
                    inputFormatters: [LengthLimitingTextInputFormatter(16)],
                    decoration:  InputDecoration(
                        prefixIcon:
                            Icon(Icons.password, color: Color(0xFF3d68d9)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
                        ),
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
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        labelText: 'Confirm Password'.tr,
                        labelStyle: TextStyle(color: Color(0xFF3d68d9))),
                  ),
                ),
              ),

              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: RaisedButton(
                  onPressed: () {
                    validateAgent();
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
                      "SIGN UP".tr,
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()))
                  },
                  child: Text(
                    "Already Have an Account? Sign in".tr,
                    style: TextStyle(
                        fontSize: 12,
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

  Future<void> validateAgent() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (firstnameController.text.isEmpty) {
      showInSnackBar("Please enter first name".tr, 2);
      return null;
    }
    if (lastnameController.text.isEmpty) {
      showInSnackBar("Please enter last name".tr, 2);
      return null;
    }
    if ((mobileController.text.isEmpty || mobileController.text.length < 10)) {
      showInSnackBar("Enter mobile number".tr, 2);
      return null;
    }
    if (passwordController.text.isEmpty) {
      showInSnackBar("please enter password".tr, 2);
      return null;
    }
    if (passwordController.text.length < 8) {
      showInSnackBar("Password must contain 8 character".tr, 2);
      return null;
    }
    if (confirmPassController.text.isEmpty ||
        passwordController.text != confirmPassController.text) {
      showInSnackBar("Password not match".tr, 2);
      return null;
    }

    final param = {
      "first_name": firstnameController.text,
      "last_name": lastnameController.text,
      "email": emailController.text,
      "mobileno": mobileController.text,
      "password": passwordController.text,
      "confirm_password": confirmPassController.text,
    };

    final response = await http
        .post(Uri.parse("http://68.183.81.35:8001/register-api/"), body: param);
    // Navigator.pop(context);
    var responseJson = json.decode(response.body);
    print(response.body);

    if (response.statusCode == 200) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
        (Route<dynamic> route) => false,
      );
      // if(responseJson['status'] == "Success") {
      //   // prefs.setString("mobile", responseJson['details'][0]['mobile_no']);
      //   // prefs.setString("username", responseJson['details'][0]['fullname']);
      //   // prefs.setString("password", responseJson['details'][0]['decpassword']);
      //   // showInSnackBar("snackbar1", 2);
      //
      //   // Future.delayed(const Duration(milliseconds: 3000),(){
      //   //   Navigator.of(context, rootNavigator: true).pop();
      //   // });
      //
      //
      //   Navigator.pushAndRemoveUntil(
      //     context,
      //     MaterialPageRoute(builder: (context) => HomeScreen()),
      //         (Route<dynamic> route) => false,
      //   );
      //
      // }else{
      //   print(responseJson['message']);
      //   showInSnackBar(responseJson['message'],2);
      // }
    } else {
      showInSnackBar("Something went wrong".tr, 2);
    }
  }

  void showInSnackBar(String value, int sec) {
    FocusScope.of(context).requestFocus(new FocusNode());
    _scaffoldKey.currentState?.removeCurrentSnackBar();
    _scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(
        value,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white, fontSize: 16.0, fontFamily: "PoppinsMedium"),
      ),
      backgroundColor: Colors.green,
      duration: Duration(seconds: sec),
    ));
  }
}
