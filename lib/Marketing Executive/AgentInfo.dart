import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomerInfo.dart';

class AgentInfo extends StatefulWidget {
  const AgentInfo({Key key}) : super(key: key);

  @override
  _AgentInfoState createState() => _AgentInfoState();
}

class _AgentInfoState extends State<AgentInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Agents Info",
          style: TextStyle(fontFamily: "Sans"),
        ),
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
                title: Text("Agent XYZ",
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Sans")),
                isThreeLine: false,
                subtitle:
                    Text("Agent ID : 123456", style: TextStyle(fontSize: 13.0)),
                leading:
                    Image.asset("assets/SAE.png", height: 50.0, width: 50.0),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CustomerInfo()));
                },
              ),
            ),
            Card(
              elevation: 2.0,
              shadowColor: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: ListTile(
                dense: false,
                title: Text("Agent XYZ",
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Sans")),
                isThreeLine: false,
                subtitle:
                    Text("Agent ID : 123456", style: TextStyle(fontSize: 13.0)),
                leading:
                    Image.asset("assets/SAE.png", height: 50.0, width: 50.0),
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
                title: Text("Agent XYZ",
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Sans")),
                isThreeLine: false,
                subtitle:
                    Text("Agent ID : 123456", style: TextStyle(fontSize: 13.0)),
                leading:
                    Image.asset("assets/SAE.png", height: 50.0, width: 50.0),
                trailing: Icon(Icons.arrow_forward_ios),
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
