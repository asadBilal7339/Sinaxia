import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sinaxia_app/constants.dart';
import 'package:sinaxia_app/ui/folder_file.dart';
import 'package:sinaxia_app/ui/login.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width*0.65,
      padding: EdgeInsets.only(top: width*0.07,left: width*0.06, right: width*0.05),
      color: orange,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              InkWell(child: Icon(Icons.menu, color: white, size: 48,),
                onTap: (){Navigator.pop(context);},
              ),
              Container(
                height: 40,
                width: 40,
                margin: EdgeInsets.symmetric(horizontal: width*0.07),
                decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(Icons.person, color: orange,),
              ),
              Column(
                children: <Widget>[
                  Text(
                    'M.Asad Bilal',
                    style: TextStyle(
                      color: white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(
                      color: white,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: width*0.25,),
          SidebarWithIconAndLable(
            width: width,
            preIcon:Icons.folder,
            lable:"Tableau De Bord", 
            //postIcon: null
            icnBtn: IconButton(
              onPressed: (){},
              icon: Icon(Icons.keyboard_arrow_down,color:white),
            ),
          ),
          SidebarWithIconAndLable(
            width: width,
            preIcon:Icons.folder,
            lable:"Gestion Des Dossiers", 
            //postIcon: Icons.keyboard_arrow_down,
            icnBtn: IconButton(
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => FilesFolder()
                ));
              },
              icon: Icon(Icons.keyboard_arrow_down,color:white),
            ),
          ),
          SidebarWithIconAndLable(
            width: width,
            preIcon:Icons.menu,
            lable:"Constat", 
            //postIcon: null
            icnBtn: IconButton(
              onPressed: (){},
              icon: Icon(Icons.keyboard_arrow_down,color:white),
            ),
          ),
          SidebarWithIconAndLable(
            width: width,
            preIcon:Icons.settings,
            lable:"Parametres", 
            //postIcon: Icons.keyboard_arrow_down,
            icnBtn: IconButton(
              onPressed: (){},
              icon: Icon(Icons.keyboard_arrow_down,color:white),
            ),
          ),
          SidebarWithIconAndLable(
            width: width,
            preIcon:Icons.folder,
            lable:"Gestion Des Utilisteurs", 
            //postIcon: Icons.keyboard_arrow_down,
            icnBtn: IconButton(
              onPressed: (){},
              icon: Icon(Icons.keyboard_arrow_down,color:white),
            ),
          ),

          SizedBox(height: width*0.25,),
          Padding(
            padding: EdgeInsets.only(left: width*0.05),
            child: Row(
              children: [
                Icon(Icons.settings, color: white, size: 20,),
                Text('Sttings', style: TextStyle(color:white,fontSize:15,),),
                Container(
                  height: 20,
                  width: 2.5,
                  color: white,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                ),
                Icon(Icons.person_outline, color: white,),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (c) => LogIn()),
                  (route) => false);
                  },
                  child: Text('Log out', style: TextStyle(color:white,fontSize:15,),))
              ],
            ),
          ),
        ],
      ),


      
    );
  }
}

class SidebarWithIconAndLable extends StatelessWidget {
  SidebarWithIconAndLable({
    Key key,
    @required this.width, this.lable, this.preIcon, this.icnBtn,
  }) : super(key: key);

  final double width;
  final String lable;
  final IconData preIcon;
  final IconButton icnBtn;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width*0.14,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(preIcon, color: white, size: 23,),
          Container(
            height: width*0.08,
            width: width*0.42,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: width*0.01),
            child: Text(
              lable,
              style: TextStyle(
                color: white,
                fontSize: 16
              ),
            ),
          ),
          //Icon(postIcon, color: white, ),
          icnBtn,
        ],
      ),
    );
  }
}