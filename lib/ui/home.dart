import 'package:flutter/material.dart';
import 'package:sinaxia_app/constants.dart';
import 'package:sinaxia_app/ui/dashboard.dart';
import 'package:sinaxia_app/ui/upload_file.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: colorBackGround,
      body: Column(
        children: <Widget>[
          AppbarWithIconText(
            width: width,
            text: 'Home',
            iconBtn: IconButton(
              padding: EdgeInsets.only(left: width*0.05),
              icon: Icon(Icons.menu, color: white,size: 45,), 
              onPressed: (){
                print('Asad Bilal');
                Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => Dashboard()
                ));
              },
            ), 
          ),
          SizedBox(height: width*0.15),
          ContainerWthIconText(icon: Icons.play_circle_fill, text: 'Upload video', width: width*0.85,),
          ContainerWthIconText(icon: Icons.camera_alt_rounded, text: 'Capture image', width: width*0.85,),
          InkWell(
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => UploadFile()
                ));
            },
            child: ContainerWthIconText(icon: Icons.folder_rounded, text: 'Upload file', width: width*0.85,)),
        ],
      ),
      
    );
  }
}
