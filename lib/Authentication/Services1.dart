import 'package:flutter/material.dart';
import 'package:zap_flutter/Authentication/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zap_flutter/Authentication/background.dart';
import 'package:zap_flutter/Authentication/constants.dart';

class Servicespage extends StatelessWidget {
  int tabSelected;

  Servicespage(this.tabSelected);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Services",
          style: TextStyle(fontFamily: "Sans"),
        ),
        backgroundColor: kPrimaryColorBlue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
      ),
      body: DefaultTabController(
        initialIndex: tabSelected,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            // elevation: 0,
            toolbarHeight: 50.0,
            backgroundColor: kPrimaryColorBlue,
            bottom: TabBar(
              tabs: [
                Tab(text: 'DM'),
                Tab(text: 'Web Dev'),
                Tab(text: ' App Dev'),
                Tab(text: ' Soft Dev'),
              ],
              labelStyle: TextStyle(fontFamily: "Sans"),
            ),
          ),
          body: TabBarView(
            children: [
              Services1(),
              Services2(),
              Services3(),
              Services4(),
            ],
          ),
        ),
      ),
    );
  }
}

class Services1 extends StatefulWidget {
  const Services1({Key key}) : super(key: key);

  @override
  _Services1 createState() => _Services1();
}

class _Services1 extends State<Services1> {
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  // Initial Selected Value

  String dropdownvalue1 = 'Search Engine Oprimization';
  String dropdownvalue2 = 'Google';
  String dropdownvalue3 = 'Instagram';

  // List of items in our dropdown menu
  var items1 = [
    'Search Engine Oprimization',
    'Social Media Optimization',
    'Email Marketing',
    'Whatsaap Marketing',
  ];

  var items2 = [
    'Google',
    'Instagram',
    'Facebook',
  ];

  var items3 = [
    'Instagram',
    'Facebook',
    'Google',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.orange,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      "Digital Marketing",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
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
                      "First Name/पहला नाम*",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff3d72d9)),
                    ),
                    subtitle: TextField(
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff3d68d9),
                          fontFamily: "Sans"),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                        LengthLimitingTextInputFormatter(30)
                      ],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
                        FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                        LengthLimitingTextInputFormatter(30)
                      ],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
                      "Mobile Number/मोबाइल नंबर*",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF3d68d9)),
                    ),
                    subtitle: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF3d68d9),
                          fontFamily: "Sans"),
                      inputFormatters: [LengthLimitingTextInputFormatter(10)],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
                      inputFormatters: [LengthLimitingTextInputFormatter(30)],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
                      inputFormatters: [LengthLimitingTextInputFormatter(30)],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
                        FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                        LengthLimitingTextInputFormatter(30)
                      ],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
                        FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                        LengthLimitingTextInputFormatter(30)
                      ],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF3d68d9),
                          fontFamily: "Sans"),
                      inputFormatters: [LengthLimitingTextInputFormatter(6)],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
              SizedBox(
                height: 5.0,
              ),
              Container(
                // color: Colors.white,
                height: 50.0,
                width: 350,
                margin: EdgeInsets.only(top: 10, left: 30.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Color(0xff3d68d9),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  children: [
                    DropdownButton(
                      // Initial Value
                      value: dropdownvalue1,
                      // Down Arrow Icon
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        color: Color(0xff3d68d9),
                      ),
                      style: TextStyle(color: Color(0xff3d68d9), fontSize: 17),
                      // Array list of items
                      items: items1.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownvalue1 = newValue;
                        });
                      },
                    ),
                  ],
                ),
              ),
              if (dropdownvalue1.contains('Search'))
                Container(
                  height: 50.0,
                  width: 350,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 10, left: 30.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Color(0xff3d68d9),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: DropdownButton(
                    // Initial Value
                    value: dropdownvalue2,
                    // Down Arrow Icon
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xff3d68d9),
                    ),
                    style: TextStyle(color: Color(0xff3d68d9), fontSize: 17),
                    // Array list of items
                    items: items2.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownvalue2 = newValue;
                      });
                    },
                  ),
                ),
              if (dropdownvalue1.contains('Social Media Optimization'))
                Container(
                  height: 50.0,
                  width: 350,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 10, left: 30.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Color(0xff3d68d9),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: DropdownButton(
                    // Initial Value
                    value: dropdownvalue3,
                    // Down Arrow Icon
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xff3d68d9),
                    ),
                    style: TextStyle(color: Color(0xff3d68d9), fontSize: 17),
                    // Array list of items
                    items: items3.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownvalue3 = newValue;
                      });
                    },
                  ),
                ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    color: Colors.orange,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, bottom: 8.0, right: 40, left: 40),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Services2 extends StatefulWidget {
  const Services2({Key key}) : super(key: key);

  @override
  _Services2 createState() => _Services2();
}

class _Services2 extends State<Services2> {
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  // Initial Selected Value

  String dropdownvalue2 = 'Ecommerce websites';

