import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zap_flutter/Authentication/background.dart';

import 'Authentication/constants.dart';
import 'package:get/get.dart';

class MEContactUs extends StatefulWidget {
  const MEContactUs({Key key}) : super(key: key);

  @override
  _MEContactUsState createState() => _MEContactUsState();
}

class _MEContactUsState extends State<MEContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'contact'.tr,
          style: TextStyle(fontFamily: "Sans"),
        ),
        backgroundColor: kPrimaryColorBlue,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Background(
        height: MediaQuery.of(context).size.height / 1.13,
        child: SingleChildScrollView(
          child: Container(
            // height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: kPrimaryColorDarkBlue),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    dense: false,
                    title: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        'contact_add'.tr,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: kPrimaryColorDarkBlue,
                          fontFamily: "Sans",
                        ),
                      ),
                    ),
                    leading: Icon(
                      Icons.location_on,
                      size: 30,
                      color: kPrimaryColorDarkBlue,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: kPrimaryColorDarkBlue),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      dense: false,
                      title: Text(
                        "8308014241",
                        style: TextStyle(
                            fontFamily: "Sans", color: kPrimaryColorDarkBlue),
                      ),
                      leading: Icon(
                        Icons.phone_android,
                        size: 30,
                        color: kPrimaryColorDarkBlue,
                      ),
                    ),
                    onTap: () {
                      launch("tel://8308014241");
                    },
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(10.0),
                //   child: ListTile(
                //     shape: RoundedRectangleBorder(side: BorderSide(
                //         color: Colors.green
                //     ),
                //       borderRadius: BorderRadius.circular(20.0),
                //     ),
                //     dense: false,
                //     title: Text("07103275529"),
                //     leading: Icon(Icons.print,size: 30,color: Colors.green,),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: kPrimaryColorDarkBlue),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      dense: false,
                      title: Text(
                        "http://www.SAE.com",
                        style: TextStyle(
                            fontFamily: "Sans", color: kPrimaryColorDarkBlue),
                      ),
                      leading: Icon(
                        FontAwesomeIcons.globe,
                        size: 30,
                        color: kPrimaryColorDarkBlue,
                      ),
                    ),
                    onTap: () {
                      launch("http://www.SAE.com");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: kPrimaryColorDarkBlue),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      dense: false,
                      title: Text(
                        "sae@gmail.com",
                        style: TextStyle(
                            fontFamily: "Sans", color: kPrimaryColorDarkBlue),
                      ),
                      leading: Icon(
                        Icons.email_outlined,
                        size: 30,
                        color: kPrimaryColorDarkBlue,
                      ),
                    ),
                    onTap: () {
                      launch('mailto:sae@gmail.com');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
