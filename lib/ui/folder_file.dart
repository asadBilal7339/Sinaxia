import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sinaxia_app/constants.dart';

 class FilesFolder extends StatefulWidget {
  @override
  _FilesFolderState createState() => _FilesFolderState();
}

class _FilesFolderState extends State<FilesFolder> {
     GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
     bool checked = false;
     int number=1;
   @override
   Widget build(BuildContext context) {
        var width = MediaQuery.of(context).size.width;
        var height = MediaQuery.of(context).size.height;
        
     return Scaffold(
       backgroundColor: colorBackGround,
       body: SingleChildScrollView(
                child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
               Container(
           color: orange,
             height: width*0.28,
             width: width,
             padding: EdgeInsets.symmetric(horizontal: 20),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 InkWell(
                   child: Icon(Icons.menu, color:white,size: 45,),
                   onTap: (){
                      _globalKey.currentState.openDrawer();
                   },
                 ),
                 
                 Text(
                   'Gestion des dossiers',
                   style: TextStyle(
                     color: white,
                     fontSize: 22,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
                 Container(
                   height: 50,
                   width: 50,
                   margin: EdgeInsets.only(right: 10),
                   decoration: BoxDecoration(
                     color: white,
                     borderRadius: BorderRadius.circular(30),
                   ),
                   child: Icon(Icons.person, color: orange,),
                 ),
               ],
             ),
           ),
             Container(
               width: width*0.7,
               height: width*0.12,
               margin: EdgeInsets.only(left: width*0.06
               ),
               //color: orange,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
          Row(
            children: [
              Icon(Icons.search,color:blue,size:20),
              Text(
                'Advanced Search',
                style: TextStyle(
                 fontSize: 10,
                 fontWeight: FontWeight.bold,
                 shadows: [
                   Shadow(
                   color: blue,
                   offset: Offset(0, -2))
                 ],
                 color: Colors.transparent,
                 decoration:
                 TextDecoration.underline,
                 decorationColor: blue,
                 decorationThickness: 2,
               ),
             ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.folder,color:blue,size:20),
              Text(
                'Add new folder',
                style: TextStyle(
                 fontSize: 10,
                 fontWeight: FontWeight.bold,
                 shadows: [
                   Shadow(
                   color: blue,
                   offset: Offset(0, -2))
                 ],
                 color: Colors.transparent,
                 decoration:
                 TextDecoration.underline,
                 decorationColor: blue,
                 decorationThickness: 2,
               ),
             ),
            ],
          ),
                 ],
               ),
             ),
             Container(
         height: width*0.15,
         width: width*0.88,
         alignment: Alignment.center,
         margin: EdgeInsets.symmetric(horizontal: width*0.06),
         padding: EdgeInsets.symmetric(horizontal:width*0.02),
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
             prefixIcon: Icon(Icons.search, color: blue, size: 18),
             hintText: 'Search',
             hintStyle: TextStyle(color: Colors.grey[350]),
             //focusColor: blue,
             border: InputBorder.none,
           ),
         ),
                ),
                SizedBox(height: 10,),
                Container(
         height: width*0.18,
         width: width*0.88,
         alignment: Alignment.center,
         margin: EdgeInsets.symmetric(horizontal: width*0.06),
         padding: EdgeInsets.symmetric(horizontal:width*0.06),
         decoration: BoxDecoration(
           color: orange,
           borderRadius: BorderRadius.circular(12)
         ),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text(
               "Folder\nneme", 
               style: TextStyle(
                 color: white,
                 fontWeight: FontWeight.w700
               ),
             ),
             Container(
               height: 40,
               width: 1.5,
               color: white,
               margin: EdgeInsets.symmetric(horizontal: 10),
             ),
           Text(
             "Number\nof files",
             style: TextStyle(
                 color: white,
                 fontWeight: FontWeight.w700
               ),
           ),
           Container(
               height: 40,
               width: 1.5,
               color: white,
               margin: EdgeInsets.symmetric(horizontal: 10),
             ),
             Text(
               "Status",
               style: TextStyle(
                 color: white,
                 fontWeight: FontWeight.w700
               ),
             ),
           ],
         ),
                ),
                Container(
                  width: width*0.88,
                  height: height*0.55,
                  //color: orange,
                  //alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(top:15),
                  margin: EdgeInsets.symmetric(horizontal: width*0.06,),
                  child: ListView(
                    padding: EdgeInsets.all(0),
                    //scrollDirection: Axis.vertical,
                    children: [
                      ListviewFlie(width: width),
                      ListviewFlie(width: width),
                      ListviewFlie(width: width),
                      ListviewFlie(width: width),
                      ListviewFlie(width: width),
                      ListviewFlie(width: width),
                    ],
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: width*0.06),
                //   child: SizedBox(
                //     height: height*0.5,
                //     width: width*0.88,
                //     child: ListView(
                //       scrollDirection: Axis.vertical,
                //       children: [
                //         ListviewFlie(width: width),
                //         ListviewFlie(width: width),
                //         ListviewFlie(width: width),
                //         ListviewFlie(width: width),
                //         ListviewFlie(width: width),
                //         ListviewFlie(width: width),
                //       ],
                //     ),
                //   ),
                // ),
      // Container(
      //  width: width,
      //  alignment: Alignment.centerRight,
      //  padding: EdgeInsets.only(right:width*0.08),
      //  margin: EdgeInsets.only(top: width*0.03),
      //  child: Row(
      //    crossAxisAlignment: CrossAxisAlignment.center,
      //    mainAxisAlignment: MainAxisAlignment.end,
      //    children: [
      //      InkWell(
      //        onTap: (){
      //          print('asad');
      //          if(number==1){
      //            return number;
      //          } else {
      //            setState(() {
      //            number--;
      //          });
      //          }

      //        },
      //          child: Text(
      //          'Previous',
      //          style: TextStyle(
      //            color: blue,

      //          ),
      //        ),
      //      ),
      //      Container(
      //        height: 40,
      //        width: 40,
      //        alignment: Alignment.center,
      //        margin: EdgeInsets.symmetric(horizontal: width*0.04),                      
      //        decoration: BoxDecoration(
      //          color: orange,
      //          borderRadius: BorderRadius.circular(8),
      //        ),
      //        child: Text(
      //          number.toString(),
      //          style: TextStyle(
      //            color: white,
      //          ),
      //        ),
      //      ),
      //      InkWell(
      //        onTap: (){
      //          print('bilal');
      //          setState(() {
      //            number++;
      //          });
      //        },
      //        child: Text(
      //          'Next',
      //          style: TextStyle(
      //            color: blue,

      //          ),
      //        ),
      //      ),
      //    ],
      //  ),
      //     ),

                
             ],
           ),
       ),
         bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: EdgeInsets.only(right: width*0.06,bottom: width*0.02,top:width*0.02),
            child: Row(
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.end,
         children: [
             InkWell(
               onTap: (){
                 print('asad');
                 if(number==1){
                   return number;
                 } else {
                   setState(() {
                   number--;
                 });
                 }

               },
                 child: Text(
                 'Previous',
                 style: TextStyle(
                   color: blue,

                 ),
               ),
             ),
             Container(
               height: 40,
               width: 40,
               alignment: Alignment.center,
               margin: EdgeInsets.symmetric(horizontal: width*0.04),                      
               decoration: BoxDecoration(
                 color: orange,
                 borderRadius: BorderRadius.circular(8),
               ),
               child: Text(
                 number.toString(),
                 style: TextStyle(
                   color: white,
                 ),
               ),
             ),
             InkWell(
               onTap: (){
                 print('bilal');
                 setState(() {
                   number++;
                 });
               },
               child: Text(
                 'Next',
                 style: TextStyle(
                   color: blue,

                 ),
               ),
             ),
         ],
       ),
          ),

          ),
     );

   }
}



