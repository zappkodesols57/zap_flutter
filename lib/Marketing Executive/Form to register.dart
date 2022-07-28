import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zap_flutter/Authentication/background.dart';

import '../constants.dart';

class RegisterformScreen extends StatefulWidget {
  const RegisterformScreen({Key key}) : super(key: key);

  @override
  _RegisterformState createState() => _RegisterformState();
}

class _RegisterformState extends State<RegisterformScreen> {
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "Register  Form",
            style: TextStyle(fontFamily: "Sans"),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context, true);
            },
          ),
        ),
        body: Background(
            height: MediaQuery.of(context).size.height / 1.13,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: ListTile(
                          title: Text(
                            "First Name/पहला नाम*",
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3d68d9)),
                          ),
                          subtitle: TextField(
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3d68d9),
                                fontFamily: "Sans"),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(30)
                            ],
                            // controller: name,
                            decoration: const InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.all(12),
                              // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF3d68d9)),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0)),
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
                                    Radius.circular(20.0)),
                              ),
                              // labelText: 'Enter Full Name/पूरा नाम दर्ज करें *',
                              // labelStyle: TextStyle(
                              //     fontSize: 14.0,
                              //     color: kPrimaryColorDarkBlue
                              // ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        ),
                        // padding: EdgeInsets.only(left: 10),
                        child: ListTile(
                          title: Text(
                            "Last Name/उपनाम*",
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3d68d9)),
                          ),
                          subtitle: TextField(
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3d68d9),
                                fontFamily: "Sans"),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(30)
                            ],
                            // controller: name,
                            decoration: const InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.all(12),
                              // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF3d68d9)),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0)),
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
                                    Radius.circular(20.0)),
                              ),
                              // labelText: 'Enter Full Name/पूरा नाम दर्ज करें *',
                              // labelStyle: TextStyle(
                              //     fontSize: 14.0,
                              //     color: kPrimaryColorDarkBlue
                              // ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white),
                        // padding: EdgeInsets.only(left: 10),
                        child: ListTile(
                          title: Text(
                            "Email/ईमेल*",
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3d68d9)),
                          ),
                          subtitle: TextField(
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3d68d9),
                                fontFamily: "Sans"),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(30)
                            ],
                            // controller: name,
                            decoration: const InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.all(12),
                              // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF3d68d9)),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0)),
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
                                    Radius.circular(20.0)),
                              ),
                              // labelText: 'Enter Full Name/पूरा नाम दर्ज करें *',
                              // labelStyle: TextStyle(
                              //     fontSize: 14.0,
                              //     color: kPrimaryColorDarkBlue
                              // ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        ),
                        // padding: EdgeInsets.only(left: 10),
                        child: ListTile(
                          title: Text(
                            "Area/क्षेत्र*",
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3d68d9)),
                          ),
                          subtitle: TextField(
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3d68d9),
                                fontFamily: "Sans"),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(30)
                            ],
                            // controller: name,
                            decoration: const InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.all(12),
                              // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF3d68d9)),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0)),
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
                                    Radius.circular(20.0)),
                              ),
                              // labelText: 'Enter Full Name/पूरा नाम दर्ज करें *',
                              // labelStyle: TextStyle(
                              //     fontSize: 14.0,
                              //     color: kPrimaryColorDarkBlue
                              // ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        ),
                        // padding: EdgeInsets.only(left: 10),
                        child: ListTile(
                          title: Text(
                            "City/शहर*",
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3d68d9)),
                          ),
                          subtitle: TextField(
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3d68d9),
                                fontFamily: "Sans"),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(30)
                            ],
                            // controller: name,
                            decoration: const InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.all(12),
                              // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF3d68d9)),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0)),
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
                                    Radius.circular(20.0)),
                              ),
                              // labelText: 'Enter Full Name/पूरा नाम दर्ज करें *',
                              // labelStyle: TextStyle(
                              //     fontSize: 14.0,
                              //     color: kPrimaryColorDarkBlue
                              // ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        ),
                        // padding: EdgeInsets.only(left: 10),
                        child: ListTile(
                          title: Text(
                            "State/राज्य*",
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3d68d9)),
                          ),
                          subtitle: TextField(
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3d68d9),
                                fontFamily: "Sans"),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(30)
                            ],
                            // controller: name,
                            decoration: const InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.all(12),
                              // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF3d68d9)),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0)),
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
                                    Radius.circular(20.0)),
                              ),
                              // labelText: 'Enter Full Name/पूरा नाम दर्ज करें *',
                              // labelStyle: TextStyle(
                              //     fontSize: 14.0,
                              //     color: kPrimaryColorDarkBlue
                              // ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: ListTile(
                          title: Text(
                            "Pin/पिन*",
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3d68d9)),
                          ),
                          subtitle: TextField(
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3d68d9),
                                fontFamily: "Sans"),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(30)
                            ],
                            // controller: name,
                            decoration: const InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.all(12),
                              // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF3d68d9)),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0)),
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
                                    Radius.circular(20.0)),
                              ),
                              // labelText: 'Enter Full Name/पूरा नाम दर्ज करें *',
                              // labelStyle: TextStyle(
                              //     fontSize: 14.0,
                              //     color: kPrimaryColorDarkBlue
                              // ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: ListTile(
                          title: Text(
                            "Education/शिक्षा*",
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3d68d9)),
                          ),
                          subtitle: TextField(
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3d68d9),
                                fontFamily: "Sans"),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(30)
                            ],
                            // controller: name,
                            decoration: const InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.all(12),
                              // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF3d68d9)),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0)),
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
                                    Radius.circular(20.0)),
                              ),
                              // labelText: 'Enter Full Name/पूरा नाम दर्ज करें *',
                              // labelStyle: TextStyle(
                              //     fontSize: 14.0,
                              //     color: kPrimaryColorDarkBlue
                              // ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: ListTile(
                          title: Text(
                            "10th*",
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3d68d9)),
                          ),
                          subtitle: TextField(
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3d68d9),
                                fontFamily: "Sans"),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(30)
                            ],
                            // controller: name,
                            decoration: const InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.all(12),
                              // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF3d68d9)),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0)),
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
                                    Radius.circular(20.0)),
                              ),
                              // labelText: 'Enter Full Name/पूरा नाम दर्ज करें *',
                              // labelStyle: TextStyle(
                              //     fontSize: 14.0,
                              //     color: kPrimaryColorDarkBlue
                              // ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: ListTile(
                          title: Text(
                            "12th*",
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3d68d9)),
                          ),
                          subtitle: TextField(
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3d68d9),
                                fontFamily: "Sans"),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(30)
                            ],
                            // controller: name,
                            decoration: const InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.all(12),
                              // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF3d68d9)),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0)),
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
                                    Radius.circular(20.0)),
                              ),
                              // labelText: 'Enter Full Name/पूरा नाम दर्ज करें *',
                              // labelStyle: TextStyle(
                              //     fontSize: 14.0,
                              //     color: kPrimaryColorDarkBlue
                              // ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: ListTile(
                          title: Text(
                            "Graduation/ग्रेजुएशन*",
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3d68d9)),
                          ),
                          subtitle: TextField(
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3d68d9),
                                fontFamily: "Sans"),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(30)
                            ],
                            // controller: name,
                            decoration: const InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.all(12),
                              // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF3d68d9)),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0)),
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
                                    Radius.circular(20.0)),
                              ),
                              // labelText: 'Enter Full Name/पूरा नाम दर्ज करें *',
                              // labelStyle: TextStyle(
                              //     fontSize: 14.0,
                              //     color: kPrimaryColorDarkBlue
                              // ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: ListTile(
                          title: Text(
                            "Post Graduation/पोस्ट ग्रेजुएशन*",
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3d68d9)),
                          ),
                          subtitle: TextField(
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3d68d9),
                                fontFamily: "Sans"),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(30)
                            ],
                            // controller: name,
                            decoration: const InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.all(12),
                              // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF3d68d9)),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0)),
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
                                    Radius.circular(20.0)),
                              ),
                              // labelText: 'Enter Full Name/पूरा नाम दर्ज करें *',
                              // labelStyle: TextStyle(
                              //     fontSize: 14.0,
                              //     color: kPrimaryColorDarkBlue
                              // ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        color: kPrimaryColorDarkBlue,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 8.0, right: 30, left: 30),
                          child: Text(
                            "Submit",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
