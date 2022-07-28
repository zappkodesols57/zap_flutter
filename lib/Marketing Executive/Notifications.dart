import 'package:flutter/material.dart';
import 'package:zap_flutter/Authentication/background.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications", style: TextStyle(fontFamily: "Sans")),
        backgroundColor: Color(0xFF6e95fc),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Background(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: ListTile(
                  dense: false,
                  title: Text("XYZ",
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Sans")),
                  isThreeLine: false,
                  subtitle: Text("Enquiry for Backend Developer.",
                      style: TextStyle(
                          color: Colors.red.shade800, fontSize: 13.0)),
                  leading: Image.asset("assets/logo.jpeg",
                      height: 50.0, width: 50.0),
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
                  title: Text("XYZ",
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Sans")),
                  isThreeLine: false,
                  subtitle: Text("Enquiry for Digital Marketing.",
                      style: TextStyle(
                          color: Colors.red.shade800, fontSize: 13.0)),
                  leading: Image.asset("assets/logo.jpeg",
                      height: 50.0, width: 50.0),
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
                  title: Text("XYZ",
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Sans")),
                  isThreeLine: false,
                  subtitle: Text("Enquiry for S.E.O.",
                      style: TextStyle(
                          color: Colors.red.shade800, fontSize: 13.0)),
                  leading: Image.asset("assets/logo.jpeg",
                      height: 50.0, width: 50.0),
                  // onTap: () {
                  //   // launch(snapshot.data.news[index].url,enableJavaScript: true);
                  // },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
