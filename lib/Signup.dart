import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';
import 'login.dart';

class Signup extends StatefulWidget {
  static final String path = "lib/src/pages/login/signup3.dart";

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          children: <Widget>[
            HeaderContainer("Signup For Free"),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    _textInput(
                        hint: "First Name",
                        icon: Icons.person,
                        limit: LengthLimitingTextInputFormatter(30)),
                    _textInput(
                        hint: "Last Name",
                        icon: Icons.person,
                        limit: LengthLimitingTextInputFormatter(30)),
                    _textInput(
                        hint: "Email",
                        icon: Icons.email,
                        limit: LengthLimitingTextInputFormatter(30)),
                    _textInput(
                        hint: "Phone Number",
                        icon: Icons.call,
                        limit: LengthLimitingTextInputFormatter(10)),
                    _textInput(
                        hint: "Referral Code",
                        icon: Icons.pin,
                        limit: LengthLimitingTextInputFormatter(6)),
                    _textInput(
                        hint: "Password",
                        icon: Icons.password,
                        limit: LengthLimitingTextInputFormatter(16)),
                    _textInput(
                        hint: "Confirm Password",
                        icon: Icons.password,
                        limit: LengthLimitingTextInputFormatter(16)),
                    Expanded(
                      child: Center(
                        child: ButtonWidget(
                          btnText: "SIGNUP",
                          onClick: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                    Spacer(),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Have an account ? ",
                              style: TextStyle(color: kPrimaryColorDarkBlue)),
                          InkWell(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: kPrimaryColorLightBlue,
                                  fontSize: 25.0),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _textInput({controller, hint, icon, type, limit}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      padding: EdgeInsets.only(left: 10),
      child: TextFormField(
        inputFormatters: [limit],
        keyboardType: type,
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}

class HeaderContainer extends StatelessWidget {
  var text = "Signin";

  HeaderContainer(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [kPrimaryColorDarkBlue, Colors.blue],
              end: Alignment.bottomLeft,
              begin: Alignment.topCenter),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100))),
      child: Stack(
        children: <Widget>[
          Positioned(
              top: 90,
              bottom: 90,
              left: 90,
              right: 90,
              child: Image.asset(
                "assets/logo.jpeg",
              )),
          Positioned(
              bottom: 20,
              right: 20,
              child: Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
          // Center(
          //   child: Image.asset(
          //     "assets/icon/app-store-logo.jpg",
          //     height: 100,
          //     width: 100,
          //   ),
          // ),
        ],
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  String btnText = "";
  var onClick;

  ButtonWidget({this.btnText, this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [kPrimaryColorDarkBlue, kPrimaryColorBlue],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter),
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          btnText,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
