import 'dart:io';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:get/get.dart';
import 'package:zap_flutter/Authentication/Services1.dart';
import 'package:zap_flutter/Authentication/background.dart';
import 'package:zap_flutter/Bargraph.dart';
import 'package:zap_flutter/ContactUs.dart';
import 'package:zap_flutter/Marketing%20Executive/ME_Business_setting.dart';
import 'package:zap_flutter/Payments.dart';
import 'package:zap_flutter/Profile.dart';
import 'Authentication/login.dart';
import 'Feedback.dart';
import 'ME_Support_FAQ.dart';
import 'Marketing Executive/Courses.dart';
import 'Marketing Executive/CustomerInfo.dart';
import 'Marketing Executive/Notifications.dart';
import 'Authentication/constants.dart';
import 'Wallet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  final List<BarChartModel> data = [
    BarChartModel(
      year: "Services\nSold".tr,
      financial: 500,
      color: charts.ColorUtil.fromDartColor(Color(0xFF3d68d9)),
    ),
    BarChartModel(
      year: "Payment\nCollected".tr,
      financial: 3000,
      color: charts.ColorUtil.fromDartColor(Color(0xFF3d68d9)),
    ),
    BarChartModel(
      year: "Payment\nSent".tr,
      financial: 3000,
      color: charts.ColorUtil.fromDartColor(Color(0xFF3d68d9)),
    ),
    BarChartModel(
      year: "Commission\nEarned".tr,
      financial: 1200,
      color: charts.ColorUtil.fromDartColor(Color(0xFF3d68d9)),
    ),
  ];

  String percentageModifier(double value) {
    final roundedValue = value.ceil().toInt().toString();
    return '₹ $roundedValue';
  }

  String targetModifier(double value) {
    final roundedValue = value.ceil().toInt().toString();
    return '$roundedValue';
  }

  final List locale = [
    {'name': 'ENGLISH', 'locale': Locale('en', 'US')},
    {'name': 'मराठी', 'locale': Locale('mr', 'IN')},
    {'name': 'हिंदी', 'locale': Locale('hi', 'IN')},
  ];

  updateLanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: kPrimaryColorDarkBlue),
            title: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text('appbar'.tr,
                  style: TextStyle(
                      fontSize: 18,
                      color: kPrimaryColorDarkBlue,
                      fontFamily: "SansMedium",
                      fontWeight: FontWeight.w600)),
            ),
            actions: [
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 45,
                      padding: EdgeInsets.only(top: 0),
                      decoration: BoxDecoration(
                          color: Colors.orange.shade700,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      )),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Notifications()));
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child:
                    VerticalDivider(thickness: 1, color: kPrimaryColorDarkBlue),
              ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 45,
                      padding: EdgeInsets.only(top: 0),
                      decoration: BoxDecoration(
                          color: Colors.orange.shade700,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Icon(
                        Icons.account_balance_wallet,
                        color: Colors.white,
                      )),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Wallet()));
                },
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  buildLanguageDialog(context);
                },
              )
            ],
          ),
          drawer: _buildDrawer(),
          body: Background(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Container(
                        child: BarChartGraph(
                          'overview'.tr,
                          data,
                        ),
                      ),
                    ),
                    Divider(
                      color: kPrimaryColorDarkBlue,
                    ),
                    SizedBox(height: 10),
                  ],
                ),
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
                  SizedBox(height: 10.0),
                  Container(
                    height: 90,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [kPrimaryColorDarkBlue, Colors.blue])),
                    child: CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage('assets/images/zaplogo.jpg'),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'name_profile'.tr,
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
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(children: [
                        Container(
                          height: 40.0,
                          width: 40.0,
                          child: Image.asset(
                            'assets/images/profile.png', fit: BoxFit.cover,
                            // color: kPrimaryColorDarkBlue,
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Text(
                          'profile'.tr,
                          style: TextStyle(
                              color: kPrimaryColorDarkBlue, fontSize: 16.0),
                        ),
                      ]),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profile()));
                    },
                  ),
                  _buildDivider(),
                  GestureDetector(
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(children: [
                        Container(
                          height: 40.0,
                          width: 40.0,
                          child: Image.asset(
                            'assets/images/bussiness.png', fit: BoxFit.cover,
                            // color: kPrimaryColorDarkBlue,
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Text(
                          'service'.tr,
                          style: TextStyle(
                              color: kPrimaryColorDarkBlue, fontSize: 16.0),
                        ),
                      ]),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Servicespage(0)));
                    },
                  ),
                  _buildDivider(),
                  GestureDetector(
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(children: [
                        Container(
                          height: 40.0,
                          width: 40.0,
                          child: Image.asset(
                            'assets/images/payment.png', fit: BoxFit.cover,
                            // color: kPrimaryColorDarkBlue,
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Text(
                          'courses'.tr,
                          style: TextStyle(
                              color: kPrimaryColorDarkBlue, fontSize: 16.0),
                        ),
                      ]),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Courses()));
                    },
                  ),
                  _buildDivider(),
                  GestureDetector(
                    child: Expanded(
                      child: Container(
                        color: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(children: [
                          Container(
                            height: 40.0,
                            width: 40.0,
                            child: Image.asset(
                              'assets/images/support.png', fit: BoxFit.cover,
                              // color: kPrimaryColorDarkBlue,
                            ),
                          ),
                          SizedBox(width: 20.0),
                          Text(
                            's_faq'.tr,
                            style: TextStyle(
                                color: kPrimaryColorDarkBlue, fontSize: 16.0),
                          ),
                        ]),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MESupport()));
                    },
                  ),
                  _buildDivider(),
                  GestureDetector(
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(children: [
                        Container(
                          height: 40.0,
                          width: 40.0,
                          child: Image.asset(
                            'assets/images/contact.png', fit: BoxFit.cover,
                            // color: kPrimaryColorDarkBlue,
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Text(
                          'contact'.tr,
                          style: TextStyle(
                              color: kPrimaryColorDarkBlue, fontSize: 16.0),
                        ),
                      ]),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MEContactUs()));
                    },
                  ),
                  _buildDivider(),
                  GestureDetector(
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(children: [
                        Container(
                          height: 40.0,
                          width: 40.0,
                          child: Image.asset(
                            'assets/images/feedback.png', fit: BoxFit.cover,
                            // color: kPrimaryColorDarkBlue,
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Text(
                          'feedback'.tr,
                          style: TextStyle(
                              color: kPrimaryColorDarkBlue, fontSize: 16.0),
                        ),
                      ]),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FeedbackShare()));
                    },
                  ),
                  _buildDivider(),
                  GestureDetector(
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(children: [
                        Container(
                          height: 40.0,
                          width: 40.0,
                          child: Image.asset(
                            'assets/images/about.png', fit: BoxFit.cover,
                            // color: kPrimaryColorDarkBlue,
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Text(
                          'about'.tr,
                          style: TextStyle(
                              color: kPrimaryColorDarkBlue, fontSize: 16.0),
                        ),
                      ]),
                    ),
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutUs(0)));
                    },
                  ),
                  _buildDivider(),
                  GestureDetector(
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(children: [
                        Container(
                          height: 40.0,
                          width: 40.0,
                          child: Image.asset(
                            'assets/images/logout.png', fit: BoxFit.cover,
                            // color: kPrimaryColorDarkBlue,
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Text(
                          'logout'.tr,
                          style: TextStyle(
                              color: kPrimaryColorDarkBlue, fontSize: 16.0),
                        ),
                      ]),
                    ),
                    onTap: () {
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

  buildLanguageDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (builder) {
          return AlertDialog(
            title: Text('Choose Your Language'),
            content: Container(
              width: double.maxFinite,
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        child: Text(locale[index]['name']),
                        onTap: () {
                          print(locale[index]['name']);
                          updateLanguage(locale[index]['locale']);
                        },
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.blue,
                    );
                  },
                  itemCount: locale.length),
            ),
          );
        });
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
    Widget continueButton = FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: kPrimaryColorDarkBlue,
      child: Text(
        "Yes, Logout!".tr,
        style: TextStyle(
            color: Colors.white,
            fontFamily: "Sans",
            fontWeight: FontWeight.w600),
      ),
      onPressed: () async {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
          (Route<dynamic> route) => false,
        );
      },
    );
    Widget cancelButton = FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: kPrimaryColorRed,
      child: Text(
        "Cancel".tr,
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
        "Are you sure you want to log out.".tr,
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
                  Text("Do you want to exit?".tr),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            print('yes selected'.tr);
                            exit(0);
                          },
                          child: Text("Yes".tr),
                          style: ElevatedButton.styleFrom(
                              primary: kPrimaryColorBlue),
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                          child: ElevatedButton(
                        onPressed: () {
                          print('no selected'.tr);
                          Navigator.of(context).pop();
                        },
                        child:
                            Text("No".tr, style: TextStyle(color: Colors.white)),
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

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({Key key}) : super(key: key);

  @override
  _BottomnavigationState createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  final List locale = [
    {'name': 'ENGLISH', 'locale': Locale('en', 'US')},
    {'name': 'ಕನ್ನಡ', 'locale': Locale('kn', 'IN')},
    {'name': 'हिंदी', 'locale': Locale('hi', 'IN')},
  ];
  PageController _pageController = PageController();

  int _page = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: (index) {
          setState(() => _page = index);
        },
        children: <Widget>[
          HomeScreen(),
          PaymentTab(0),
          BusinessSetting(),
          CustomerInfo(),
        ],
      ),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Color(0xFF6e95fc),
        height: 60.0,
        style: TabStyle.react,
        items: [
          TabItem(icon: Icons.home, title: 'home_bottom'.tr),
          TabItem(icon: Icons.payment, title: 'payment_bottom'.tr),
          TabItem(icon: Icons.settings, title: 'business_bottom'.tr),
          TabItem(icon: Icons.info, title: 'cust_info_bottom'.tr),
        ],
        initialActiveIndex: 0,
        onTap: (index) {
          setState(() {
            _page = index;
            _pageController.jumpToPage(index);
          });
        },
      ),
    );
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

class BarChartModel {
  String month;
  String year;
  int financial;
  final charts.Color color;

  BarChartModel({
    this.month,
    this.year,
    this.financial,
    this.color,
  });
}

class ChartData {
  ChartData(this.x, this.y, [this.color]);

  final String x;
  final double y;
  final Color color;
}
