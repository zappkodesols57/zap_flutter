import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zap_flutter/Authentication/Services1.dart';
import 'package:zap_flutter/Authentication/background.dart';
import 'package:zap_flutter/Authentication/constants.dart';
import 'package:get/get.dart';

import 'Courses.dart';

class AddCustomer extends StatelessWidget {
  int tabSelected;

  AddCustomer(this.tabSelected);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Add Customer",
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
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            // elevation: 0,
            toolbarHeight: 50.0,
            backgroundColor: kPrimaryColorBlue,
            bottom: TabBar(
              tabs: [
                Tab(text: 'service'.tr),
                Tab(text: 'courses'.tr),
              ],
              labelStyle: TextStyle(fontFamily: "Sans"),
            ),
          ),
          body: TabBarView(
            children: [
              Servicespage(0),
              Courses(),
            ],
          ),
        ),
      ),
    );
  }
}

class AddNewServices extends StatefulWidget {
  @override
  _AddNewServicesState createState() => _AddNewServicesState();
}

class _AddNewServicesState extends State<AddNewServices> {
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  String dropdownvalue = 'Web Development';
  var items = [
    'Web Development',
    'Digital Marketing',
    'Block Chain',
    'Graphics Designing',
    'Python Development',
    'App Development',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   // backgroundColor: kPrimaryColorDarkBlue,
        //   title: Text(widget.Title,style: TextStyle(fontFamily: "Sans"),),
        //   leading: IconButton(
        //       onPressed: () {
        //         Navigator.pop(context);
        //       },
        //       icon: Icon(Icons.arrow_back_ios)),
        // ),
        body: Background(
      height: MediaQuery.of(context).size.height / 1.13,
      child: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.center,
              child: Column(children: <Widget>[
                Container(
                  width: 450.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
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
                              'first_name'.tr + ' *',
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
                                LengthLimitingTextInputFormatter(30)
                              ],
                              // controller: name,
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(12),
                                // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0)),
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
                                LengthLimitingTextInputFormatter(30)
                              ],
                              // controller: name,
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(12),
                                // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0)),
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
                              'mob_no'.tr + ' *',
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
                                LengthLimitingTextInputFormatter(30)
                              ],
                              // controller: name,
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(12),
                                // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0)),
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
                              'alt_mob_no'.tr,
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
                                LengthLimitingTextInputFormatter(30)
                              ],
                              // controller: name,
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(12),
                                // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0)),
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
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(30)
                              ],
                              // controller: name,
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(12),
                                // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0)),
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
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Container(
                          // color: Colors.white,
                          height: 47.0,
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Color(0xff3d68d9),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: ListTile(
                            horizontalTitleGap: 0.2,
                            title: DropdownButton(
                              isExpanded: true,
                              // Initial Value
                              value: dropdownvalue,

                              // Down Arrow Icon
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Color(0xFF3d68d9),
                              ),

                              // Array list of items
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(
                                    items,
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Color(0xFF3d68d9),
                                        fontFamily: "Sans"),
                                  ),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value
                              onChanged: (String newValue) {
                                setState(() {
                                  dropdownvalue = newValue;
                                });
                              },
                            ),
                            leading: Icon(
                              Icons.list,
                              color: Color(0xFF3d68d9),
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
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(30)
                              ],
                              // controller: name,
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(12),
                                // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0)),
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
                                LengthLimitingTextInputFormatter(30)
                              ],
                              // controller: name,
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(12),
                                // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0)),
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
                                LengthLimitingTextInputFormatter(30)
                              ],
                              // controller: name,
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(12),
                                // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0)),
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
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF3d68d9),
                                  fontFamily: "Sans"),
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(30)
                              ],
                              // controller: name,
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(12),
                                // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0)),
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

                      // Padding(
                      //   padding: EdgeInsets.all(8.0),
                      //   child: TextFormField(
                      //     decoration: InputDecoration(
                      //       labelText: 'Adhar Card No.',
                      //       icon: Icon(Icons.perm_identity),
                      //     ),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.all(8.0),
                      //   child: TextFormField(
                      //     decoration: InputDecoration(
                      //       labelText: 'Pan Number',
                      //       icon: Icon(Icons.credit_card),
                      //     ),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.all(8.0),
                      //   child: TextFormField(
                      //     decoration: InputDecoration(
                      //       labelText: 'Upload Photo',
                      //       icon: Icon(Icons.photo),
                      //     ),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.all(8.0),
                      //   child: TextFormField(
                      //     decoration: InputDecoration(
                      //       labelText: 'Upload Adhar Card',
                      //       icon: Icon(Icons.pin_drop_outlined),
                      //     ),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.all(8.0),
                      //   child: TextFormField(
                      //     decoration: InputDecoration(
                      //       labelText: 'Upload Electricity Bill',
                      //       icon: Icon(Icons.pin_drop_outlined),
                      //     ),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.all(8.0),
                      //   child: TextFormField(
                      //     decoration: InputDecoration(
                      //       labelText: 'Upload License',
                      //       icon: Icon(Icons.pin_drop_outlined),
                      //     ),
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          color: kPrimaryColorDarkBlue,
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
              ]))),
    ));
  }
}

