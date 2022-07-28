import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zap_flutter/Authentication/background.dart';
import 'package:get/get.dart';
import 'Authentication/constants.dart';

class CommissionEarned extends StatefulWidget {
  const CommissionEarned({Key key}) : super(key: key);

  @override
  _CommissionEarnedState createState() => _CommissionEarnedState();
}


class _CommissionEarnedState extends State<CommissionEarned> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
                textCapitalization: TextCapitalization.characters,
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
                    borderSide:
                        BorderSide(color: kPrimaryColorDarkBlue, width: 1.0),
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  ),
                  focusedBorder: new OutlineInputBorder(
                    borderSide:
                        BorderSide(color: kPrimaryColorDarkBlue, width: 1.0),
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {});
                    },
                    child: Icon(
                      CupertinoIcons.search,
                      color: kPrimaryColorDarkBlue,
                      size: 25.0,
                    ),
                  ),
                  hintText: 'search'.tr,
                  hintStyle: TextStyle(
                      fontFamily: "Sans",
                      fontSize: 15.0,
                      color: kPrimaryColorDarkBlue),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.00, 0.00, 10.00, 0),
              child: Container(
                width: size.width * 0.7,
                child: Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 2,
                    child: Container(
                      height: 60,
                      width: size.width * 0.75,
                      padding: EdgeInsets.only(
                          top: 10.0, bottom: 5.0, left: 5.0, right: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            width: size.width * 0.4,
                            child: Text(
                              'total_amount'.tr,
                              style: TextStyle(
                                  color: kPrimaryColorDarkBlue,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Sans"),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: size.width * 0.4,
                            child: Text(
                              "₹ 12,456",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                  fontFamily: "Sans"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: size.width,
              padding: EdgeInsets.all(5),
              child: Card(
                elevation: 1.0,
                child: ListTile(
                  dense: true,
                  title: Text('name'.tr,
                      style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: "Sans",
                          fontWeight: FontWeight.bold)),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('date'.tr + ':', style: TextStyle(fontSize: 11.5)),
                      Text('desc'.tr + ':', style: TextStyle(fontSize: 11.5)),
                      Text('transaction'.tr + ':',
                          style: TextStyle(fontSize: 11.5)),
                      Text('pay_mode'.tr + ':',
                          style: TextStyle(fontSize: 11.5)),
                    ],
                  ),
                  isThreeLine: false,
                  trailing: Wrap(
                    spacing: 10, // space between two icons
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: <Widget>[
                      Text("₹ 240",
                          style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: "Sans",
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  // onTap: () {
                  //   Navigator.of(context).push(
                  //     PageRouteBuilder(
                  //       opaque: false,
                  //       pageBuilder: (_, animation, __) {
                  //         return FadeTransition(
                  //           opacity: animation,
                  //           child: ViewBill("","",snapshot.data[index].billUrl,"","",""),
                  //         );
                  //       },
                  //     ),
                  //   );
                  // },
                ),
              ),
            ),
            Container(
              width: size.width,
              padding: EdgeInsets.all(5),
              child: Card(
                elevation: 1.0,
                child: Center(
                  child: ListTile(
                    dense: true,
                    title: Text('name'.tr,
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: "Sans",
                            fontWeight: FontWeight.bold)),
                    subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('date'.tr + ':', style: TextStyle(fontSize: 11.5)),
                        Text('desc'.tr + ':', style: TextStyle(fontSize: 11.5)),
                        Text('transaction'.tr + ':',
                            style: TextStyle(fontSize: 11.5)),
                        Text('pay_mode'.tr + ':',
                            style: TextStyle(fontSize: 11.5)),
                      ],
                    ),
                    isThreeLine: false,
                    trailing: Wrap(
                      spacing: 10, // space between two icons
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: <Widget>[
                        Text("₹ 240",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: "Sans",
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    // onTap: () {
                    //   Navigator.of(context).push(
                    //     PageRouteBuilder(
                    //       opaque: false,
                    //       pageBuilder: (_, animation, __) {
                    //         return FadeTransition(
                    //           opacity: animation,
                    //           child: ViewBill("","",snapshot.data[index].billUrl,"","",""),
                    //         );
                    //       },
                    //     ),
                    //   );
                    // },
                  ),
                ),
              ),
            ),
            Container(
              width: size.width,
              padding: EdgeInsets.all(5),
              child: Card(
                elevation: 1.0,
                child: Center(
                  child: ListTile(
                    dense: true,
                    title: Text('name'.tr,
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: "Sans",
                            fontWeight: FontWeight.bold)),
                    subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('date'.tr + ':', style: TextStyle(fontSize: 11.5)),
                        Text('desc'.tr + ':', style: TextStyle(fontSize: 11.5)),
                        Text('transaction'.tr + ':',
                            style: TextStyle(fontSize: 11.5)),
                        Text('pay_mode'.tr + ':',
                            style: TextStyle(fontSize: 11.5)),
                      ],
                    ),
                    isThreeLine: false,
                    trailing: Wrap(
                      spacing: 10, // space between two icons
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: <Widget>[
                        Text("₹ 240",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: "Sans",
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    // onTap: () {
                    //   Navigator.of(context).push(
                    //     PageRouteBuilder(
                    //       opaque: false,
                    //       pageBuilder: (_, animation, __) {
                    //         return FadeTransition(
                    //           opacity: animation,
                    //           child: ViewBill("","",snapshot.data[index].billUrl,"","",""),
                    //         );
                    //       },
                    //     ),
                    //   );
                    // },
                  ),
                ),
              ),
            ),
            Container(
              width: size.width,
              padding: EdgeInsets.all(5),
              child: Card(
                elevation: 1.0,
                child: Center(
                  child: ListTile(
                    dense: true,
                    title: Text('name'.tr,
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: "Sans",
                            fontWeight: FontWeight.bold)),
                    subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('date'.tr + ':', style: TextStyle(fontSize: 11.5)),
                        Text('desc'.tr + ':', style: TextStyle(fontSize: 11.5)),
                        Text('transaction'.tr + ':',
                            style: TextStyle(fontSize: 11.5)),
                        Text('pay_mode'.tr + ':',
                            style: TextStyle(fontSize: 11.5)),
                      ],
                    ),
                    isThreeLine: false,
                    trailing: Wrap(
                      spacing: 10, // space between two icons
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: <Widget>[
                        Text("₹ 240",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: "Sans",
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    // onTap: () {
                    //   Navigator.of(context).push(
                    //     PageRouteBuilder(
                    //       opaque: false,
                    //       pageBuilder: (_, animation, __) {
                    //         return FadeTransition(
                    //           opacity: animation,
                    //           child: ViewBill("","",snapshot.data[index].billUrl,"","",""),
                    //         );
                    //       },
                    //     ),
                    //   );
                    // },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
