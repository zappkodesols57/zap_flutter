import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'AgentHomeScreen.dart';
import 'ForgetPass.dart';
import 'HomeScreen.dart';
import 'Signup.dart';
import 'constants.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  ScrollController _controller = new ScrollController();

  bool rememberMe = false;

  void _onRememberMeChanged(bool newValue) async {
    setState(() {
      rememberMe = newValue;
    });
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (newValue) {
      prefs.setString("username", usernameController.text);
      prefs.setString("password", passwordController.text);
      print("Okay i remember");
    } else {
      prefs.getKeys();
      prefs.remove("username");
      prefs.remove("password");
      print("Okay i removed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          children: <Widget>[
            InkWell(
              child: HeaderContainer(""),
              onTap: () {
                // if (usernameController.text.startsWith("agent")) {
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => AgentHomeScreen()));
                // } else {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
                // }
              },
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    _textInput(
                        controller: usernameController,
                        hint: "Enter Username",
                        icon: Icons.email),
                    _textInput(
                        controller: passwordController,
                        hint: "Password",
                        icon: Icons.vpn_key),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 3),
                                child: Checkbox(
                                  value: rememberMe,
                                  activeColor: kPrimaryColorYellow,
                                  onChanged: _onRememberMeChanged,
                                ),
                              ),
                              Text(
                                "Remember Me?",
                                style: TextStyle(
                                    color: kPrimaryColorYellow,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Sans"),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return ForgetPass();
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  color: kPrimaryColorRed,
                                  fontFamily: "Sans",
                                  fontSize: 15.0,
                                ),
                              )),
                        ),
                      ],
                    ),
                    Container(
                      width: 200,
                      child: Center(
                        child: ButtonWidget(
                          btnText: "Login",
                          onClick: () {
                            if (usernameController.text.startsWith("agent")) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AgentHomeScreen()));
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()));
                            }
                          },
                        ),
                      ),
                    ),
                    Spacer(),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account ? ",
                              style: TextStyle(color: kPrimaryColorDarkBlue)),
                          InkWell(
                            child: Text(
                              "SignUp",
                              style: TextStyle(
                                  color: kPrimaryColorLightBlue,
                                  fontSize: 28.0),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Signup()));
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

  Widget _textInput({controller, hint, icon}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.blue.shade800,
      ),
      padding: EdgeInsets.only(left: 10),
      child: TextFormField(
        controller: controller,
        cursorColor: Colors.white,
        style: TextStyle(fontSize: 18, color: Colors.white, fontFamily: "Sans"),
        decoration: InputDecoration(
          isCollapsed: true,
          contentPadding: EdgeInsets.only(top: 16),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(
              fontSize: 14,
              color: Colors.white.withOpacity(0.5),
              fontFamily: "Sans"),
          prefixIcon: Icon(icon, color: Colors.white),
        ),
      ),
    );
  }
}

class HeaderContainer extends StatelessWidget {
  var text = "Login";

  HeaderContainer(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [kPrimaryColorDarkBlue, kPrimaryColorBlue],
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
          // Positioned(
          //     bottom: 20,
          //     right: 25,
          //     child: Text( text,
          //       style: TextStyle(color: Colors.white, fontSize: 25),
          //     )
          // ),
        ],
      ),
    );
  }
}
