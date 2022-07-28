import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import '../HomeScreen.dart';

class Guideline extends StatefulWidget {
  const Guideline({Key key}) : super(key: key);

  @override
  _GuidelineState createState() => _GuidelineState();
}

class _GuidelineState extends State<Guideline> {
  @override
  void initState() {
    //   super.initState();
    //  new Future.delayed( const Duration(seconds: 35), () =>
    //      Navigator.pushReplacement( context,
    //        MaterialPageRoute(builder: (context) => HomeScreen()),
    //      ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.bottomRight, children: <Widget>[
        ImageSlideshow(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          initialPage: 0,
          indicatorColor: Colors.deepOrange,
          indicatorBackgroundColor: Colors.grey,
          // onPageChanged: (value) {
          //   debugPrint('Page changed: $value');
          // },
          autoPlayInterval: 6000,
          isLoop: false,
          children: [
            Image.asset(
              'assets/zap new 01.gif',
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height,
            ),
            Image.asset(
              'assets/zap new 02.gif',
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height,
            ),
            Image.asset(
              'assets/zap new 03.gif',
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height,
            ),
            Image.asset(
              'assets/zap new 04.gif',
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height,
            ),
            Image.asset(
              'assets/zap new 05.gif',
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height,
            ),
            Image.asset(
              'assets/zap new 06.gif',
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height,
            ),
            Image.asset(
              'assets/zap new 07.gif',
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height,
            ),
          ],
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.all(5.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    color: Colors.orange,
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Bottomnavigation())),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, bottom: 8.0, right: 65, left: 65),
                      child: Text(
                        "Skip",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ]),
    );
  }
}