class AddNewCourses extends StatefulWidget {
  @override
  _AddNewCoursesState createState() => _AddNewCoursesState();
}

class _AddNewCoursesState extends State<AddNewCourses> {
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  String dropdownvalue = 'Web Development';
  var items = [
    'Web Development',
    'Digital Marketing',
    'Block Chain',
    'Graphics Designing',
    'Python Development',
    'App Development',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: kPrimaryColorDarkBlue,
        //   title: Text(widget.Title,style: TextStyle(fontFamily: "Sans"),),
        //   leading: IconButton(
        //       onPressed: () {
        //         Navigator.pop(context);
        //       },
        //       icon: Icon(Icons.arrow_back_ios)),
        // ),
        body: Background(
      height: MediaQuery.of(context).size.height / 1.13,
      child: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.center,
              child: Column(children: <Widget>[
                Container(
                  width: 450.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
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
                              'first_name'.tr + ' *',
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
                                LengthLimitingTextInputFormatter(30)
                              ],
                              // controller: name,
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(12),
                                // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0)),
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
                                LengthLimitingTextInputFormatter(30)
                              ],
                              // controller: name,
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(12),
                                // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0)),
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
                              'mob_no'.tr + ' *',
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
                                LengthLimitingTextInputFormatter(30)
                              ],
                              // controller: name,
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(12),
                                // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0)),
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
                              'alt_mob_no'.tr,
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
                                LengthLimitingTextInputFormatter(30)
                              ],
                              // controller: name,
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(12),
                                // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0)),
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
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(30)
                              ],
                              // controller: name,
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(12),
                                // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0)),
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
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Container(
                          // color: Colors.white,
                          height: 47.0,
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Color(0xff3d68d9),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: ListTile(
                            horizontalTitleGap: 0.2,
                            title: DropdownButton(
                              isExpanded: true,
                              // Initial Value
                              value: dropdownvalue,

                              // Down Arrow Icon
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Color(0xFF3d68d9),
                              ),

                              // Array list of items
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(
                                    items,
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Color(0xFF3d68d9),
                                        fontFamily: "Sans"),
                                  ),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value
                              onChanged: (String newValue) {
                                setState(() {
                                  dropdownvalue = newValue;
                                });
                              },
                            ),
                            leading: Icon(
                              Icons.list,
                              color: Color(0xFF3d68d9),
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
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(30)
                              ],
                              // controller: name,
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(12),
                                // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0)),
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
                                LengthLimitingTextInputFormatter(30)
                              ],
                              // controller: name,
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(12),
                                // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0)),
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
                                LengthLimitingTextInputFormatter(30)
                              ],
                              // controller: name,
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(12),
                                // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0)),
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
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF3d68d9),
                                  fontFamily: "Sans"),
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(30)
                              ],
                              // controller: name,
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(12),
                                // prefixIcon: Icon(Icons.person,size: 20.0,color: kPrimaryColorDarkBlue,),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3d68d9)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0)),
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

                      // Padding(
                      //   padding: EdgeInsets.all(8.0),
                      //   child: TextFormField(
                      //     decoration: InputDecoration(
                      //       labelText: 'Adhar Card No.',
                      //       icon: Icon(Icons.perm_identity),
                      //     ),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.all(8.0),
                      //   child: TextFormField(
                      //     decoration: InputDecoration(
                      //       labelText: 'Pan Number',
                      //       icon: Icon(Icons.credit_card),
                      //     ),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.all(8.0),
                      //   child: TextFormField(
                      //     decoration: InputDecoration(
                      //       labelText: 'Upload Photo',
                      //       icon: Icon(Icons.photo),
                      //     ),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.all(8.0),
                      //   child: TextFormField(
                      //     decoration: InputDecoration(
                      //       labelText: 'Upload Adhar Card',
                      //       icon: Icon(Icons.pin_drop_outlined),
                      //     ),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.all(8.0),
                      //   child: TextFormField(
                      //     decoration: InputDecoration(
                      //       labelText: 'Upload Electricity Bill',
                      //       icon: Icon(Icons.pin_drop_outlined),
                      //     ),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.all(8.0),
                      //   child: TextFormField(
                      //     decoration: InputDecoration(
                      //       labelText: 'Upload License',
                      //       icon: Icon(Icons.pin_drop_outlined),
                      //     ),
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          color: kPrimaryColorDarkBlue,
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
              ]))),
    ));
  }
}
