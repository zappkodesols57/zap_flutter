import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zap_flutter/Authentication/background.dart';

import 'Authentication/constants.dart';

class MESupport extends StatefulWidget {
  const MESupport({Key key}) : super(key: key);

  @override
  _MESupportState createState() => _MESupportState();
}

class _MESupportState extends State<MESupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Support and FAQ's"),
        backgroundColor: kPrimaryColorBlue,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Background(
          height: MediaQuery.of(context).size.height / 1.13,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  // elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: kPrimaryColorDarkBlue,
                        width: 0.8,
                      )),
                  child: ListTile(
                    // leading: Padding(
                    //   padding: const EdgeInsets.only(top: 12.0),
                    //   child: Container(
                    //     height: 40.0,
                    //     width: 40.0,
                    //     child: Image.asset("assets/images/SAE.png"),),
                    // ),
                    title: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("General"),
                    ),
                    // trailing: Text("Rs. 200.00",style: TextStyle(color: Colors.blue),),

                    trailing: IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                        size: 15.0,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MEFAQ()));
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  // elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: kPrimaryColorDarkBlue,
                        width: 0.8,
                      )),
                  child: ListTile(
                    // leading: Padding(
                    //   padding: const EdgeInsets.only(top: 12.0),
                    //   child: Container(
                    //     height: 40.0,
                    //     width: 40.0,
                    //     child: Image.asset("assets/images/SAE.png"),),
                    // ),
                    title: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 80.0, child: Text("Still Need Help?")),
                    ),
                    // trailing: Text("Rs. 200.00",style: TextStyle(color: Colors.blue),),

                    trailing: IconButton(
                      icon: Icon(
                        Icons.help,
                        color: Colors.blue,
                      ),
                      // Text("Get In Touch",style: TextStyle(
                      //   color: Colors.blue,
                      //   fontSize: 10.0
                      // ),),
                      onPressed: () {
                        launch(
                            'mailto:sae@gmail.com?subject=I need help&body=I am writing this mail for help regarding SAE App');
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MEFAQ extends StatefulWidget {
  const MEFAQ({Key key}) : super(key: key);

  @override
  _MEFAQState createState() => _MEFAQState();
}

class _MEFAQState extends State<MEFAQ> {
  bool isVisible = false;
  bool isVisible1 = false;
  bool isVisible2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("FAQ's"),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context, true);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Background(
            height: MediaQuery.of(context).size.height / 1.13,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    // elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      // side: BorderSide(
                      //   color: kPrimaryColorDarkBlue,width: 0.8,
                      // )
                    ),
                    child: ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          child: Image.asset("assets/SAE.png"),
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "What is SAE",
                          style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontFamily: 'SansBold'),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      // trailing: Text("Rs. 200.00",style: TextStyle(color: Colors.blue),),

                      subtitle: isVisible
                          ? Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                  "SAE is E-Governance app where you can register yourself to make agent and earn some money",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontFamily: 'SansLight')),
                            )
                          : null,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    // elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      // side: BorderSide(
                      //   color: kPrimaryColorDarkBlue,width: 0.8,
                      // )
                    ),
                    child: ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          child: Image.asset("assets/SAE.png"),
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "What if I forget the password?",
                          style: TextStyle(fontFamily: 'SansBold'),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          isVisible1 = !isVisible1;
                        });
                      },
                      // trailing: Text("Rs. 200.00",style: TextStyle(color: Colors.blue),),

                      subtitle: isVisible1
                          ? Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                  "Just click on Forgot Password. Enter the required details and you can easily create a new password",
                                  style: TextStyle(color: Colors.blue)),
                            )
                          : null,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    // elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      // side: BorderSide(
                      //   color: kPrimaryColorDarkBlue,width: 0.8,
                      // )
                    ),
                    child: ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          child: Image.asset("assets/SAE.png"),
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Is it necessary to provide a mobile number and email?",
                          style: TextStyle(fontFamily: 'SansBold'),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          isVisible2 = !isVisible2;
                        });
                      },
                      // trailing: Text("Rs. 200.00",style: TextStyle(color: Colors.blue),),

                      subtitle: isVisible2
                          ? Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                  "Yes, it i9s necessary to provide a mobile number, email is optional.",
                                  style: TextStyle(color: Colors.blue)),
                            )
                          : null,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
