import 'package:flutter/material.dart';

class ReferralHistory extends StatefulWidget {
  const ReferralHistory({Key key}) : super(key: key);

  @override
  _ReferralHistoryState createState() => _ReferralHistoryState();
}

class _ReferralHistoryState extends State<ReferralHistory> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Referral History'),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Card(
            elevation: 1,
            child: ListTile(
              contentPadding: EdgeInsets.all(10.0),
              dense: true,
              title: Text('Name : Testing Agent',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  )),
              isThreeLine: false,
              subtitle: Text(
                  ' Referral Id : 128\n Invoice No. : 123456\n Date : 12-02-2022',
                  style: TextStyle(fontSize: 12.0)),
              trailing: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(Icons.send),
              ),
            ),
          ),
          Card(
            elevation: 1,
            child: ListTile(
              contentPadding: EdgeInsets.all(10.0),
              dense: true,
              title: Text('Name : Testing Agent',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Sans",
                  )),
              isThreeLine: false,
              subtitle: Text(
                  ' Referral Id : 128\n Invoice No. : 123456\n Date : 12-02-2022',
                  style: TextStyle(fontSize: 12.0)),
              trailing: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(Icons.send),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
