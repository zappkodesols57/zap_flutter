import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Authentication/constants.dart';

class ChangePassword extends StatefulWidget {
  bool verify;

  ChangePassword(this.verify);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController oldPassController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController confirmPasswordController = new TextEditingController();

  final FocusNode myFocusNodeOldPass = FocusNode();
  final FocusNode myFocusNodePassword = FocusNode();
  final FocusNode myFocusNodePasswordConfirm = FocusNode();

  bool _obscureTextOldPass = true;
  bool _obscureTextSignup = true;
  bool _obscureTextSignupConfirm = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: (widget.verify)
            ? Text(
                "New Password",
                style: TextStyle(fontFamily: "Sans"),
              )
            : Text(
                "Change Password",
                style: TextStyle(fontFamily: "Sans"),
              ),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                height: 150.0,
                width: 150.0,
                child: Image.asset("assets/logo.jpeg"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                if (widget.verify == false)
                  Container(
                    width: size.width * 0.99,
                    padding: EdgeInsets.only(
                        top: 10.0, bottom: 0.0, left: 15.0, right: 15.0),
                    child: TextField(
                      focusNode: myFocusNodeOldPass,
                      controller: oldPassController,
                      obscureText: _obscureTextOldPass,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(15),
                      ],
                      onSubmitted: (value) {
                        // validatePassword(value) ? showInSnackBar('Valid Password', 2) : showInSnackBar(warn, 8);
                      },
                      style: TextStyle(
                          fontFamily: "Sans",
                          fontSize: 13.0,
                          color: kPrimaryColorDarkBlue),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 13.0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: kPrimaryColorDarkBlue,
                            width: 0.5,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(35.0)),
                        ),
                        focusedBorder: new OutlineInputBorder(
                          borderSide: BorderSide(
                              color: kPrimaryColorDarkBlue, width: 0.5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(35.0)),
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          size: 20.0,
                          color: kPrimaryColorDarkBlue,
                        ),
                        hintText: "Please enter old password here",
                        hintStyle: TextStyle(
                            fontFamily: "Sans",
                            fontSize: 13.0,
                            color: kPrimaryColorDarkBlue),
                        suffixIcon: GestureDetector(
                          // onTap: _toggleOld,
                          child: Icon(
                            _obscureTextOldPass
                                ? FontAwesomeIcons.eyeSlash
                                : FontAwesomeIcons.eye,
                            size: 13.0,
                            color: kPrimaryColorDarkBlue,
                          ),
                        ),
                      ),
                    ),
                  ),
                Container(
                  width: size.width * 0.99,
                  padding: EdgeInsets.only(
                      top: 10.0, bottom: 0.0, left: 15.0, right: 15.0),
                  child: TextField(
                    focusNode: myFocusNodePassword,
                    controller: passwordController,
                    obscureText: _obscureTextSignup,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(15),
                    ],
                    onSubmitted: (value) {
                      // validatePassword(value) ? showInSnackBar('Valid Password', 2) : showInSnackBar(warn, 8);
                    },
                    style: TextStyle(
                        fontFamily: "Sans",
                        fontSize: 13.0,
                        color: kPrimaryColorDarkBlue),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 13.0),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kPrimaryColorDarkBlue,
                          width: 0.5,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(35.0)),
                      ),
                      focusedBorder: new OutlineInputBorder(
                        borderSide: BorderSide(
                            color: kPrimaryColorDarkBlue, width: 0.5),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(35.0)),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        size: 20.0,
                        color: kPrimaryColorDarkBlue,
                      ),
                      hintText: "Please enter new password",
                      hintStyle: TextStyle(
                          fontFamily: "Sans",
                          fontSize: 13.0,
                          color: kPrimaryColorDarkBlue),
                      suffixIcon: GestureDetector(
                        // onTap: _toggleSignup,
                        child: Icon(
                          _obscureTextSignup
                              ? FontAwesomeIcons.eyeSlash
                              : FontAwesomeIcons.eye,
                          size: 13.0,
                          color: kPrimaryColorDarkBlue,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: size.width * 0.99,
                  padding: EdgeInsets.only(
                      top: 10.0, bottom: 0.0, left: 15.0, right: 15.0),
                  child: TextField(
                    focusNode: myFocusNodePasswordConfirm,
                    controller: confirmPasswordController,
                    obscureText: _obscureTextSignupConfirm,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(15),
                    ],
                    style: TextStyle(
                        fontFamily: "Sans",
                        fontSize: 13.0,
                        color: kPrimaryColorDarkBlue),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 13.0),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kPrimaryColorDarkBlue,
                          width: 0.5,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(35.0)),
                      ),
                      focusedBorder: new OutlineInputBorder(
                        borderSide: BorderSide(
                            color: kPrimaryColorDarkBlue, width: 0.5),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(35.0)),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        size: 20.0,
                        color: kPrimaryColorDarkBlue,
                      ),
                      hintText: "Confirm your password",
                      hintStyle: TextStyle(
                          fontFamily: "Sans",
                          fontSize: 13.0,
                          color: kPrimaryColorDarkBlue),
                      suffixIcon: GestureDetector(
                        // onTap: _toggleSignupConfirm,
                        child: Icon(
                          _obscureTextSignupConfirm
                              ? FontAwesomeIcons.eyeSlash
                              : FontAwesomeIcons.eye,
                          size: 13.0,
                          color: kPrimaryColorDarkBlue,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            (widget.verify)
                ? Container(
                    margin: EdgeInsets.only(top: 30.0),
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(35.0)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(1.0, 6.0),
                          blurRadius: 20.0,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(1.0, 6.0),
                          blurRadius: 20.0,
                        ),
                      ],
                      gradient: new LinearGradient(
                          colors: [
                            kPrimaryColorDarkBlue,
                            Colors.blue,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp),
                    ),
                    child: MaterialButton(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 42.0),
                          child: Text(
                            "SUBMIT",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontFamily: "Sans"),
                          ),
                        ),
                        onPressed: () {
                          // validate();
                        }),
                  )
                : Container(
                    margin: EdgeInsets.only(top: 30.0),
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(35.0)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(1.0, 6.0),
                          blurRadius: 20.0,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(1.0, 6.0),
                          blurRadius: 20.0,
                        ),
                      ],
                      gradient: new LinearGradient(
                          colors: [
                            kPrimaryColorDarkBlue,
                            kPrimaryColorBlue,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp),
                    ),
                    child: MaterialButton(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 42.0),
                          child: Text(
                            "Change Password",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontFamily: "Sans"),
                          ),
                        ),
                        onPressed: () {
                          // validate();
                        }),
                  ),
          ],
        ),
      ),
    );
  }
}
