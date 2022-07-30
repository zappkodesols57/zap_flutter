import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:zap_flutter/Authentication/language1.dart';
import 'package:zap_flutter/main.dart';

import 'Onboarding_Screen1.dart';
import 'login.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new Language(),
      image: new Image.asset('assets/images/zaplogo.jpg'),
      loadingText: Text("Loading"),
      photoSize: 174.0,
      loaderColor: Colors.orange,
    );
  }
}
