import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:zap_flutter/Authentication/background.dart';
import 'package:zap_flutter/Authentication/constants.dart';

import 'AddCustomer.dart';
import 'package:get/get.dart';

class CustomerInfo extends StatefulWidget {
  const CustomerInfo({Key key}) : super(key: key);

  @override
  _CustomerInfoState createState() => _CustomerInfoState();
}

class _CustomerInfoState extends State<CustomerInfo> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  DateTime dateTime;
  String fDate = ""; //From date
  String eDate = ""; //To Date

  TextEditingController fromDateController = new TextEditingController();
  TextEditingController toDateController = new TextEditingController();

  _selectDateStart(BuildContext context) async {
    DateTime e = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );
    dateTime = e;
    fDate =
        '${e.year.toString()}-${e.month.toString()}-${e.day.toString()}'; //converting e DateTime to string format which we needed.
    fromDateController.text = DateFormat("dd-MM-yyyy").format(e);
    return fDate;
  }

  _selectDateEnd(BuildContext context) async {
    DateTime e = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: dateTime,
        lastDate: DateTime.now());
    eDate = '${e.year.toString()}-${e.month.toString()}-${e.day.toString()}';
    if (fDate == "") {
      showInSnackBar("Please select from date");
    } else {
      toDateController.text = DateFormat("dd-MM-yyyy").format(e);
      changeState();
      return eDate;
    }
  }

  void showInSnackBar(String value) {
    FocusScope.of(context).requestFocus(new FocusNode());
    _scaffoldKey.currentState?.removeCurrentSnackBar();
    _scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(
        value,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontFamily: "PoppinsMedium",
          fontWeight: FontWeight.bold,
          fontSize: 12.0,
        ),
      ),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      duration: Duration(seconds: 2),
    ));
  }

  void changeState() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'cust_info'.tr,
              style: TextStyle(fontFamily: "Sans"),
            ),
            backgroundColor: kPrimaryColorBlue,
            automaticallyImplyLeading: false,
            // actions: [
            //   IconButton(
            //       onPressed: () {
            //         Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => AddCustomer(0)));
            //       },
            //       icon: Icon(Icons.person_add))
            // ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: size.width * 0.95,
                  padding: EdgeInsets.only(
                      top: 10.0, bottom: 10.0, left: 0.0, right: 0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: TextField(
                    maxLength: 15,
                    // controller: query,
                    onChanged: (value) {
                      // getHisLists();
                      // setState(() {});
                    },
                    style: TextStyle(
                        fontFamily: "Sans",
                        fontSize: 15.0,
                        color: kPrimaryColorDarkBlue),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      counterStyle: TextStyle(
                        height: double.minPositive,
                      ),
                      counterText: "",
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 13.0, horizontal: 20.0),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: kPrimaryColorDarkBlue, width: 1.0),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15.0)),
                      ),
                      focusedBorder: new OutlineInputBorder(
                        borderSide: BorderSide(
                            color: kPrimaryColorDarkBlue, width: 1.0),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15.0)),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {},
                        child: Icon(
                          CupertinoIcons.search,
                          color: kPrimaryColorDarkBlue,
                          size: 25.0,
                        ),
                      ),
                      hintText: 'search_cust'.tr,
                      hintStyle: TextStyle(
                          fontFamily: "Sans",
                          fontSize: 15.0,
                          color: kPrimaryColorDarkBlue),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.only(bottom: 20.0),
                  width: size.width * 0.95,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: size.width * 0.45,
                        height: 40.0,
                        child: TextField(
                          enableInteractiveSelection: false,
                          // will disable paste operation
                          focusNode: new AlwaysDisabledFocusNode(),
                          controller: fromDateController,
                          onTap: () {
                            _selectDateStart(context);
                          },
                          style: TextStyle(
                              fontFamily: "Sans",
                              fontSize: 12.0,
                              color: kPrimaryColorDarkBlue),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 0.0),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: kPrimaryColorDarkBlue, width: 1.0),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15.0)),
                            ),
                            focusedBorder: new OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: kPrimaryColorDarkBlue, width: 1.0),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15.0)),
                            ),
                            prefixIcon: Icon(
                              Icons.calendar_today_outlined,
                              color: kPrimaryColorDarkBlue,
                              size: 20.0,
                            ),
                            hintText: 'from'.tr + ' *',
                            hintStyle: TextStyle(
                                fontFamily: "Sans",
                                fontSize: 12.0,
                                color: kPrimaryColorDarkBlue),
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * 0.45,
                        height: 40.0,
                        child: TextField(
                          enableInteractiveSelection: false,
                          // will disable paste operation
                          focusNode: new AlwaysDisabledFocusNode(),
                          controller: toDateController,
                          onTap: () {
                            _selectDateEnd(context);
                          },
                          style: TextStyle(
                              fontFamily: "Sans",
                              fontSize: 12.0,
                              color: kPrimaryColorDarkBlue),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 10.0),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: kPrimaryColorDarkBlue, width: 1.0),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15.0)),
                            ),
                            focusedBorder: new OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: kPrimaryColorDarkBlue, width: 1.0),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15.0)),
                            ),
                            prefixIcon: Icon(
                              Icons.calendar_today_outlined,
                              color: kPrimaryColorDarkBlue,
                              size: 20.0,
                            ),
                            hintText: 'to'.tr + ' *',
                            hintStyle: TextStyle(
                                fontFamily: "Sans",
                                fontSize: 12.0,
                                color: kPrimaryColorDarkBlue),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: ListTile(
                    dense: false,
                    title: Text("8208824359",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Sans")),
                    isThreeLine: false,
                    subtitle:
                        Text("ID : 123456", style: TextStyle(fontSize: 13.0)),
                    leading: Image.asset("assets/logo.jpeg",
                        height: 50.0, width: 50.0),
                    trailing: Icon(Icons.arrow_forward_ios),
                    // onTap: () {
                    //   // launch(snapshot.data.news[index].url,enableJavaScript: true);
                    // },
                  ),
                ),
                Card(
                  elevation: 2.0,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: ListTile(
                    dense: false,
                    title: Text("9511761157",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Sans")),
                    isThreeLine: false,
                    subtitle:
                        Text("ID : 123456", style: TextStyle(fontSize: 13.0)),
                    leading: Image.asset("assets/logo.jpeg",
                        height: 50.0, width: 50.0),
                    trailing: Icon(Icons.arrow_forward_ios),
                    // onTap: () {
                    //   // launch(snapshot.data.news[index].url,enableJavaScript: true);
                    // },
                  ),
                ),
                Card(
                  elevation: 2.0,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: ListTile(
                    dense: false,
                    title: Text("9226227062",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Sans")),
                    isThreeLine: false,
                    subtitle:
                        Text("ID : 123456", style: TextStyle(fontSize: 13.0)),
                    leading: Image.asset("assets/logo.jpeg",
                        height: 50.0, width: 50.0),
                    trailing: Icon(Icons.arrow_forward_ios),
                    // onTap: () {
                    //   // launch(snapshot.data.news[index].url,enableJavaScript: true);
                    // },
                  ),
                ),
                Card(
                  elevation: 2.0,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: ListTile(
                    dense: false,
                    title: Text("9890678412",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Sans")),
                    isThreeLine: false,
                    subtitle:
                        Text("ID : 123456", style: TextStyle(fontSize: 13.0)),
                    leading: Image.asset("assets/logo.jpeg",
                        height: 50.0, width: 50.0),
                    trailing: Icon(Icons.arrow_forward_ios),
                    // onTap: () {
                    //   // launch(snapshot.data.news[index].url,enableJavaScript: true);
                    // },
                  ),
                ),
                Card(
                  elevation: 2.0,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: ListTile(
                    dense: false,
                    title: Text("9172508136",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Sans")),
                    isThreeLine: false,
                    subtitle:
                        Text("ID : 123456", style: TextStyle(fontSize: 13.0)),
                    leading: Image.asset("assets/logo.jpeg",
                        height: 50.0, width: 50.0),
                    trailing: Icon(Icons.arrow_forward_ios),
                    // onTap: () {
                    //   // launch(snapshot.data.news[index].url,enableJavaScript: true);
                    // },
                  ),
                ),
                Card(
                  elevation: 2.0,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: ListTile(
                    dense: false,
                    title: Text("9764195482",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Sans")),
                    isThreeLine: false,
                    subtitle:
                        Text("ID : 123456", style: TextStyle(fontSize: 13.0)),
                    leading: Image.asset("assets/logo.jpeg",
                        height: 50.0, width: 50.0),
                    trailing: Icon(Icons.arrow_forward_ios),
                    // onTap: () {
                    //   // launch(snapshot.data.news[index].url,enableJavaScript: true);
                    // },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
