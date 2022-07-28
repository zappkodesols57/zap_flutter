import 'package:flutter/material.dart';
import 'package:zap_flutter/Authentication/constants.dart';

class leaderboard extends StatefulWidget {
  const leaderboard({Key key}) : super(key: key);

  @override
  _leaderboardState createState() => _leaderboardState();
}

class _leaderboardState extends State<leaderboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColorDarkBlue,
        title: Text("LeaderBoard", style: TextStyle(fontFamily: "Sans")),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Padding(
            //   padding: const EdgeInsets.only(top:50.0, right: 30),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: <Widget>[
            //       Icon(Icons.settings)
            //     ],
            //   ),
            // ),
            SizedBox(height: 15.0),
            CircleAvatar(
              backgroundImage: AssetImage('assets/trophy.jpg'),
              backgroundColor: kPrimaryColorDarkBlue,
              radius: 60,
            ),
            SizedBox(height: 10),
            Text('Rashmi Joshi',
                style: TextStyle(
                    color: kPrimaryColorDarkBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            Text(
              '2201 Customers',
              style: TextStyle(
                color: kPrimaryColorDarkBlue,
              ),
            ),
            // SizedBox(height: 20),
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   height: 60,
            //   margin: EdgeInsets.only(right: 15,left: 15,top: 10),
            //   padding: EdgeInsets.all(15),
            //   decoration: BoxDecoration(
            //     border: Border.all(width: 1.5, color: kPrimaryColorDarkBlue),
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(15),
            //       // boxShadow: [
            //       //   BoxShadow(
            //       //       color: Colors.grey,
            //       //       blurRadius: 1.0,
            //       //       offset: Offset(4.0, 4.0),
            //       //       spreadRadius: 1.0)
            //       // ]
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: <Widget>[
            //       Text('Leaderboard of Your Agents', style: TextStyle(color: kPrimaryColorDarkBlue,fontWeight: FontWeight.bold,fontSize: 18.0),),
            //
            //       // Text('FRIENDS',style: TextStyle(color: Colors.grey),),
            //       //
            //       // Text('SCORES',style: TextStyle(color: Colors.grey),),
            //     ],
            //   ),
            // ),
            // SizedBox(height: 20),
            Container(
                width: MediaQuery.of(context).size.width,
                // height: 60,
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: kPrimaryColorDarkBlue),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  // boxShadow: [
                  //   BoxShadow(
                  //       color: Colors.grey,
                  //       blurRadius: 1.0,
                  //       offset: Offset(4.0, 4.0),
                  //       spreadRadius: 1.0)
                  // ]
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 25, bottom: 15),
                        child: Text(
                          'Leaderboard of Your Agents',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: kPrimaryColorDarkBlue,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0),
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: kPrimaryColorDarkBlue,
                    ),
                    ListTile(
                      horizontalTitleGap: 30,
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/logo.jpeg'),
                      ),
                      title: Text(
                        'Aagyaram Paduke',
                        style: TextStyle(fontFamily: "Sans"),
                      ),
                      subtitle: Text('1580 Customers'),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    ListTile(
                      horizontalTitleGap: 30,
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/logo.jpeg'),
                      ),
                      title: Text('Ragina Mahadule',
                          style: TextStyle(fontFamily: "Sans")),
                      subtitle: Text('1340 Customers'),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    ListTile(
                      horizontalTitleGap: 30,
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/logo.jpeg'),
                      ),
                      title: Text('Sarvesh Jagnade',
                          style: TextStyle(fontFamily: "Sans")),
                      subtitle: Text('1320 Customers'),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    ListTile(
                      horizontalTitleGap: 30,
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/logo.jpeg'),
                      ),
                      title: Text('Manoj Khadse',
                          style: TextStyle(fontFamily: "Sans")),
                      subtitle: Text('1110 Customers'),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    ListTile(
                      horizontalTitleGap: 30,
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/logo.jpeg'),
                      ),
                      title: Text('Ravita Bawane',
                          style: TextStyle(fontFamily: "Sans")),
                      subtitle: Text('1050 Customers'),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    ListTile(
                      horizontalTitleGap: 30,
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/logo.jpeg'),
                      ),
                      title: Text('Pranay Malwar',
                          style: TextStyle(fontFamily: "Sans")),
                      subtitle: Text('1020 Customers'),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    ListTile(
                      horizontalTitleGap: 30,
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/logo.jpeg'),
                      ),
                      title: Text('Swapnil Kambde',
                          style: TextStyle(fontFamily: "Sans")),
                      subtitle: Text('1010 Customers'),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    ListTile(
                      horizontalTitleGap: 30,
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/logo.jpeg'),
                      ),
                      title: Text('Sanjog Meshram',
                          style: TextStyle(fontFamily: "Sans")),
                      subtitle: Text('1000 Customers'),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    ListTile(
                      horizontalTitleGap: 30,
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/logo.jpeg'),
                      ),
                      title: Text('Ujwala Dhawde',
                          style: TextStyle(fontFamily: "Sans")),
                      subtitle: Text('920 Customers'),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    ListTile(
                      horizontalTitleGap: 30,
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/logo.jpeg'),
                      ),
                      title: Text('Shreya Shahu',
                          style: TextStyle(fontFamily: "Sans")),
                      subtitle: Text('810 Customers'),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    ListTile(
                      horizontalTitleGap: 30,
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/logo.jpeg'),
                      ),
                      title: Text('Prachi Nema',
                          style: TextStyle(fontFamily: "Sans")),
                      subtitle: Text('740 Customers'),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
