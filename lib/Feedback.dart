
import 'package:flutter/material.dart';
import 'package:zap_flutter/Authentication/background.dart';

import 'Authentication/constants.dart';
import 'package:get/get.dart';
class FeedbackShare extends StatefulWidget {
  @override
  _FeedbackShareState createState() => _FeedbackShareState();
}

class _FeedbackShareState extends State<FeedbackShare> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Color suggestionContainerColor = Colors.white;
  Color suggestionTextColor = kPrimaryColorDarkBlue;
  Color bugsContainerColor = Colors.white;
  Color bugsTextColor = kPrimaryColorDarkBlue;
  // String mobile, token;
  bool _isBug= false;

  TextEditingController cmtController = new TextEditingController();


  @override
  void initState() {
    _isBug = false;
    super.initState();
    // getCredentials();
  }

  @override
  void dispose() {
    super.dispose();
    cmtController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        // backgroundColor: Color(0xffFC9D3A),
        title: Text('feedback'.tr,style: TextStyle(fontFamily: "Sans"),),
        backgroundColor:kPrimaryColorBlue,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Background(
        height: MediaQuery.of(context).size.height / 1.13,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
                child: Text("Select type of feedback".tr,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Sans",
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        suggestionContainerColor = kPrimaryColorDarkBlue;
                        suggestionTextColor = Colors.white;
                        bugsContainerColor = Colors.white;
                        bugsTextColor = kPrimaryColorDarkBlue;
                        _isBug = false;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: size.width * 0.35,
                      decoration: BoxDecoration(
                          border: Border.all(color: kPrimaryColorDarkBlue),
                          color: suggestionContainerColor,
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: Center(
                        child: Text(
                          'Suggestions'.tr,
                          style: TextStyle(
                            color: suggestionTextColor,
                            fontSize: 18,
                            fontFamily: "Sans",
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        suggestionContainerColor = Colors.white;
                        suggestionTextColor = kPrimaryColorDarkBlue;
                        bugsContainerColor = kPrimaryColorDarkBlue;
                        bugsTextColor = Colors.white;
                        _isBug = true;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: size.width * 0.35,
                      decoration: BoxDecoration(
                          border: Border.all(color: kPrimaryColorDarkBlue),
                          color: bugsContainerColor,
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: Center(
                        child: Text(
                          'Bugs'.tr,
                          style: TextStyle(
                            color: bugsTextColor,
                            fontSize: 18,
                            fontFamily: "Sans",
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: cmtController,
                  textInputAction: TextInputAction.newline,
                  maxLength: 200,
                  maxLines: 11,
                  decoration: InputDecoration(
                    // prefixIcon: Icon(
                    //   Icons.comment,
                    //   color: kPrimaryColorBlue,
                    // ),
                    border: InputBorder.none,
                    labelText: 'Comments'.tr,
                    labelStyle: TextStyle(
                        fontFamily: "Sans",
                        fontSize: 15.0,
                        color: kPrimaryColorDarkBlue),
                    alignLabelWithHint: true,
                    contentPadding:
                    const EdgeInsets.symmetric(vertical: 13.0, horizontal: 30.0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColorDarkBlue, width: 1),
                      borderRadius: const BorderRadius.all(Radius.circular(35.0)),
                    ),
                    focusedBorder: new OutlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColorDarkBlue, width: 1),
                      borderRadius: const BorderRadius.all(Radius.circular(35.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: MaterialButton(
                    color: kPrimaryColorBlue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    highlightColor: Colors.transparent,
                    splashColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 52.0),
                      child: Text(
                        "Submit".tr,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Sans"),
                      ),
                    ),
                    onPressed: () {
                      showInSnackBar("Submitted successfully".tr);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // _showLoaderDialog(BuildContext context) {
  //   return showDialog(
  //       context: context,
  //       barrierDismissible: false,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //             backgroundColor: Colors.white,
  //             content: new Container(
  //               height: 40.0,
  //               width: 40.0,
  //               child: Center(
  //                 child: SpinKitWave(
  //                   color: Colors.deepOrange,
  //                   size: 40.0,
  //                 ),
  //               ),
  //             ));
  //       });
  // }
  //
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