  // List of items in our dropdown menu
  var items2 = [
    'Ecommerce websites',
    'Personal websites',
    'Portfolio websites',
    'Small business websites',
    'Blog websites',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.orange,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      "Website development",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
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
                      "First Name/पहला नाम*",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff3d72d9)),
                    ),
                    subtitle: TextField(
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff3d68d9),
                          fontFamily: "Sans"),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                        LengthLimitingTextInputFormatter(30)
                      ],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
                        FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                        LengthLimitingTextInputFormatter(30)
                      ],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
                      "Mobile Number/मोबाइल नंबर*",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF3d68d9)),
                    ),
                    subtitle: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF3d68d9),
                          fontFamily: "Sans"),
                      inputFormatters: [LengthLimitingTextInputFormatter(10)],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
                      inputFormatters: [LengthLimitingTextInputFormatter(30)],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
                      inputFormatters: [LengthLimitingTextInputFormatter(30)],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
                        FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                        LengthLimitingTextInputFormatter(30)
                      ],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
                        FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                        LengthLimitingTextInputFormatter(30)
                      ],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF3d68d9),
                          fontFamily: "Sans"),
                      inputFormatters: [LengthLimitingTextInputFormatter(6)],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
              SizedBox(
                height: 5.0,
              ),
              Container(
                // color: Colors.white,
                height: 50.0,
                width: 350,
                margin: EdgeInsets.only(top: 10, left: 30.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Color(0xff3d68d9),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  children: [
                    DropdownButton(
                      // Initial Value
                      value: dropdownvalue2,

                      // Down Arrow Icon
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        color: Color(0xff3d68d9),
                      ),
                      style: TextStyle(color: Color(0xff3d68d9), fontSize: 17),
                      // Array list of items
                      items: items2.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownvalue2 = newValue;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    color: Colors.orange,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, bottom: 8.0, right: 40, left: 40),
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
              ),
            ],
          ))),
    );
  }
}

class Services3 extends StatefulWidget {
  const Services3({Key key}) : super(key: key);

  @override
  _Services3 createState() => _Services3();
}

class _Services3 extends State<Services3> {
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  // Initial Selected Value
  String dropdownvalue3 = 'Hybrid Mobile Apps';

  // List of items in our dropdown menu
  var items3 = [
    'Native Mobile Apps',
    'Hybrid Mobile Apps',
    'Android/ios',
    'Web Apps',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.orange,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      "Application Development",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
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
                      "First Name/पहला नाम*",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff3d72d9)),
                    ),
                    subtitle: TextField(
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff3d68d9),
                          fontFamily: "Sans"),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                        LengthLimitingTextInputFormatter(30)
                      ],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
                        FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                        LengthLimitingTextInputFormatter(30)
                      ],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
                      "Mobile Number/मोबाइल नंबर*",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF3d68d9)),
                    ),
                    subtitle: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF3d68d9),
                          fontFamily: "Sans"),
                      inputFormatters: [LengthLimitingTextInputFormatter(10)],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
                      inputFormatters: [LengthLimitingTextInputFormatter(30)],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
                      inputFormatters: [LengthLimitingTextInputFormatter(30)],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
                        FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                        LengthLimitingTextInputFormatter(30)
                      ],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
                        FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                        LengthLimitingTextInputFormatter(30)
                      ],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF3d68d9),
                          fontFamily: "Sans"),
                      inputFormatters: [LengthLimitingTextInputFormatter(6)],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
              SizedBox(
                height: 5.0,
              ),
              Container(
                // color: Colors.white,
                height: 50.0,
                width: 350,
                margin: EdgeInsets.only(top: 10, left: 30.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Color(0xff3d68d9),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  children: [
                    DropdownButton(
                      // Initial Value
                      value: dropdownvalue3,

                      // Down Arrow Icon
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        color: Color(0xff3d68d9),
                      ),
                      style: TextStyle(color: Color(0xff3d68d9), fontSize: 17),
                      // Array list of items
                      items: items3.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownvalue3 = newValue;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    color: Colors.orange,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, right: 40, left: 40),
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
              ),
            ],
          ))),
    );
  }
}

class Services4 extends StatefulWidget {
  const Services4({Key key}) : super(key: key);

  @override
  _Services4 createState() => _Services4();
}

class _Services4 extends State<Services4> {
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  // Initial Selected Value

  String dropdownvalue4 = 'Application software';

  // List of items in our dropdown menu
  var items4 = [
    'Application software',
    'System software',
    'Driver software',
    'Middleware',
    'Programming software',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.orange,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      "Software development",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
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
                      "First Name/पहला नाम*",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff3d72d9)),
                    ),
                    subtitle: TextField(
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff3d68d9),
                          fontFamily: "Sans"),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                        LengthLimitingTextInputFormatter(30)
                      ],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
                        FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                        LengthLimitingTextInputFormatter(30)
                      ],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
                      "Mobile Number/मोबाइल नंबर*",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF3d68d9)),
                    ),
                    subtitle: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF3d68d9),
                          fontFamily: "Sans"),
                      inputFormatters: [LengthLimitingTextInputFormatter(10)],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
                      inputFormatters: [LengthLimitingTextInputFormatter(30)],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
                      inputFormatters: [LengthLimitingTextInputFormatter(30)],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
                        FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                        LengthLimitingTextInputFormatter(30)
                      ],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
                        FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                        LengthLimitingTextInputFormatter(30)
                      ],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF3d68d9),
                          fontFamily: "Sans"),
                      inputFormatters: [LengthLimitingTextInputFormatter(6)],
                      // controller: name,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d68d9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
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
              SizedBox(
                height: 5.0,
              ),
              Container(
                // color: Colors.white,
                height: 50.0,
                width: 350,
                margin: EdgeInsets.only(top: 5, left: 30.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Color(0xff3d68d9),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  children: [
                    DropdownButton(
                      // Initial Value
                      value: dropdownvalue4,

                      // Down Arrow Icon
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        color: Color(0xff3d68d9),
                      ),
                      style: TextStyle(color: Color(0xff3d68d9), fontSize: 17),
                      // Array list of items
                      items: items4.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownvalue4 = newValue;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    color: Colors.orange,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, bottom: 8.0, right: 40, left: 40),
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
              ),
            ],
          ))),
    );
  }
}
