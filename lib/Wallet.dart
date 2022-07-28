import 'package:flutter/material.dart';
import 'package:zap_flutter/Authentication/background.dart';
import 'Authentication/constants.dart';
import 'package:get/get.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key key}) : super(key: key);

  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'wallet'.tr,
            style: TextStyle(fontFamily: "Sans"),
          ),
          backgroundColor: kPrimaryColorBlue,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context, true);
            },
          ),
        ),
        body: Background(
          height: MediaQuery.of(context).size.height / 1.13,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildCreditCard(
                    cardHolder: "01234",
                    cardNumber: "Rashmi Joshi",
                    cardExpiration: "---"),
                SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    // elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                          color: kPrimaryColorDarkBlue,
                          width: 0.8,
                        )),
                    child: ListTile(
                      leading: Container(
                        height: 40.0,
                        width: 40.0,
                        child: Image.asset("assets/logo.jpeg"),
                      ),
                      title: Text('today_payment'.tr,
                          style: TextStyle(fontFamily: "Sans")),
                      trailing: Text(
                        "Rs. 200.00",
                        style: TextStyle(color: kPrimaryColorDarkBlue),
                      ),
                      subtitle: Text('earn_web'.tr,
                          style: TextStyle(color: kPrimaryColorDarkBlue)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    // elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                          color: kPrimaryColorDarkBlue,
                          width: 0.8,
                        )),
                    child: ListTile(
                      leading: Container(
                        height: 40.0,
                        width: 40.0,
                        child: Image.asset("assets/logo.jpeg"),
                      ),
                      title: Text('today_payment'.tr,
                          style: TextStyle(fontFamily: "Sans")),
                      trailing: Text(
                        "Rs. 200.00",
                        style: TextStyle(color: kPrimaryColorDarkBlue),
                      ),
                      subtitle: Text('earn_dm'.tr,
                          style: TextStyle(color: kPrimaryColorDarkBlue)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    // elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                          color: kPrimaryColorDarkBlue,
                          width: 0.8,
                        )),
                    child: ListTile(
                      leading: Container(
                        height: 40.0,
                        width: 40.0,
                        child: Image.asset("assets/logo.jpeg"),
                      ),
                      title: Text('today_payment'.tr,
                          style: TextStyle(fontFamily: "Sans")),
                      trailing: Text(
                        "Rs. 200.00",
                        style: TextStyle(color: kPrimaryColorDarkBlue),
                      ),
                      subtitle: Text('earn_sd'.tr,
                          style: TextStyle(color: kPrimaryColorDarkBlue)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    // elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                          color: kPrimaryColorDarkBlue,
                          width: 0.8,
                        )),
                    child: ListTile(
                      leading: Container(
                        height: 40.0,
                        width: 40.0,
                        child: Image.asset("assets/logo.jpeg"),
                      ),
                      title: Text(
                        'today_payment'.tr,
                        style: TextStyle(fontFamily: "Sans"),
                      ),
                      trailing: Text(
                        "Rs. 200.00",
                        style: TextStyle(color: kPrimaryColorDarkBlue),
                      ),
                      subtitle: Text('earn_gd'.tr,
                          style: TextStyle(color: kPrimaryColorDarkBlue)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Card _buildCreditCard(
      {@required String cardNumber,
      @required String cardHolder,
      @required String cardExpiration}) {
    return Card(
        elevation: 15.0,
        // color: color,
        margin: EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        child: Stack(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage('assets/mem.jpg'),
                    // image: NetworkImage("https://render.fineartamerica.com/rendered/default/greeting-card/artworkimages/medium/1/egyptian-blue-abstract-low-polygon-background-aloysius-patrimonio.jpg?&targetx=0&targety=-100&imagewidth=700&imageheight=700&modelwidth=700&modelheight=500&backgroundcolor=0E4C93&orientation=0"),
                    fit: BoxFit.cover),
              ),
              padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  /* Here we are going to place the _buildLogosBlock */
                  _buildLogosBlock(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    /* Here we are going to place the Card number */
                    child: Text(
                      '$cardNumber',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Sans'),
                    ),
                  ),
                  Container(
                    child: Text(
                      "ME Wallet",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Sans',
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      /* Here we are going to place the _buildDetailsBlock */
                      _buildDetailsBlock(
                        label: 'ME ID.',
                        value: cardHolder,
                      ),
                      _buildDetailsBlock(
                        label: 'SINCE',
                        value: cardExpiration,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(14.0),
            //   child: Align(
            //     // heightFactor:  15.0,
            //       alignment: Alignment.topLeft,
            //       child: InkWell(
            //         child: Text("RENEW >",
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontWeight: FontWeight.bold,
            //           ),),
            //         onTap: (){},
            //       )
            //   ),
            // ),
          ],
        ));
  }

  Row _buildLogosBlock() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(
          width: 45,
        ),
        // Image.asset(
        //   "assets/logo.jpeg",
        //   color: Colors.white,
        //   height: 45,
        //   width: 75,
        // ),
      ],
    );
  }

  Column _buildDetailsBlock({@required String label, @required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '$label',
          style: TextStyle(
              fontFamily: 'Sans',
              color: Colors.grey,
              fontSize: 9,
              fontWeight: FontWeight.bold),
        ),
        Text(
          '$value',
          style: TextStyle(
              fontFamily: 'Sans',
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
