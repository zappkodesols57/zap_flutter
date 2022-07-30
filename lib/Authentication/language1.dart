
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zap_flutter/Authentication/Onboarding_Screen1.dart';
import 'package:zap_flutter/Authentication/constants.dart';
class Language extends StatefulWidget {
  const Language({Key key}) : super(key: key);

  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  final List locale =[
    {'name':'ENGLISH','locale': Locale('en','US')},
    {'name':'मराठी','locale': Locale('mr','IN')},
    {'name':'हिंदी','locale': Locale('hi','IN')},
  ];

  updateLanguage(Locale locale){
    Get.back();
    Get.updateLocale(locale);
  }
  bool right = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: MediaQuery.of(context).size.height/3.5,
                width: MediaQuery.of(context).size.width/1,
                decoration: BoxDecoration(
                    color: kPrimaryColorDarkBlue,
                    borderRadius: BorderRadius.circular(20.0)
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.translate_rounded,color: Colors.white,size: 80.0,),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text("Pick Your Comfort Language",style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold
                    ),),
                  ],
                )),

            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(15.0),
              width: double.maxFinite,
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(child: Text(locale[index]['name'],textAlign: TextAlign.center,style: TextStyle(
                          color:Colors.blue,
                        ),),onTap: (){
                          print(locale[index]['name']);
                          updateLanguage(locale[index]['locale']);
                        },),
                      );
                  }, separatorBuilder: (context,index){
                return Divider(
                  color: Colors.blue,
                );
              }, itemCount: locale.length
              ),
            ),
            MaterialButton(

                color: kPrimaryColorDarkBlue,
                child: Text("Next",style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold
                ),),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>App()));
                })
          ],
        ),
      ),
    );
  }
}
