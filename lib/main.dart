import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:localization/localization.dart';
import 'package:zap_flutter/Authentication/localString.dart';
import 'Authentication/SplashScreen.dart';
import 'Authentication/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Z.A.P',
      theme: ThemeData(
        textTheme: TextTheme(
          title: TextStyle(color: Colors.white, fontFamily: "Sans"),
          body1: TextStyle(color: Colors.white, fontFamily: "Sans"),
          body2: TextStyle(color: Colors.white, fontFamily: "Sans"),
          subtitle: TextStyle(color: Colors.white, fontFamily: "Sans"),
        ),
        canvasColor: Colors.white,
        primaryColor: kPrimaryColorDarkBlue,
      ),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'),
        const Locale('hi'),
        const Locale('mr'),
      ],


      debugShowCheckedModeBanner: false,
      translations: LocaleString(),
      locale: Locale('en', 'US'),
      home: Splash(),
    );
  }
}
