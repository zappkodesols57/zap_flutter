import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'ForgetPassOTP.dart';
import 'Authentication/constants.dart';

class ForgetPass extends StatefulWidget {
  const ForgetPass({Key key}) : super(key: key);

  @override
  _ForgetPassState createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  final FocusNode myFocusNodeForgetNumber = FocusNode();

  TextEditingController forgetNumberController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Forget Password",
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
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: size.width * 0.85,
                  padding: EdgeInsets.only(
                      top: 15.0, bottom: 0.0, left: 40.0, right: 40.0),
                  child: new Image(
                      width: size.width * 0.3,
                      height: size.height * 0.2,
                      image: new AssetImage('assets/SAE.png')),
                ),
                Column(
                  children: [
                    // Container(
                    //     width: size.width * 0.99,
                    //     padding: EdgeInsets.only(
                    //         top: 0.0, bottom: 0.0, left: 0.0, right: 0.0),
                    //     child: Row(
                    //       crossAxisAlignment: CrossAxisAlignment.center,
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: <Widget>[
                    //         IconButton(
                    //             icon: Icon(
                    //               Icons.arrow_back_ios,
                    //               color: Colors.black,
                    //               size: 25.0,
                    //             ),
                    //             onPressed: () {
                    //               Navigator.pop(context);
                    //             }),
                    //         Text(
                    //           "Forgot Password",
                    //           style: TextStyle(
                    //               color: kPrimaryColorDarkBlue,
                    //               fontSize: 30.0,
                    //               fontFamily: "PoppinsBold"),
                    //         ),
                    //         IconButton(
                    //             icon: Icon(
                    //               Icons.arrow_back_ios,
                    //               color: Colors.transparent,
                    //               size: 0.0,
                    //             ),
                    //             onPressed: null),
                    //       ],
                    //     )),
                    Container(
                      width: size.width * 0.99,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(
                          top: 20.0, bottom: 0.0, left: 25.0, right: 25.0),
                      child: Text(
                        "SAE will send an SMS message to verify your phone number.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Container(
                      width: size.width * 0.99,
                      padding: EdgeInsets.only(
                          top: 30.0, bottom: 10.0, left: 25.0, right: 25.0),
                      child: TextField(
                        focusNode: myFocusNodeForgetNumber,
                        controller: forgetNumberController,
                        keyboardType: TextInputType.phone,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(10)
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
                                color: kPrimaryColorDarkBlue, width: 0.5),
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
                            FontAwesomeIcons.mobileAlt,
                            color: kPrimaryColorDarkBlue,
                            size: 20.0,
                          ),
                          labelText: "Phone Number",
                          labelStyle: TextStyle(
                              fontFamily: "Sans",
                              fontSize: 13.0,
                              color: kPrimaryColorDarkBlue),
                        ),
                      ),
                    ),
                    Container(
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
                            begin: const FractionalOffset(0.2, 0.2),
                            end: const FractionalOffset(1.0, 1.0),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp),
                      ),
                      child: MaterialButton(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.white,
                          //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 42.0),
                            child: Text(
                              "Send OTP",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontFamily: "Sans"),
                            ),
                          ),
                          onPressed: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ForgetPassOTP();
                                },
                              ),
                            );
                            // final signCode = await SmsAutoFill().getAppSignature;
                            // print(signCode);
                            // validate(signCode);
                          }),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                )
              ],
            ),
          ),
        ));
  }
}
