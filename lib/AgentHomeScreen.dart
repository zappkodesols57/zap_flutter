import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'AgentNotifications.dart';
import 'Change Password.dart';
import 'ContactUs.dart';
import 'Feedback.dart';
import 'ME_Support_FAQ.dart';
import 'Marketing Executive/AddCustomer.dart';
import 'Marketing Executive/CustomerInfo.dart';
import 'Marketing Executive/LeaderBoard.dart';
import 'Marketing Executive/Notifications.dart';
import 'Payments.dart';
import 'Profile.dart';
import 'Wallet.dart';
import 'constants.dart';
import 'login.dart';

class AgentHomeScreen extends StatefulWidget {
  const AgentHomeScreen({Key key}) : super(key: key);

  @override
  _AgentHomeScreenState createState() => _AgentHomeScreenState();
}

class _AgentHomeScreenState extends State<AgentHomeScreen> {
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
        onWillPop: () => showExitPop(context),
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: kPrimaryColorDarkBlue),
            title: Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: Text("Agent",
                  style: TextStyle(
                      fontSize: 22,
                      color: kPrimaryColorDarkBlue,
                      fontFamily: "SansMedium",
                      fontWeight: FontWeight.w600)),
            ),
            actions: [
              GestureDetector(
                child: Container(
                  width: 45,
                  padding: EdgeInsets.only(top: 0),
                  child: Icon(Icons.notifications_active_outlined,
                      color: kPrimaryColorDarkBlue),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AgentNotifications()));
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child:
                    VerticalDivider(thickness: 1, color: kPrimaryColorDarkBlue),
              ),
              Container(
                width: 45,
                padding: EdgeInsets.only(top: 0, right: 10),
                child: Icon(
                  Icons.help_outline_outlined,
                  color: kPrimaryColorDarkBlue,
                ),
              ),
            ],
          ),
          drawer: _buildDrawer(),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(10),
                    child: Card(
                      // margin: EdgeInsets.all(5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              width: 1, color: kPrimaryColorDarkBlue),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          "Total Services Sold ",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: kPrimaryColorDarkBlue),
                                          textAlign: TextAlign.start,
                                        )),
                                    Text(
                                      "  :  26",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: kPrimaryColorDarkBlue,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          "Total Payment Collected",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: kPrimaryColorDarkBlue),
                                          textAlign: TextAlign.start,
                                        )),
                                    Text(
                                      "  :  ₹ 790.00",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: kPrimaryColorDarkBlue,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          "Total Payment Sent",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: kPrimaryColorDarkBlue),
                                          textAlign: TextAlign.start,
                                        )),
                                    Text(
                                      "  :  ₹ 360.00",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: kPrimaryColorDarkBlue,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          "Total Commission Earned ",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: kPrimaryColorDarkBlue),
                                          textAlign: TextAlign.start,
                                        )),
                                    Text(
                                      "  :  ₹ 170.00",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: kPrimaryColorDarkBlue,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            elevation: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      kPrimaryColorDarkBlue,
                                      Colors.blue
                                    ],
                                    end: Alignment.bottomLeft,
                                    begin: Alignment.topCenter),
                                // color: kPrimaryColorDarkBlue,
                                borderRadius: BorderRadius.circular(15),
                                // border: Border.all(width: 2.5,color: Colors.white),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.person_add,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Container(
                                          height: 20,
                                          width: 110,
                                          alignment: Alignment.center,
                                          child: Text("Add Customer",
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.w400))),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            elevation: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      kPrimaryColorDarkBlue,
                                      Colors.blue
                                    ],
                                    end: Alignment.bottomLeft,
                                    begin: Alignment.topCenter),
                                borderRadius: BorderRadius.circular(15),
                                // border: Border.all(width: 2.5,color: Colors.white)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.person_search,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Container(
                                          height: 20,
                                          width: 110,
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Customers Info",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CustomerInfo()));
                          },
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 10),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [kPrimaryColorDarkBlue, Colors.blue],
                              end: Alignment.bottomLeft,
                              begin: Alignment.topCenter),
                          borderRadius: BorderRadius.circular(15),
                          // border: Border.all(width: 2.5,color: Colors.white)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text("Service Request",
                                    style: TextStyle(color: Colors.white)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "Shopact Licence",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.attach_file,
                                        color: Colors.white,
                                      )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.file_upload,
                                        color: Colors.white,
                                      )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.camera,
                                        color: Colors.white,
                                      )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.image_outlined,
                                        color: Colors.white,
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [kPrimaryColorDarkBlue, Colors.blue],
                              end: Alignment.bottomLeft,
                              begin: Alignment.topCenter),
                          borderRadius: BorderRadius.circular(15),
                          // border: Border.all(width: 2.5,color: Colors.white)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text("Service Request",
                                    style: TextStyle(color: Colors.white)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "GST Certificate",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.attach_file,
                                        color: Colors.white,
                                      )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.file_upload,
                                        color: Colors.white,
                                      )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.camera,
                                        color: Colors.white,
                                      )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.image_outlined,
                                        color: Colors.white,
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 10),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [kPrimaryColorDarkBlue, Colors.blue],
                              end: Alignment.bottomLeft,
                              begin: Alignment.topCenter),
                          borderRadius: BorderRadius.circular(15),
                          // border: Border.all(width: 2.5,color: Colors.white)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text("Service Request",
                                    style: TextStyle(color: Colors.white)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "MSME / ITR Submission",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.attach_file,
                                        color: Colors.white,
                                      )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.file_upload,
                                        color: Colors.white,
                                      )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.camera,
                                        color: Colors.white,
                                      )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.image_outlined,
                                        color: Colors.white,
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Container(
                  //   width: MediaQuery.of(context).size.width,
                  //   padding: EdgeInsets.only(left: 2,right: 2),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //     children: [
                  //       Card(
                  //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  //         elevation: 0,
                  //         child: Container(
                  //           decoration: BoxDecoration(
                  //             color: kPrimaryColorDarkBlue,
                  //             borderRadius: BorderRadius.circular(15),
                  //               // border: Border.all(width: 2.5,color: Colors.white),
                  //           ),
                  //           child: Padding(
                  //             padding: const EdgeInsets.all(35.0),
                  //             child: Column(
                  //               children: [
                  //                 Icon(Icons.person_add,color: Colors.white,size: 50,),
                  //                 Padding(
                  //                   padding: const EdgeInsets.all(5.0),
                  //                   child: Text("Add Referral",style: TextStyle(fontWeight: FontWeight.w400),),
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //
                  //       Card(
                  //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  //         elevation: 0,
                  //         child: Container(
                  //           decoration: BoxDecoration(
                  //               color: kPrimaryColorDarkBlue,
                  //               borderRadius: BorderRadius.circular(15),
                  //               // border: Border.all(width: 2.5,color: Colors.white)
                  //           ),
                  //           child: Padding(
                  //             padding: const EdgeInsets.all(35.0),
                  //             child: Column(
                  //               children: [
                  //                 Icon(Icons.person_add,color: Colors.white,size: 50,),
                  //                 Padding(
                  //                   padding: const EdgeInsets.all(5.0),
                  //                   child: Text("Add Referral",style: TextStyle(fontWeight: FontWeight.w400),),
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  // SizedBox(height: 10),
                  //
                  // Container(
                  //   width: MediaQuery.of(context).size.width,
                  //   padding: EdgeInsets.only(left: 10,right: 10),
                  //   child: Card(
                  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  //     elevation: 0,
                  //     child: Container(
                  //       width: MediaQuery.of(context).size.width,
                  //       decoration: BoxDecoration(
                  //         gradient: LinearGradient(
                  //             colors: [kPrimaryColorDarkBlue, Colors.blue],
                  //             end: Alignment.bottomLeft,
                  //             begin: Alignment.topCenter),
                  //           borderRadius: BorderRadius.circular(15),
                  //           // border: Border.all(width: 2.5,color: Colors.white)
                  //       ),
                  //       child: Padding(
                  //         padding: const EdgeInsets.all(30.0),
                  //         child: Column(
                  //           children: [
                  //             Padding(
                  //               padding: const EdgeInsets.all(5.0),
                  //               child: Text("Service Request",style: TextStyle(color: Colors.white)),
                  //             ),
                  //             Padding(
                  //               padding: const EdgeInsets.all(5.0),
                  //               child: Text("Shopact Licence",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  //             ),
                  //             Row(
                  //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //               children: [
                  //                 IconButton(
                  //                     onPressed: (){},
                  //                     icon: Icon(Icons.attach_file,color: Colors.white,)
                  //                 ),
                  //                 IconButton(
                  //                     onPressed: (){},
                  //                     icon: Icon(Icons.file_upload,color: Colors.white,)
                  //                 ),
                  //                 IconButton(
                  //                     onPressed: (){},
                  //                     icon: Icon(Icons.camera,color: Colors.white,)
                  //                 ),
                  //                 IconButton(
                  //                     onPressed: (){},
                  //                     icon: Icon(Icons.image_outlined,color: Colors.white,)
                  //                 ),
                  //               ],
                  //             )
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(height: 10,),
                  // Container(
                  //   width: MediaQuery.of(context).size.width,
                  //   padding: EdgeInsets.only(left: 10,right: 10),
                  //   child: Card(
                  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  //     elevation: 0,
                  //     child: Container(
                  //       width: MediaQuery.of(context).size.width,
                  //       decoration: BoxDecoration(
                  //         gradient: LinearGradient(
                  //             colors: [kPrimaryColorDarkBlue, Colors.blue],
                  //             end: Alignment.bottomLeft,
                  //             begin: Alignment.topCenter),
                  //           borderRadius: BorderRadius.circular(15),
                  //           // border: Border.all(width: 2.5,color: Colors.white)
                  //       ),
                  //       child: Padding(
                  //         padding: const EdgeInsets.all(30.0),
                  //         child: Column(
                  //           children: [
                  //             Padding(
                  //               padding: const EdgeInsets.all(5.0),
                  //               child: Text("Service Request",style: TextStyle(color: Colors.white)),
                  //             ),
                  //             Padding(
                  //               padding: const EdgeInsets.all(5.0),
                  //               child: Text("GST Certificate",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  //             ),
                  //             Row(
                  //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //               children: [
                  //                 IconButton(
                  //                     onPressed: (){},
                  //                     icon: Icon(Icons.attach_file,color: Colors.white,)
                  //                 ),
                  //                 IconButton(
                  //                     onPressed: (){},
                  //                     icon: Icon(Icons.file_upload,color: Colors.white,)
                  //                 ),
                  //                 IconButton(
                  //                     onPressed: (){},
                  //                     icon: Icon(Icons.camera,color: Colors.white,)
                  //                 ),
                  //                 IconButton(
                  //                     onPressed: (){},
                  //                     icon: Icon(Icons.image_outlined,color: Colors.white,)
                  //                 ),
                  //               ],
                  //             )
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  //
                  // SizedBox(height: 10),
                  //
                  // Container(
                  //   width: MediaQuery.of(context).size.width,
                  //   padding: EdgeInsets.only(left: 10,right: 10),
                  //   child: Card(
                  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  //     elevation: 0,
                  //     child: Container(
                  //       width: MediaQuery.of(context).size.width,
                  //       decoration: BoxDecoration(
                  //         gradient: LinearGradient(
                  //             colors: [kPrimaryColorDarkBlue, Colors.blue],
                  //             end: Alignment.bottomLeft,
                  //             begin: Alignment.topCenter),
                  //           borderRadius: BorderRadius.circular(15),
                  //           // border: Border.all(width: 2.5,color: Colors.white)
                  //       ),
                  //       child: Padding(
                  //         padding: const EdgeInsets.all(30.0),
                  //         child: Column(
                  //           children: [
                  //             Padding(
                  //               padding: const EdgeInsets.all(5.0),
                  //               child: Text("Service Request",style: TextStyle(color: Colors.white)),
                  //             ),
                  //             Padding(
                  //               padding: const EdgeInsets.all(5.0),
                  //               child: Text("MSME / ITR Submission",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                  //             ),
                  //             Row(
                  //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //               children: [
                  //                 IconButton(
                  //                     onPressed: (){},
                  //                     icon: Icon(Icons.attach_file,color: Colors.white,)
                  //                 ),
                  //                 IconButton(
                  //                     onPressed: (){},
                  //                     icon: Icon(Icons.file_upload,color: Colors.white,)
                  //                 ),
                  //                 IconButton(
                  //                     onPressed: (){},
                  //                     icon: Icon(Icons.camera,color: Colors.white,)
                  //                 ),
                  //                 IconButton(
                  //                     onPressed: (){},
                  //                     icon: Icon(Icons.image_outlined,color: Colors.white,)
                  //                 ),
                  //               ],
                  //             )
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ));
  }

  _buildDrawer() {
    return ClipPath(
      clipper: OvalRightBorderClipper(),
      child: Drawer(
        child: Container(
          padding: const EdgeInsets.only(left: 16.0, right: 40),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black45)]),
          width: 300,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  // Container(
                  //   alignment: Alignment.centerRight,
                  //   child: IconButton(
                  //     icon: Icon(
                  //       Icons.power_settings_new,
                  //       color: Colors.grey,
                  //     ),
                  //     onPressed: () {},
                  //   ),
                  // ),
                  SizedBox(height: 10.0),
                  Container(
                    height: 90,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [kPrimaryColorDarkBlue, Colors.blue])),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/SAE.png'),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "RASHMI JOSHI",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "@rashmizapp0704",
                    style:
                        TextStyle(color: kPrimaryColorDarkBlue, fontSize: 16.0),
                  ),
                  SizedBox(height: 10.0),

                  _buildDivider(),
                  GestureDetector(
                    child: _buildRow(Icons.person, "My Profile"),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profile()));
                    },
                  ),
                  _buildDivider(),
                  GestureDetector(
                      child: _buildRow(Icons.list_alt, "Payments"),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PaymentTab(0)));
                      }),
                  // _buildDivider(),
                  // GestureDetector(child: _buildRow(Icons.account_balance_wallet, "Wallet"),
                  //   onTap: (){
                  //     Navigator.pop(context);
                  //     Navigator.push(context, MaterialPageRoute(builder:  (context)=> Wallet()));
                  //   },
                  // ),
                  _buildDivider(),
                  GestureDetector(
                    child: _buildRow(Icons.password, "Change Password"),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChangePassword(false)));
                    },
                  ),
                  _buildDivider(),
                  GestureDetector(
                    child: _buildRow(Icons.help, "Support & FAQs"),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MESupport()));
                    },
                  ),
                  _buildDivider(),
                  GestureDetector(
                    child: _buildRow(Icons.support_agent, "Contact Us"),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MEContactUs()));
                    },
                  ),
                  _buildDivider(),
                  GestureDetector(
                    child: _buildRow(Icons.comment, "Feedback"),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FeedbackShare()));
                    },
                  ),
                  _buildDivider(),
                  GestureDetector(
                    child: _buildRow(Icons.info, "About S.A.E"),
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder:  (context)=> ChangePass()));
                    },
                  ),
                  _buildDivider(),
                  GestureDetector(
                    child: _buildRow(Icons.power_settings_new, "Logout"),
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder:  (context)=> ChangePass()));
                      showAlertDialog(context);
                    },
                  ),
                  _buildDivider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Divider _buildDivider() {
    return Divider(
      color: kPrimaryColorDarkBlue,
    );
  }

  Widget _buildRow(IconData icon, String title, {bool showBadge = false}) {
    final TextStyle tStyle =
        TextStyle(color: kPrimaryColorDarkBlue, fontSize: 16.0);
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(children: [
        Icon(
          icon,
          color: kPrimaryColorDarkBlue,
        ),
        SizedBox(width: 10.0),
        Text(
          title,
          style: tStyle,
        ),
        Spacer(),
        if (showBadge)
          Material(
            color: kPrimaryColorDarkBlue,
            elevation: 5.0,
            shadowColor: kPrimaryColorDarkBlue,
            borderRadius: BorderRadius.circular(5.0),
            child: Container(
              width: 25,
              height: 25,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: kPrimaryColorDarkBlue,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Text(
                "10+",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
      ]),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget continueButton = FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: kPrimaryColorDarkBlue,
      child: Text(
        "Yes, Logout!",
        style: TextStyle(
            color: Colors.white,
            fontFamily: "Sans",
            fontWeight: FontWeight.w600),
      ),
      onPressed: () async {
        // Navigator.of(context)
        //     .push(MaterialPageRoute(builder: (context) => Login()));
        // // Navigator.of(context, rootNavigator: true).pop('dialog');
        // // SharedPreferences preferences = await SharedPreferences.getInstance();
        // // deleteServerToken(preferences.getString("mobile"));
        // // preferences.getKeys();
        // // for (String key in preferences.getKeys()) {
        // //   if (key != "mob" && key != "password" && key != "intro") {
        // //     preferences.remove(key);
        // //   }
        // // }
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
          (Route<dynamic> route) => false,
        );
      },
    );
    Widget cancelButton = FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: kPrimaryColorRed,
      child: Text(
        "Cancel",
        style: TextStyle(
            color: Colors.white,
            fontFamily: "Sans",
            fontWeight: FontWeight.w600),
      ),
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop('dialog');
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      content: Text(
        "Are you sure you want to log out.",
        style: TextStyle(fontFamily: "Sans"),
      ),
      actions: [
        continueButton,
        cancelButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showExitPop(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              height: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Do you want to exit?"),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            print('yes selected');
                            exit(0);
                          },
                          child: Text("Yes"),
                          style: ElevatedButton.styleFrom(
                              primary: kPrimaryColorBlue),
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                          child: ElevatedButton(
                        onPressed: () {
                          print('no selected');
                          Navigator.of(context).pop();
                        },
                        child:
                            Text("No", style: TextStyle(color: Colors.black)),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red.shade800,
                        ),
                      ))
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}

class OvalRightBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width - 40, 0);
    path.quadraticBezierTo(
        size.width, size.height / 4, size.width, size.height / 2);
    path.quadraticBezierTo(size.width, size.height - (size.height / 4),
        size.width - 40, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
