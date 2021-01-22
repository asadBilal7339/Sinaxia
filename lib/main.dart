import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sinaxia_app/constants.dart';
import 'package:sinaxia_app/ui/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SinaxiaApp(),
      //home: FingerPrint(),
      //home: Home(),
      //home: UploadFile(),
      //home: Dashboard(),
      //home: Myhome(),
      //home: FilesFolder(),
    );
  }
}
class SinaxiaApp extends StatefulWidget {
  @override
  _SinaxiaAppState createState() => _SinaxiaAppState();
}

class _SinaxiaAppState extends State<SinaxiaApp> {
    @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LogIn())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color:orange,
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.width*0.85,
            width: MediaQuery.of(context).size.width*0.85,
            decoration: BoxDecoration(
              color: white.withOpacity(0.4),
              borderRadius: BorderRadius.circular(300),
              
            ),
            child: Center(
              child: Container(
                height: MediaQuery.of(context).size.width*0.73,
                width: MediaQuery.of(context).size.width*0.73,
                decoration: BoxDecoration(
                color: white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(300),
                ),
                child: Center(
                  child: Container(
                  height: MediaQuery.of(context).size.width*0.61,
                  width: MediaQuery.of(context).size.width*0.61,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(300),
                  ),
                  child: Center(
                    child: Image.asset(
                      'asset/logo/Logo_SINAXIA.png',
                      scale: 3,
                      )
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}