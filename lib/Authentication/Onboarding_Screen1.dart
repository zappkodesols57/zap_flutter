import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../constants.dart';
import 'login.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      title: 'Introduction screen',
      debugShowCheckedModeBanner: false,
      home: OnBoardingPage(),
    );
  }
}

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => LoginScreen()),
    );
  }

  Widget _buildFullscreenImage() {
    return Image.asset(
      'assets/fullscreen.jpg',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = 400]) {
    return Image.asset('assets/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(
      fontSize: 19.0,
    );

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.w700,
          color: kPrimaryColorBlue),
      bodyTextStyle: const TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.normal,
          color: kPrimaryColorBlue),
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      animationDuration: 1,
      key: introKey,
      globalBackgroundColor: Colors.white,

      globalFooter: SizedBox(
        width: double.infinity,
        height: 60,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [kPrimaryColorBlue, Colors.orange],
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter),
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          child: ElevatedButton(
            child: Text(
              'Let\'s go right away!'.tr,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            onPressed: () => _onIntroEnd(context),
          ),
        ),
      ),
      pages: [
        PageViewModel(
          title: "ZAP App".tr,
          body:
              "Instead of having to buy an entire share, invest any amount you want.".tr,
          image: _buildImage('images/zaplogo.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Let\'s make customers to together".tr,
          body: "See All Services Provided by ZAP App.".tr,
          image: _buildImage('screen 01 zap.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Let\'s Fill the Form".tr,
          body: "Fill the form for services you have applied for.".tr,
          image: _buildImage('screen 02 zap.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Payments".tr,
          body:
              "Here do payment for your services you have applied for after that you can download your certificate.".tr,
          image: _buildImage('screen 03 zap.jpg'),
          // decoration: pageDecoration.copyWith(
          //   contentMargin: const EdgeInsets.symmetric(horizontal: 16),
          //   fullScreen: true,
          //   bodyFlex: 2,
          //   imageFlex: 3,
          // ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Certificate".tr,
          body:
              "After completion of your payment process you can be able to download the certificate.".tr,
          image: _buildImage('screen 04 zap.jpg'),
          // footer: ElevatedButton(
          //   onPressed: () {
          //     introKey.currentState?.animateScroll(0);
          //   },
          //   child: const Text(
          //     'FooButton',
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   style: ElevatedButton.styleFrom(
          //     primary: Colors.lightBlue,
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(8.0),
          //     ),
          //   ),
          // ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Title of last page - reversed".tr,
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Text("Click on ".tr, style: bodyStyle),
              Icon(Icons.edit),
              Text(" to edit a post".tr, style: bodyStyle),
            ],
          ),
          decoration: pageDecoration.copyWith(
            bodyFlex: 2,
            imageFlex: 4,
            bodyAlignment: Alignment.bottomCenter,
            imageAlignment: Alignment.topCenter,
          ),
          image: _buildImage('images/zaplogo.jpg'),
          reverse: true,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip:  Text('Skip'.tr,
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
      next: const Icon(Icons.arrow_forward),
      done: Text('Done'.tr,
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.white,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        gradient: LinearGradient(
            colors: [Colors.orange, Colors.orange],
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
