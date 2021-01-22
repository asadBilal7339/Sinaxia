import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sinaxia_app/constants.dart';
import 'package:sinaxia_app/ui/home.dart';
class FingerPrint extends StatefulWidget {
  @override
  _FingerPrintState createState() => _FingerPrintState();
}

class _FingerPrintState extends State<FingerPrint> {
  
  @override
  Widget build(BuildContext context) {
        var width = MediaQuery.of(context).size.width;

    return Scaffold(
       backgroundColor: colorBackGround,
        body: Column(
          children: <Widget>[
            AppBarWithLogo(width: width),
            SizedBox(height: width*0.25),
            InkWell(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => Home()
                ));
              },
              child: Image.asset('asset/logo/fingerprint.png', scale: 7, color: orange.withOpacity(0.4),)),
            SizedBox(height: width*0.05),
            Text('Touch ID to Open', style: TextStyle(color: blue, fontSize: 19, fontWeight: FontWeight.w600),),
            SizedBox(height: width*0.25),
            FlatButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              color: orange,
              padding: EdgeInsets.symmetric(vertical: width*0.065,horizontal: width*0.3), 
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Text('CANCEL', style: TextStyle(color: white, fontSize: 16),)
            ),
          ],
      ),
    );
  }
}