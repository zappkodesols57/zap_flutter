import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:zap_flutter/Authentication/background.dart';

import '../constants.dart';
import 'Form to register.dart';
import 'package:get/get.dart';

class Courses extends StatefulWidget {
  const Courses({Key key}) : super(key: key);

  @override
  _Courses createState() => _Courses();
}

class _Courses extends State<Courses> {
  List<dynamic> Courses = [];
  List<dynamic> Submaster = [];
  List<dynamic> SubCourses = [];

  String CoursesId;
  String SubcoursesId;

  @override
  void initState() {
    super.initState();

    this.Courses.add({"id": "1", "name": "Digital Marketing"});
    this.Courses.add({"id": "2", "name": "Word Press Development"});
    this.Courses.add({"id": "3", "name": "Full Stack Development"});
    this.Courses.add({"id": "4", "name": "Software Testing"});
    this.Courses.add({"id": "5", "name": "Search Engine Optimization"});
    this.Courses.add({"id": "6", "name": "Social Media Optimization"});
    this.Courses.add({"id": "7", "name": "Data Analytics"});
    this.Courses.add({"id": "8", "name": "Email Marketing"});
    this.Courses.add({"id": "9", "name": "Whatsaap Marketing"});

    this.Submaster = [
      {"ID": 1, "Name": "Instagram", "ParentId": 5},
      {"ID": 2, "Name": "Facebook", "ParentId": 5},
      {"ID": 3, "Name": "Google", "ParentId": 5},
      {"ID": 7, "Name": "Instagram", "ParentId": 6},
      {"ID": 8, "Name": "Facebook", "ParentId": 6},
      {"ID": 9, "Name": "Google", "ParentId": 6},
    ];
  }

  String dropdownvalue1 = 'Digital Marketing';

  // List of items in our dropdown menu
  var items1 = [
    'Digital Marketing',
    'Word Press Development',
    'Full Stack Development',
    'Software Testing',
    'Search Engine Optimization',
    'Social Media Optimization',
    'Data Analytics',
    'Email Marketing',
    'Whatsaap Marketing',
  ];

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'courses'.tr,
          style: TextStyle(fontFamily: "Sans"),
        ),
        backgroundColor: Color(0xFF6e95fc),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
      ),

      body: Background(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child:
              // Container(
              //
              //   height: 50.0,
              //   margin: EdgeInsets.only(top:20),
              //   decoration: BoxDecoration(
              //       color: Colors.white,
              //       border: Border.all(
              //         color: Color(0xff3d68d9),
              //       ),
              //       borderRadius: BorderRadius.all(Radius.circular(20))
              //   ),
              //   child:
              Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width / 1.1,
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Color(0xff3d68d9),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: DropdownButton(
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
                        'first_name'.tr + ' *'.tr,
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
                        'last_name'.tr + ' *',
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
                        color: Colors.white),
                    // padding: EdgeInsets.only(left: 10),
                    child: ListTile(
                      title: Text(
                        'email'.tr + ' *',
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
                        'area'.tr + ' *',
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
                        'city'.tr + ' *',
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
                        'state'.tr + ' *',
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
                        'pin'.tr + ' *',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF3d68d9)),
                      ),
                      subtitle: TextField(
                        keyboardType: TextInputType.phone,
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
                        'education'.tr + ' *',
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
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    color: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, bottom: 8.0, right: 30, left: 30),
                      child: Text(
                        'submit'.tr,
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
        ),
      ),
      // ),
    ));
  }
}
