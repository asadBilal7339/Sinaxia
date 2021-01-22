import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sinaxia_app/constants.dart';
import 'package:sinaxia_app/ui/finger_print.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    //var height1 = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: colorBackGround,
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            AppBarWithLogo(width: width),
            SizedBox(
              height: width*0.2,
            ),
            Container(
              height: width*0.18,
              width: width*0.85,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal:width*0.05),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(12)
              ),
              child: TextFormField(
                style: TextStyle(
                  fontSize: 18,
                  color: blue,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail, color: blue, size: 16),
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: blue,
                    fontSize: 22,
                  ),
                  //focusColor: blue,
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: width*0.03,
            ),
            Container(
              height: width*0.18,
              width: width*0.85,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal:width*0.05),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(12)
              ),
              child: TextFormField(
                obscureText: true,
                style: TextStyle(
                  fontSize: 18,
                  color: blue,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock, color: blue, size: 16),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: blue,
                    fontSize: 22,
                  ),
                  //focusColor: blue,
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: width*0.2,
            ),
            FlatButton(
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => FingerPrint()
                ));
              },
              color: orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)),
              padding: EdgeInsets.symmetric(vertical: width*0.065,horizontal: width*0.3), 
              child: Text('LOGIN', style: TextStyle(color: white, fontSize: 16),),
            ),
            SizedBox(height: width*0.05,),
            InkWell(
              onTap: (){print('Asad Bilal');},
              splashColor: colorBackGround,
              highlightColor: colorBackGround,
              child: Text('Forget password?', style: TextStyle(color: blue, fontSize: 16),)
            ),
          ],
        ),
      ),
    );
  }
}
