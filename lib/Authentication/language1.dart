
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../constants.dart';
import 'Onboarding_Screen1.dart';
class Language extends StatefulWidget {

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
  String selected = "";
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
                    color: kPrimaryColorBlue,
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
                    Text("Pick Your Comfort Language",textAlign: TextAlign.center,style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                    ),),
                  ],
                )),

            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(15.0),
              width: double.maxFinite,
              child:
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:RaisedButton(
                          child: new Text(locale[index]['name']),
                          textColor:
                          selected == locale[index]['name'] ? Colors.white : Colors.black,
                          color: selected == locale[index]['name']
                              ? (selected == locale[index]['name'] ? kPrimaryColorBlue : Colors.white)
                              : Colors.white,
                          onPressed: () => {
                            setState(() {
                              selected = locale[index]['name'];
                            }),
                            print(locale[index]['name']),
                            updateLanguage(locale[index]['locale']),
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                        ),
                      );
                  }, separatorBuilder: (context,index){
                return Divider(
                  color: Colors.blue,
                );
              }, itemCount: locale.length
              ),
            ),
            MaterialButton(
                color: kPrimaryColorYellow,
                child: Text("Next",style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold
                ),),
                onPressed: (){
                  // if(selected == selected) {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => App()));
                  // }
                })
          ],
        ),
      ),
    );
  }
}
