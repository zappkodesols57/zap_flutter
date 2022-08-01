import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'Authentication/constants.dart';
import 'Change Password.dart';
import 'package:get/get.dart';
import 'Authentication/constants.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<Profile> {
  bool _isButtonDisabled = true;
  bool _isButtonDisabledColor = true;
  String dropdownValue = 'Select';
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final ScrollController _controller = ScrollController();

  String number, token;
  int id;

  String state, city;

  @override
  void initState() {
    _isButtonDisabled = true;
    _isButtonDisabledColor = true;

    super.initState();
    // setDetails();
  }

  //
  // Future<void> setDetails() async {
  //   SchedulerBinding.instance
  //       .addPostFrameCallback((_) => _showLoaderDialog(context));
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   number = prefs.getString("mobile");
  //   id = prefs.getInt("userID");
  //   token = prefs.getString("token");
  //   print('$number $id  $token');
  //
  //   final param = {
  //     "mobile_no": number,
  //   };
  //
  //   final response = await http.post(
  //     Uri.parse("http://157.230.228.250/get-customer-details-api/"),
  //     body: param,
  //     headers: {HttpHeaders.authorizationHeader: "Token $token"},
  //   );
  //
  //   print(response.statusCode);
  //   GetPersonalInfo info;
  //   var responseJson = json.decode(response.body);
  //   print(response.body);
  //   info = new GetPersonalInfo.fromJson(jsonDecode(response.body));
  //   print(responseJson);
  //
  //   if (response.statusCode == 200) {
  //     if (info.status == "success") {
  //       print("Profile fetch Successful");
  //       print(info.profileData.email);
  //       fnameController.text = info.profileData.firstName.isEmpty? "" :info.profileData.firstName;
  //       lnameController.text = info.profileData.lastName.isEmpty ? "" :info.profileData.lastName;
  //       // nameController.text = '${fnameController.text} ${lnameController.text}';
  //       emailController.text = info.profileData.email.isEmpty ? "" : info.profileData.email;
  //       dobController.text = info.profileData.cDob == null ? "" : DateFormat('dd-MM-yyyy').format(DateTime.parse(info.profileData.cDob));
  //       mobController.text = info.profileData.mobileNo.isEmpty ? "" : info.profileData.mobileNo;
  //       genController.text = (info.profileData.cGender == null) ? "" : info.profileData.cGender.capitalize();
  //       areaController.text = info.profileData.cArea.isEmpty ? "" : info.profileData.cArea;
  //       pinController.text = info.profileData.cPincode.isEmpty ? "" : info.profileData.cPincode;
  //       cityController.text = info.profileData.cCity.isEmpty ? "" : info.profileData.cCity;
  //       stateController.text = info.profileData.cState.isEmpty ? "" : info.profileData.cState;
  //       add1Controller.text = info.profileData.cAddress1.isEmpty ? "" : info.profileData.cAddress1;
  //       add2Controller.text = info.profileData.cAddress2.isEmpty ? "" : info.profileData.cAddress2;
  //       profileUid.text = info.profileData.cUniqueId.isEmpty ? "" : info.profileData.cUniqueId;
  //
  //       if(info.profileData.cGender == null){
  //         dropdownValue="Select Gender";
  //       }else{
  //         setState(() {
  //           dropdownValue=info.profileData.cGender.capitalize();
  //         });
  //       }
  //
  //
  //
  //
  //       setData(id, token);
  //       Navigator.of(context, rootNavigator: true).pop();
  //     } else
  //       print(info.status);
  //   } else
  //     print(info.status);
  // }

  TextEditingController profile = new TextEditingController();
  TextEditingController profileUid = new TextEditingController();

  // Future<void> setData(int id, String token) async {
  //   final param = {
  //     "user_id": id.toString(),
  //   };
  //
  //   final response = await http.post(
  //     Uri.parse("http://157.230.228.250/get-customer-profile-image-api/"),
  //     body: param,
  //     headers: {HttpHeaders.authorizationHeader: "Token $token"},
  //   );
  //
  //   GetProfileImage profileImage;
  //   var responseJson = json.decode(response.body);
  //   print(response.body);
  //   profileImage = new GetProfileImage.fromJson(jsonDecode(response.body));
  //   print(responseJson);
  //
  //   if (response.statusCode == 200) {
  //     if (profileImage.status == "success") {
  //       print("Profile fetch Successful");
  //       print(profileImage.data.firstName);
  //       profile.text = profileImage.data.profileImage;
  //
  //       setState(() {});
  //     } else
  //       print(profileImage.status);
  //   } else
  //     print(profileImage.status);
  // }

  @override
  void dispose() {
    super.dispose();
    fnameController.dispose();
    lnameController.dispose();
    // nameController.dispose();
    mobController.dispose();
    emailController.dispose();
    dobController.dispose();
    genController.dispose();
    areaController.dispose();
    pinController.dispose();
    stateController.dispose();
    add1Controller.dispose();
    add2Controller.dispose();
    cityController.dispose();

    myFocusNodeFname.dispose();
    myFocusNodeLname.dispose();
    myFocusNodeMob.dispose();
    myFocusNodeEmail.dispose();
    myFocusNodeDob.dispose();
    myFocusNodeGender.dispose();
    myFocusNodeArea.dispose();
    myFocusNodePin.dispose();
    myFocusNodeCity.dispose();
    myFocusNodeState.dispose();
    myFocusNodeAdd1.dispose();
    myFocusNodeAdd2.dispose();
  }

  TextEditingController fnameController = new TextEditingController();
  TextEditingController lnameController = new TextEditingController();

  // TextEditingController nameController = new TextEditingController();
  TextEditingController mobController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController dobController = new TextEditingController();
  TextEditingController genController = new TextEditingController();
  TextEditingController areaController = new TextEditingController();
  TextEditingController cityController = new TextEditingController();
  TextEditingController pinController = new TextEditingController();
  TextEditingController stateController = new TextEditingController();
  TextEditingController add1Controller = new TextEditingController();
  TextEditingController add2Controller = new TextEditingController();

  final FocusNode myFocusNodeFname = FocusNode();
  final FocusNode myFocusNodeLname = FocusNode();
  final FocusNode myFocusNodeMob = FocusNode();
  final FocusNode myFocusNodeEmail = FocusNode();
  final FocusNode myFocusNodeDob = FocusNode();
  final FocusNode myFocusNodeGender = FocusNode();
  final FocusNode myFocusNodeArea = FocusNode();
  final FocusNode myFocusNodePin = FocusNode();
  final FocusNode myFocusNodeCity = FocusNode();
  final FocusNode myFocusNodeState = FocusNode();
  final FocusNode myFocusNodeAdd1 = FocusNode();
  final FocusNode myFocusNodeAdd2 = FocusNode();

  Future<void> _selectDate(BuildContext context) async {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950, 1),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      dobController.text = DateFormat('dd-MM-yyyy').format(pickedDate);
      print("_____ASASA______DOB ${dobController.text}");
    });
  }

  updateProfile() {
    setDetails();
    showInSnackBar("Profile updated successfully");
  }

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
      backgroundColor: Colors.blue,
      duration: Duration(seconds: 2),
    ));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // double headerHeight = size.height * 0.17;
    double headerHeight = 150.0;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: kPrimaryColorBlue,
        title: Text(
          'profile'.tr,
          style: TextStyle(fontFamily: "Sans"),
        ),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
        actions: <Widget>[
          FlatButton(
            textColor: _isButtonDisabledColor ? Colors.white : Colors.white,
            onPressed: () {
              _isButtonDisabled ? null : save();
            },
            child: Text('save'.tr),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            new Container(
              height: headerHeight,
              decoration: new BoxDecoration(
                color: Colors.transparent,
                borderRadius: new BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0)),
                boxShadow: <BoxShadow>[
                  new BoxShadow(
                      spreadRadius: 0.0,
                      blurRadius: 0.0,
                      offset: new Offset(0.0, 0.0),
                      color: Colors.black26),
                ],
              ),
              child: new Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  // linear gradient
                  new Container(
                    height: headerHeight,
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.only(
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0)),
                      gradient: LinearGradient(
                          colors: [kPrimaryColorBlue, kPrimaryColorBlue],
                          end: Alignment.bottomCenter,
                          begin: Alignment.topCenter),
                      //   stops: <double>[
                      //   0.5,
                      //   0.5
                      // ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                    ),
                  ),
                  // radial gradient
                  new CustomPaint(
                    painter: new HeaderGradientPainter(),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(
                        top: 0.0, left: 15.0, right: 15.0, bottom: 0.0),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Padding(
                            padding: const EdgeInsets.only(bottom: 0.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                _buildAvatar(size),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'USER NAME HERE',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  profileUid.text,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                      color: Colors.white),
                                )
                              ],
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: size.width * 0.95,
              padding: EdgeInsets.only(
                  top: 20.0, bottom: 10.0, left: 0.0, right: 0.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: new TextField(
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                  LengthLimitingTextInputFormatter(15)
                ],
                controller: fnameController,
                onChanged: (value) {
                  setState(() {
                    _isButtonDisabledColor = false;
                    _isButtonDisabled = false;
                  });
                },
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: "Sans",
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: kPrimaryColorDarkBlue,
                  ),
                  labelText: 'first_name'.tr + ' *'.tr,
                  labelStyle: TextStyle(
                      fontFamily: "Sans",
                      fontSize: 13.0,
                      color: kPrimaryColorDarkBlue),
                  border: InputBorder.none,
                  counterStyle: TextStyle(
                    height: double.minPositive,
                  ),
                  counterText: "",
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 13.0, horizontal: 5),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: kPrimaryColorDarkBlue, width: 0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(35.0)),
                  ),
                  focusedBorder: new OutlineInputBorder(
                    borderSide:
                        BorderSide(color: kPrimaryColorDarkBlue, width: 0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(35.0)),
                  ),
                ),
              ),
            ),
            Container(
              width: size.width * 0.95,
              padding: EdgeInsets.only(
                  top: 0.0, bottom: 10.0, left: 0.0, right: 0.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: new TextField(
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                  LengthLimitingTextInputFormatter(15)
                ],
                controller: lnameController,
                onChanged: (value) {
                  setState(() {
                    _isButtonDisabledColor = false;
                    _isButtonDisabled = false;
                  });
                },
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: "Sans",
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: kPrimaryColorDarkBlue,
                  ),
                  labelText: 'last_name'.tr + ' *'.tr,
                  labelStyle: TextStyle(
                      fontFamily: "Sans",
                      fontSize: 13.0,
                      color: kPrimaryColorDarkBlue),
                  border: InputBorder.none,
                  counterStyle: TextStyle(
                    height: double.minPositive,
                  ),
                  counterText: "",
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 13.0, horizontal: 5),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: kPrimaryColorDarkBlue, width: 0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(35.0)),
                  ),
                  focusedBorder: new OutlineInputBorder(
                    borderSide:
                        BorderSide(color: kPrimaryColorDarkBlue, width: 0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(35.0)),
                  ),
                ),
              ),
            ),
            Container(
              width: size.width * 0.95,
              padding: EdgeInsets.only(
                  top: 0.0, bottom: 10.0, left: 0.0, right: 0.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: new TextField(
                inputFormatters: [
                  FilteringTextInputFormatter.deny(RegExp("[ ]"))
                ],
                // focusNode: AlwaysDisabledFocusNode(),
                controller: mobController,
                keyboardType: TextInputType.phone,
                onChanged: (value) {
                  setState(() {
                    _isButtonDisabledColor = false;
                    _isButtonDisabled = false;
                  });
                },
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: "Sans",
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.call,
                    color: kPrimaryColorDarkBlue,
                  ),
                  labelText: 'mob_no'.tr + ' *'.tr,
                  labelStyle: TextStyle(
                      fontFamily: "Sans",
                      fontSize: 13.0,
                      color: kPrimaryColorDarkBlue),
                  border: InputBorder.none,
                  counterStyle: TextStyle(
                    height: double.minPositive,
                  ),
                  counterText: "",
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 13.0, horizontal: 5),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: kPrimaryColorDarkBlue, width: 0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(35.0)),
                  ),
                  focusedBorder: new OutlineInputBorder(
                    borderSide:
                        BorderSide(color: kPrimaryColorDarkBlue, width: 0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(35.0)),
                  ),
                ),
              ),
            ),
            Container(
              width: size.width * 0.95,
              padding: EdgeInsets.only(
                  top: 0.0, bottom: 10.0, left: 0.0, right: 0.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: new TextField(
                inputFormatters: [
                  FilteringTextInputFormatter.deny(RegExp("[ ]"))
                ],
                controller: emailController,
                onChanged: (value) {
                  setState(() {
                    _isButtonDisabledColor = false;
                    _isButtonDisabled = false;
                  });
                },
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: "Sans",
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    color: kPrimaryColorDarkBlue,
                  ),
                  labelText: 'email'.tr + ' *'.tr,
                  labelStyle: TextStyle(
                      fontFamily: "Sans",
                      fontSize: 13.0,
                      color: kPrimaryColorDarkBlue),
                  border: InputBorder.none,
                  counterStyle: TextStyle(
                    height: double.minPositive,
                  ),
                  counterText: "",
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 13.0, horizontal: 5),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: kPrimaryColorDarkBlue, width: 0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(35.0)),
                  ),
                  focusedBorder: new OutlineInputBorder(
                    borderSide:
                        BorderSide(color: kPrimaryColorDarkBlue, width: 0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(35.0)),
                  ),
                ),
              ),
            ),
            Container(
              width: size.width * 0.95,
              padding: EdgeInsets.only(
                  top: 0.0, bottom: 10.0, left: 0.0, right: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.45,
                    padding: EdgeInsets.only(
                        top: 0.0, bottom: 0.0, left: 0.0, right: 0.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: new TextField(
                      enableInteractiveSelection: false,
                      // will disable paste operation
                      focusNode: new AlwaysDisabledFocusNode(),
                      controller: dobController,
                      onTap: () {
                        _selectDate(context);
                        setState(() {
                          _isButtonDisabledColor = false;
                          _isButtonDisabled = false;
                        });
                      },
                      onChanged: (value) {
                        setState(() {
                          _isButtonDisabledColor = false;
                          _isButtonDisabled = false;
                        });
                      },
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: "Sans",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          CupertinoIcons.calendar,
                          color: kPrimaryColorDarkBlue,
                        ),
                        labelText: 'dob'.tr + ' *'.tr,
                        labelStyle: TextStyle(
                            fontFamily: "Sans",
                            fontSize: 13.0,
                            color: kPrimaryColorDarkBlue),
                        border: InputBorder.none,
                        counterStyle: TextStyle(
                          height: double.minPositive,
                        ),
                        counterText: "",
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 13.0, horizontal: 4),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: kPrimaryColorDarkBlue, width: 0.5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(35.0)),
                        ),
                        focusedBorder: new OutlineInputBorder(
                          borderSide: BorderSide(
                              color: kPrimaryColorDarkBlue, width: 0.5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(35.0)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.45,
                    padding: EdgeInsets.only(
                        top: 0.0, bottom: 0.0, left: 0.0, right: 0.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: new DropdownButtonFormField<String>(
                      iconEnabledColor: Color(0xFF3d68d9),
                      dropdownColor: Colors.white,
                      value: dropdownValue,
                      isExpanded: true,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: "Sans",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                      ),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue = newValue;
                          genController.text = dropdownValue;
                          _isButtonDisabledColor = false;
                          _isButtonDisabled = false;
                        });
                      },
                      items: <String>['Select', 'Male', 'Female']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: kPrimaryColorDarkBlue,
                        ),
                        labelText: 'gender'.tr + ' *'.tr,
                        labelStyle: TextStyle(
                            fontFamily: "Sans",
                            fontSize: 13.0,
                            color: kPrimaryColorDarkBlue),
                        border: InputBorder.none,
                        counterStyle: TextStyle(
                          height: double.minPositive,
                        ),
                        counterText: "",
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 13.0, horizontal: 5),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: kPrimaryColorDarkBlue, width: 0.5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(35.0)),
                        ),
                        focusedBorder: new OutlineInputBorder(
                          borderSide: BorderSide(
                              color: kPrimaryColorDarkBlue, width: 0.5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(35.0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: size.width * 0.95,
              padding: EdgeInsets.only(
                  top: 0.0, bottom: 10.0, left: 0.0, right: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.45,
                    child: TextField(
                      focusNode: new AlwaysDisabledFocusNode(),
                      controller: stateController,
                      keyboardType: TextInputType.text,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontStyle: FontStyle.normal,
                        fontFamily: "Sans",
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 13.0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: kPrimaryColorDarkBlue, width: 0.5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(35.0)),
                        ),
                        focusedBorder: new OutlineInputBorder(
                          borderSide: BorderSide(
                              color: kPrimaryColorDarkBlue, width: 0.5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(35.0)),
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          color: kPrimaryColorDarkBlue,
                          size: 20.0,
                        ),
                        labelText: 'state'.tr + ' *'.tr,
                        labelStyle: TextStyle(
                            fontFamily: "Sans",
                            fontSize: 13.0,
                            color: kPrimaryColorDarkBlue),
                      ),
                      onTap: () {
                        setState(() {
                          _isButtonDisabledColor = false;
                          _isButtonDisabled = false;
                        });
                        stateDialog(context);
                      },
                    ),
                  ),
                  // SizedBox(
                  //   width: size.width * 0.1,
                  // ),
                  Container(
                    width: size.width * 0.45,
                    child: TextField(
                      focusNode: new AlwaysDisabledFocusNode(),
                      controller: cityController,
                      keyboardType: TextInputType.text,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontStyle: FontStyle.normal,
                        fontFamily: "Sans",
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 13.0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: kPrimaryColorDarkBlue, width: 0.5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(35.0)),
                        ),
                        focusedBorder: new OutlineInputBorder(
                          borderSide: BorderSide(
                              color: kPrimaryColorDarkBlue, width: 0.5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(35.0)),
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          color: kPrimaryColorDarkBlue,
                          size: 20.0,
                        ),
                        labelText: 'city'.tr + ' *'.tr,
                        labelStyle: TextStyle(
                            fontFamily: "Sans",
                            fontSize: 13.0,
                            color: kPrimaryColorDarkBlue),
                      ),
                      onTap: () {
                        setState(() {
                          _isButtonDisabledColor = false;
                          _isButtonDisabled = false;
                        });
                        cityDialog(context);
                      },
                    ),
                  ),
                  // Container(
                  //   width: size.width * 0.45,
                  //   padding: EdgeInsets.only(top: 0.0, bottom: 0.0, left: 0.0, right: 0.0),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(5),
                  //   ),
                  //   child: new TextField(
                  //     maxLength: 20,
                  //     focusNode: myFocusNodeState,
                  //     controller: stateController,
                  //     keyboardType: TextInputType.text,
                  //     onChanged: (value) {
                  //       setState(() {
                  //         _isButtonDisabledColor = false;
                  //         _isButtonDisabled = false;
                  //       });
                  //     },
                  //     style: TextStyle(
                  //       color: Colors.black,
                  //       fontSize: 15,
                  //       fontFamily: "Sans",
                  //       fontStyle: FontStyle.normal,
                  //       fontWeight: FontWeight.w400,
                  //     ),
                  //     decoration: InputDecoration(
                  //       prefixIcon: Icon(
                  //         FontAwesomeIcons.map,
                  //         color: kPrimaryColorDarkBlue,
                  //       ),
                  //       labelText: "State",
                  //       labelStyle: TextStyle(
                  //           fontFamily: "Sans",
                  //           fontSize: 13.0,
                  //           color: kPrimaryColorDarkBlue),
                  //       border: InputBorder.none,
                  //       counterStyle: TextStyle(
                  //         height: double.minPositive,
                  //       ),
                  //       counterText: "",
                  //       contentPadding: const EdgeInsets.symmetric(
                  //           vertical: 13.0, horizontal: 5),
                  //       enabledBorder: OutlineInputBorder(
                  //         borderSide: BorderSide(
                  //             color: kPrimaryColorDarkBlue,
                  //             width: 0.5),
                  //         borderRadius:
                  //         const BorderRadius.all(Radius.circular(35.0)),
                  //       ),
                  //       focusedBorder: new OutlineInputBorder(
                  //         borderSide: BorderSide(
                  //             color: kPrimaryColorDarkBlue,
                  //             width: 0.5),
                  //         borderRadius:
                  //         const BorderRadius.all(Radius.circular(35.0)),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // Container(
                  //   width: size.width * 0.45,
                  //   padding: EdgeInsets.only(top: 0.0, bottom: 0.0, left: 0.0, right: 0.0),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(5),
                  //   ),
                  //   child: new TextField(
                  //     maxLength: 20,
                  //     focusNode: myFocusNodeCity,
                  //     controller: cityController,
                  //     onChanged: (value) {
                  //       setState(() {
                  //         _isButtonDisabledColor = false;
                  //         _isButtonDisabled = false;
                  //       });
                  //     },
                  //     style: TextStyle(
                  //       color: Colors.black,
                  //       fontSize: 15,
                  //       fontFamily: "Sans",
                  //       fontStyle: FontStyle.normal,
                  //       fontWeight: FontWeight.w400,
                  //     ),
                  //     decoration: InputDecoration(
                  //       prefixIcon: Icon(
                  //         Icons.location_city,
                  //         color: kPrimaryColorDarkBlue,
                  //       ),
                  //       labelText: "City",
                  //       labelStyle: TextStyle(
                  //           fontFamily: "Sans",
                  //           fontSize: 13.0,
                  //           color: kPrimaryColorDarkBlue),
                  //       border: InputBorder.none,
                  //       counterStyle: TextStyle(
                  //         height: double.minPositive,
                  //       ),
                  //       counterText: "",
                  //       contentPadding: const EdgeInsets.symmetric(
                  //           vertical: 13.0, horizontal: 5),
                  //       enabledBorder: OutlineInputBorder(
                  //         borderSide: BorderSide(
                  //             color: kPrimaryColorDarkBlue,
                  //             width: 0.5),
                  //         borderRadius:
                  //         const BorderRadius.all(Radius.circular(35.0)),
                  //       ),
                  //       focusedBorder: new OutlineInputBorder(
                  //         borderSide: BorderSide(
                  //             color: kPrimaryColorDarkBlue,
                  //             width: 0.5),
                  //         borderRadius:
                  //         const BorderRadius.all(Radius.circular(35.0)),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            Container(
              width: size.width * 0.95,
              padding: EdgeInsets.only(
                  top: 0.0, bottom: 10.0, left: 0.0, right: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.45,
                    padding: EdgeInsets.only(
                        top: 0.0, bottom: 0.0, left: 0.0, right: 0.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: new TextField(
                      maxLength: 20,
                      enableInteractiveSelection: false,
                      // will disable paste operation

                      controller: areaController,
                      onChanged: (value) {
                        setState(() {
                          _isButtonDisabledColor = false;
                          _isButtonDisabled = false;
                        });
                      },
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontStyle: FontStyle.normal,
                        fontFamily: "Sans",
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          CupertinoIcons.location,
                          color: kPrimaryColorDarkBlue,
                        ),
                        labelText: 'area'.tr + ' *'.tr,
                        labelStyle: TextStyle(
                            fontFamily: "Sans",
                            fontSize: 13.0,
                            color: kPrimaryColorDarkBlue),
                        border: InputBorder.none,
                        counterStyle: TextStyle(
                          height: double.minPositive,
                        ),
                        counterText: "",
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 13.0, horizontal: 5),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: kPrimaryColorDarkBlue, width: 0.5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(35.0)),
                        ),
                        focusedBorder: new OutlineInputBorder(
                          borderSide: BorderSide(
                              color: kPrimaryColorDarkBlue, width: 0.5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(35.0)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.45,
                    padding: EdgeInsets.only(
                        top: 0.0, bottom: 0.0, left: 0.0, right: 0.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: new TextField(
                      maxLength: 6,
                      enableInteractiveSelection: false,
                      // will disable paste operation

                      controller: pinController,
                      onChanged: (value) {
                        setState(() {
                          _isButtonDisabledColor = false;
                          _isButtonDisabled = false;
                        });
                      },
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontStyle: FontStyle.normal,
                        fontFamily: "Sans",
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.push_pin,
                          color: kPrimaryColorDarkBlue,
                        ),
                        labelText: 'pin'.tr + ' *'.tr,
                        labelStyle: TextStyle(
                            fontFamily: "Sans",
                            fontSize: 13.0,
                            color: kPrimaryColorDarkBlue),
                        border: InputBorder.none,
                        counterStyle: TextStyle(
                          height: double.minPositive,
                        ),
                        counterText: "",
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 13.0, horizontal: 5),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: kPrimaryColorDarkBlue, width: 0.5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(35.0)),
                        ),
                        focusedBorder: new OutlineInputBorder(
                          borderSide: BorderSide(
                              color: kPrimaryColorDarkBlue, width: 0.5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(35.0)),
                        ),
                      ),
                    ),
                  ),

                  // MaterialButton(
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(15.0)
                  //   ),
                  //   child: Text("Change Password"),
                  //   onPressed: (){
                  //     Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangePassword(false)));
                  //   },
                  // )
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChangePassword(false)));
              },
              child: Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [kPrimaryColorDarkBlue, kPrimaryColorBlue],
                      end: Alignment.bottomCenter,
                      begin: Alignment.topCenter),
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  'change_pass'.tr,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildAvatar(Size size) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Center(
          child: Stack(
            children: <Widget>[
              ClipOval(
                child: new Image.asset(
                  'assets/logo.jpeg',
                  // height: size.height * 0.1,
                  height: 90.0,
                  width: 90.0,
                  fit: BoxFit.fill,
                  // loadingBuilder:(BuildContext context, Widget child,ImageChunkEvent loadingProgress) {
                  //   if (loadingProgress == null) return child;
                  //   return Center(
                  //     child: CircularProgressIndicator(
                  //       value: loadingProgress.expectedTotalBytes != null ?
                  //       loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
                  //           : null,
                  //     ),
                  //   );
                  // },
                ),
              ),
              Positioned(
                bottom: 0.0,
                right: 0.0,
                child: InkWell(
                  onTap: () {
                    _showSelectionDialog(context);
                  },
                  child: CircleAvatar(
                    radius: size.width * 0.035,
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 13.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> _showSelectionDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text("Choose Image Source"),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    GestureDetector(
                      child: Text("Gallery"),
                      onTap: () {
                        // _openGallery(context);
                      },
                    ),
                    Padding(padding: EdgeInsets.all(8.0)),
                    GestureDetector(
                      child: Text("Camera"),
                      onTap: () {
                        // _openCamera(context);
                      },
                    ),
                    Padding(padding: EdgeInsets.all(8.0)),
                    GestureDetector(
                      child: Text("Remove Photo"),
                      onTap: () {
                        Navigator.of(context).pop();
                        // removeProfile();
                      },
                    )
                  ],
                ),
              ));
        });
  }

  // void _openCamera(BuildContext context) async {
  //   Navigator.of(context).pop();
  //   final ImagePicker _picker = ImagePicker();
  //   final XFile picture = await _picker.pickImage(
  //       source: ImageSource.camera, imageQuality: 25);
  //   if (picture != null) {
  //     _cropImage(picture);
  //   }
  // }

  // void _openGallery(BuildContext context) async {
  //   final ImagePicker _picker = ImagePicker();
  //
  //   final XFile picture = await _picker.pickImage(
  //       source: ImageSource.gallery, imageQuality: 25);
  //   Navigator.of(context).pop();
  //   if (picture != null) {
  //     _cropImage(picture);
  //   }
  // }
  //
  // Future<Null> _cropImage(XFile picture) async {
  //   File croppedFile = await ImageCropper.cropImage(
  //     sourcePath: picture.path,
  //     compressQuality: 50,
  //     aspectRatioPresets: Platform.isAndroid
  //     ? [
  //     CropAspectRatioPreset.square,
  //     CropAspectRatioPreset.ratio3x2,
  //     CropAspectRatioPreset.original,
  //     CropAspectRatioPreset.ratio4x3,
  //     CropAspectRatioPreset.ratio16x9
  //     ]
  //     : [
  //     CropAspectRatioPreset.original,
  //     CropAspectRatioPreset.square,
  //     CropAspectRatioPreset.ratio3x2,
  //     CropAspectRatioPreset.ratio4x3,
  //     CropAspectRatioPreset.ratio5x3,
  //     CropAspectRatioPreset.ratio5x4,
  //     CropAspectRatioPreset.ratio7x5,
  //     CropAspectRatioPreset.ratio16x9
  //     ],
  //     androidUiSettings: AndroidUiSettings(
  //         toolbarTitle: 'Crop',
  //         toolbarColor: kPrimaryColorDarkBlue,
  //         toolbarWidgetColor: Colors.white,
  //         activeControlsWidgetColor: kPrimaryColorGreen,
  //         initAspectRatio: CropAspectRatioPreset.square,
  //         lockAspectRatio: false),
  //   );
  //   if (croppedFile != null) {
  //     sendData(croppedFile);
  //   }
  // }
  //
  // _showLoaderDialog(BuildContext context) {
  //   return showDialog(
  //       context: context,
  //       barrierDismissible: false,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //             content: SingleChildScrollView(
  //                 padding: new EdgeInsets.only(top: 0.0, bottom: 0.0),
  //                 child: new Container(
  //                   height: 40.0,
  //                   child: Center(
  //                     child: SpinKitWave(
  //                       color: kPrimaryColorDarkBlue,
  //                       size: 40.0,
  //                     ),
  //                   ),
  //                 )));
  //       });
  // }

  stateDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'Select State',
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w800,
                  fontSize: 15.0,
                  fontFamily: "PoppinsMedium"),
            ),
            // content: stateDialoagContainer(),
            actions: <Widget>[
              TextButton(
                child: Text('Cancel',
                    style: TextStyle(color: kPrimaryColorDarkBlue)),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  //
  // Widget stateDialoagContainer() {
  //   return Container(
  //     height: 300.0, // Change as per your requirement
  //     width: 300.0, // Change as per your requirement
  //     child: FutureBuilder<List<Datumii>>(
  //       future: statesSelect(),
  //       builder: (BuildContext context, AsyncSnapshot<List<Datumii>> snapshot) {
  //         if (snapshot.connectionState == ConnectionState.waiting)
  //           return Center(
  //             child: Center(
  //                 child: CircularProgressIndicator(
  //                   valueColor: AlwaysStoppedAnimation<Color>(kPrimaryColorDarkBlue),
  //                 )),
  //           );
  //         else if (snapshot.hasError) {
  //           return Center(
  //             child: Text("No State Found"),
  //           );
  //         } else{
  //           if (snapshot.connectionState == ConnectionState.done &&
  //               snapshot.hasData) {
  //             return Scrollbar(
  //                 radius: Radius.circular(5.0),
  //                 isAlwaysShown: true,
  //                 controller: _controller,
  //                 thickness: 3.0,
  //                 child: ListView.builder(
  //                     controller: _controller,
  //                     itemCount: snapshot.data.length,
  //                     itemBuilder: (BuildContext context, int index) {
  //                       return ListTile(
  //                         title: Text(
  //                           snapshot.data[index].state,
  //                           style: TextStyle(fontSize: 15.0,
  //                           ),
  //                         ),
  //                         leading: CircleAvatar(
  //                           foregroundColor: Colors.white,
  //                           backgroundColor: kPrimaryColorDarkBlue,
  //                           child: Text(
  //                             snapshot.data[index].state.substring(0,1).toUpperCase(),
  //                             style: TextStyle(fontSize: 18.0,
  //                               fontWeight: FontWeight.bold,
  //                             ),
  //                           ),
  //                         ),
  //                         // trailing: Wrap(
  //                         //   spacing: 12, // space between two icons
  //                         //   children: <Widget>[
  //                         //     Icon(FontAwesomeIcons.rupeeSign, size: 16.0, color: Colors.black,),
  //                         //     Text('${snapshot.data.data[index].productCost} /Lit', style: TextStyle(fontWeight: FontWeight.bold)),
  //                         //     // Icon(Icons.message),
  //                         //   ],
  //                         // ),
  //                         onTap: () async {
  //                           stateController.text = snapshot.data[index].state;
  //                           setState(() {
  //                             state = snapshot.data[index].state;
  //                             cityController.clear();
  //                             _isButtonDisabledColor = false;
  //                             _isButtonDisabled = false;
  //                           });
  //                           Navigator.of(context).pop();
  //                         },
  //                       );
  //                     }
  //                 )
  //             );
  //           } else {
  //             return Center(child: Text("No state Found"),);
  //           }
  //         }
  //
  //       },
  //     ),
  //   );
  // }

  cityDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'Select City',
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w800,
                  fontSize: 15.0,
                  fontFamily: "PoppinsMedium"),
            ),
            // content: cityDialoagContainer(),
            actions: <Widget>[
              TextButton(
                child: Text('Cancel',
                    style: TextStyle(color: kPrimaryColorDarkBlue)),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  //
  // Widget cityDialoagContainer() {
  //   return Container(
  //     height: 300.0, // Change as per your requirement
  //     width: 300.0, // Change as per your requirement
  //     child: FutureBuilder<List<Datumoo>>(
  //       future: citiesSelect(),
  //       builder: (BuildContext context, AsyncSnapshot<List<Datumoo>> snapshot) {
  //         if (snapshot.connectionState == ConnectionState.waiting)
  //           return Center(
  //             child: Center(
  //                 child: CircularProgressIndicator(
  //                   valueColor: AlwaysStoppedAnimation<Color>(kPrimaryColorDarkBlue),
  //                 )),
  //           );
  //         else if (snapshot.hasError) {
  //           return Center(
  //             child: Text("No City Found"),
  //           );
  //         } else{
  //           if (snapshot.connectionState == ConnectionState.done &&
  //               snapshot.hasData) {
  //             return Scrollbar(
  //                 radius: Radius.circular(5.0),
  //                 isAlwaysShown: true,
  //                 controller: _controller,
  //                 thickness: 3.0,
  //                 child: ListView.builder(
  //                     controller: _controller,
  //                     itemCount: snapshot.data.length,
  //                     itemBuilder: (BuildContext context, int index) {
  //                       return ListTile(
  //                         title: Text(
  //                           snapshot.data[index].city,
  //                           style: TextStyle(fontSize: 15.0,
  //                           ),
  //                         ),
  //                         leading: CircleAvatar(
  //                           foregroundColor: Colors.white,
  //                           backgroundColor: kPrimaryColorDarkBlue,
  //                           child: Text(
  //                             snapshot.data[index].city.substring(0,1).toUpperCase(),
  //                             style: TextStyle(fontSize: 18.0,
  //                               fontWeight: FontWeight.bold,
  //                             ),
  //                           ),
  //                         ),
  //                         // trailing: Wrap(
  //                         //   spacing: 12, // space between two icons
  //                         //   children: <Widget>[
  //                         //     Icon(FontAwesomeIcons.rupeeSign, size: 16.0, color: Colors.black,),
  //                         //     Text('${snapshot.data.data[index].productCost} /Lit', style: TextStyle(fontWeight: FontWeight.bold)),
  //                         //     // Icon(Icons.message),
  //                         //   ],
  //                         // ),
  //                         onTap: () async {
  //                           cityController.text = snapshot.data[index].city;
  //                           setState(() {
  //                             city = snapshot.data[index].city;
  //                             _isButtonDisabledColor = false;
  //                             _isButtonDisabled = false;
  //                           });
  //                           Navigator.of(context).pop();
  //                         },
  //                       );
  //                     }
  //                 )
  //             );
  //           } else {
  //             return Center(child: Text("No City Found"),);
  //           }
  //         }
  //       },
  //     ),
  //   );
  // }

  // Future<List<Datumii>> statesSelect() async {
  //   final param = {
  //     "state": "",
  //   };
  //
  //   final res = await http.post(
  //     Uri.parse("http://157.230.228.250/get-user-cities-by-states-api/"),
  //     body: param,
  //   );
  //
  //   print(res.body);
  //   if (200 == res.statusCode) {
  //     print(statesFromJson(res.body).stateee.length);
  //     return statesFromJson(res.body).stateee;
  //   } else {
  //     throw Exception('Failed to load Stores List');
  //   }
  // }
  //
  // Future<List<Datumoo>> citiesSelect() async {
  //   final param = {
  //     "state": state,
  //   };
  //
  //   final res = await http.post(
  //     Uri.parse("http://157.230.228.250/get-user-cities-by-states-api/"),
  //     body: param,
  //   );
  //
  //   print(res.body);
  //   if (200 == res.statusCode) {
  //     print(statesFromJson(res.body).cityyy.length);
  //     return statesFromJson(res.body).cityyy;
  //   } else {
  //     throw Exception('Failed to load Stores List');
  //   }
  // }

  bool validateEmail(String value) {
    String pattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regExp = new RegExp(pattern);
    return regExp.hasMatch(value);
  }

  Future<void> save() async {
    if (fnameController.text.isEmpty) {
      showInSnackBar("Please enter First Name");
      return null;
    }
    if (lnameController.text.isEmpty) {
      showInSnackBar("Please enter Last Name");
      return null;
    }
    // if(mobController.text.isEmpty) {
    //   showInSnackBar("Please enter Mobile Number", 2);
    //   return null;
    // }
    if (emailController.text.isEmpty) {
      showInSnackBar("Please enter Email");
      return null;
    }
    if (emailController.text.isNotEmpty) {
      if (emailController.text.contains('com') ||
          emailController.text.contains('net') ||
          emailController.text.contains('edu') ||
          emailController.text.contains('org') ||
          emailController.text.contains('mil') ||
          emailController.text.contains('gov')) {
        if (validateEmail(emailController.text) == false) {
          showInSnackBar("Invalid Email");
          return null;
        }
      } else {
        showInSnackBar("Invalid Email");
        return null;
      }
    }
    // if(dobController.text.isEmpty) {
    //   showInSnackBar("Please enter Date of Birth", 2);
    //   return null;
    // }
    if (genController.text.isEmpty) {
      showInSnackBar("Please select Gender");
      return null;
    }
    if (genController.text == "Select Gender") {
      showInSnackBar("Please select Gender");
      return null;
    }
    if (stateController.text == "" || stateController.text.isEmpty) {
      showInSnackBar("Please select State");
      return null;
    }
    if (cityController.text == "" || cityController.text.isEmpty) {
      showInSnackBar("Please select City");
      return null;
    }
    if (areaController.text == "" || areaController.text.isEmpty) {
      showInSnackBar("Please enter Area");
      return null;
    }
    // if(areaController.text.isEmpty) {
    //   showInSnackBar("Please enter Aadhar Number", 2);
    //   return null;
    // }
    // if(areaController.text.length < 12) {
    //   showInSnackBar("Please enter valid Aadhar Number", 2);
    //   return null;
    // }
    if (pinController.text.isEmpty || pinController.text == "") {
      showInSnackBar("Please enter Pin Code");
      return null;
    }
    if (pinController.text.isNotEmpty) {
      if (pinController.text.length < 6) {
        showInSnackBar("Please enter valid Pin Code");
        return null;
      }
    }
    // if(pinController.text.length > 10) {
    //   showInSnackBar("Please enter valid Pan Number", 2);
    //   return null;
    // }
    //
    // SchedulerBinding.instance
    //     .addPostFrameCallback((_) => _showLoaderDialog(context));
    // final SharedPreferences prefs = await SharedPreferences.getInstance();
    //
    // prefs.setString("fName", fnameController.text);
    // prefs.setString("lName", lnameController.text);
    //
    // String token = prefs.getString("token");
    // int id = prefs.getInt("userID");
    // print('$id $token');
    //
    // final param = {
    //   "user_id": id.toString(),
    //   "email": emailController.text,
    //   "first_name": fnameController.text.capitalize(),
    //   "last_name": lnameController.text.capitalize(),
    //   "c_dob": dobController.text == null ? "" :dobController.text,
    //   "c_gender": genController.text,
    //   "c_address_1": add1Controller.text,
    //   "c_address_2": add2Controller.text,
    //   "c_area": areaController.text.capitalize(),
    //   "c_city": cityController.text,
    //   "c_state": stateController.text,
    //   "c_pincode": pinController.text,
    // };
    // print("parameters $param");
    //
    // final response = await http.post(
    //   Uri.parse("http://157.230.228.250/set-customer-profile-api/"),
    //   body: param,
    //   headers: {HttpHeaders.authorizationHeader: "Token $token"},
    // );
    //
    // print(response.statusCode);
    // CommonData data;
    // var responseJson = json.decode(response.body);
    // print(response.body);
    // data = new CommonData.fromJson(jsonDecode(response.body));
    // print(responseJson);
    //
    // if (response.statusCode == 200) {
    //   if (data.status == "success") {
    //     print("Profile update Successful");
    //     print(data.message);
    //     Navigator.of(context, rootNavigator: true).pop();
    //     Navigator.pop(context, true);
    //   } else {
    //     Navigator.of(context, rootNavigator: true).pop();
    //     print(data.status);
    //     showInSnackBar(data.message);
    //   }
    // } else {
    //   Navigator.of(context, rootNavigator: true).pop();
    //   print(data.status);
    //   showInSnackBar(data.message);
    // }
  }

  void setDetails() {}

// Future<void> removeProfile() async {
//   final SharedPreferences prefs = await SharedPreferences.getInstance();
//   int userid = prefs.getInt("userID");
//   print(userid);
//
//   final param = {
//     "user_id": userid.toString(),
//   };
//
//   final response = await http.post(
//     Uri.parse("http://157.230.228.250/remove-customer-profile-image-api/"),
//     body: param,
//   );
//
//   CommonData remove;
//   print(response.statusCode);
//   print(response.body);
//   remove = new CommonData.fromJson(jsonDecode(response.body));
//
//   if (response.statusCode == 200) {
//     if (remove.status == "success") {
//       print(remove.status);
//       showInSnackBar("Profile Picture removed successfully");
//       setData(id, token);
//     } else
//       showInSnackBar(remove.message);
//   } else {
//     print(remove.status);
//     showInSnackBar(remove.message);
//     return null;
//   }
// }
//
// Future<void> sendData(File imageFile) async {
//   // open a bytestream
//   var stream =
//   new http.ByteStream(DelegatingStream.typed(imageFile.openRead()));
//
//   // get file length
//   var length = await imageFile.length();
//
//   final SharedPreferences prefs = await SharedPreferences.getInstance();
//   int userID = prefs.getInt("userID");
//   String token = prefs.getString("token");
//
//   print('$userID  $token');
//
//   // string to uri
//   var uri =
//   Uri.parse("http://157.230.228.250/set-customer-profile-image-api/");
//   Map<String, String> headers = {"Authorization": "Token $token"};
//   // create multipart request
//   var request = new http.MultipartRequest("POST", uri);
//
//   // multipart that takes file
//   var multipartFile = new http.MultipartFile(
//       'c_profile_image', stream, length,
//       filename: path.basename(imageFile.path));
//
//   // add file to multipart
//   request.files.add(multipartFile);
//
//   request.fields['user_id'] = userID.toString();
//
//   request.headers.addAll(headers);
//
//   // send
//   var response = await request.send();
//   print(response.statusCode);
//   print(response);
//
//   if (response.statusCode == 200) {
//     print(
//         "***********************************************     Submit     *******************************************************");
//     showInSnackBar("Profile Updated");
//     setData(id, token);
//     setState(() {});
//   } else {
//     showInSnackBar("Something went wrong!");
//   }
//
//   // listen for response
//   response.stream.transform(utf8.decoder).listen((value) {
//     print(value);
//   });
// }
}

class HeaderGradientPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: paint background radial gradient
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
