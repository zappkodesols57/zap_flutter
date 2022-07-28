import 'package:flutter/material.dart';

class AgentNotifications extends StatefulWidget {
  const AgentNotifications({Key key}) : super(key: key);

  @override
  _AgentNotificationsState createState() => _AgentNotificationsState();
}

class _AgentNotificationsState extends State<AgentNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications", style: TextStyle(fontFamily: "Sans")),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 2.0,
              shadowColor: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: ListTile(
                dense: false,
                title: Text("GST Certificate",
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Sans")),
                isThreeLine: false,
                subtitle: Text("Your GST Certificate Successfully Approved.",
                    style:
                        TextStyle(color: Colors.red.shade800, fontSize: 13.0)),
                leading:
                    Image.asset("assets/SAE.png", height: 50.0, width: 50.0),
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
                title: Text("ITR Submission",
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Sans")),
                isThreeLine: false,
                subtitle: Text("Your ITR Submission Successfully Approved.",
                    style:
                        TextStyle(color: Colors.red.shade800, fontSize: 13.0)),
                leading:
                    Image.asset("assets/SAE.png", height: 50.0, width: 50.0),
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
                title: Text("Shopact Licence",
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Sans")),
                isThreeLine: false,
                subtitle: Text("Your Shopact Licence Successfully Approved.",
                    style:
                        TextStyle(color: Colors.red.shade800, fontSize: 13.0)),
                leading:
                    Image.asset("assets/SAE.png", height: 50.0, width: 50.0),
                // onTap: () {
                //   // launch(snapshot.data.news[index].url,enableJavaScript: true);
                // },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
