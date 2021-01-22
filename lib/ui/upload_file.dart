import 'package:flutter/material.dart';
import 'package:sinaxia_app/constants.dart';

class UploadFile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
              child: Column(
                  children: <Widget>[
                    AppbarWithIconText(
                      width: width, 
                      text: 'Upload file', 
                      iconBtn: IconButton(
                      padding: EdgeInsets.only(left: width*0.05),
                      icon: Icon(Icons.arrow_back, color: white,size: 25,), 
                      onPressed: (){
                        Navigator.pop(context);
                        print('Asad Bilal');
                        },
                      ),
                    ),
                    Container(
                      width: width,
                      height: height*0.81,
                      color: colorBackGround,
                      padding: EdgeInsets.only(bottom: 5,left: 20,right: 20),
                      margin: EdgeInsets.only(bottom: 10),
                      child: ListView(children: [
                        UploadFileContainer(width: width,imgUrl: 'asset/shoes/1.png',),
                        UploadFileContainer(width: width,imgUrl: 'asset/shoes/2.png',),
                        UploadFileContainer(width: width,imgUrl: 'asset/shoes/3.png',),
                        UploadFileContainer(width: width,imgUrl: 'asset/shoes/4.png',),
                        UploadFileContainer(width: width,imgUrl: 'asset/shoes/5.png',),
                        UploadFileContainer(width: width,imgUrl: 'asset/shoes/6.png',),
                        UploadFileContainer(width: width,imgUrl: 'asset/shoes/7.png',),
                        UploadFileContainer(width: width,imgUrl: 'asset/shoes/8.png',),
                        UploadFileContainer(width: width,imgUrl: 'asset/shoes/9.png',),
                        UploadFileContainer(width: width,imgUrl: 'asset/shoes/10.png',),
                      ],
                      ),
                    ),
                  ],
                ),
      ),
    );
  }
}
