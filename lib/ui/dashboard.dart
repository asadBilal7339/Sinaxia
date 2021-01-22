import 'package:flutter/material.dart';
import 'package:sinaxia_app/BarChart/bar_chart.dart';
import 'package:sinaxia_app/constants.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:sinaxia_app/sidebar/side_bar.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int myIndex=0;

  List<Widget> chart = [
    ShowBarChart(),
    ShowBarChart(),
    ShowBarChart(),
    ShowBarChart(),
  ];
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _globalKey,
      drawer: Drawer(
        child: SideBar(),
      ),
      backgroundColor: colorBackGround,
      body: SingleChildScrollView(
              child: Stack(
                children:[
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    height: width*0.8,
                    width: width,
                    //color: Colors.yellow,
                    //child: Image.asset('asset/logo/f5.jpg', fit: BoxFit.fill,),
                    child: Carousel(
                      images: [
                        ExactAssetImage('asset/logo/f5.jpg'),
                        ExactAssetImage('asset/logo/f1.jpg'),
                        ExactAssetImage('asset/logo/f3.jpg'),
                        ExactAssetImage('asset/logo/f4.jpg'),
                        ExactAssetImage('asset/logo/f1.jpg'),
                      ],
                      dotIncreaseSize: 1.1,
                      dotIncreasedColor: white,
                      showIndicator: true,
                      dotSize: 8,
                      dotSpacing: 20,
                      dotColor:Colors.white54,
                      indicatorBgPadding: width*0.15,//70,
                      dotBgColor: Colors.transparent,
                      //borderRadius: true,
                    ),
                  ),
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
              	    children: [
              Container(
                color: orange.withOpacity(0.4),
                  height: width*0.28,
                  width: width,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: (){
                          print('Asad Bilal');
                          _globalKey.currentState.openDrawer();
                        },
                        icon: Icon(Icons.menu, color:white,size: 45,),
                      ),
                      Image.asset(
                        'asset/logo/Logo_sinaxia_2016.png',
                        scale: 11,
                        color: Colors.white,
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
                Padding(
                  padding: EdgeInsets.only(top: width*0.08, left: width*0.08,bottom: width*0.23),
                  child: Text('Dashboard', 
                  style: TextStyle(
                    fontSize: 34, 
                    fontWeight: FontWeight.bold, 
                    color: white
                  ),
              ),
                ),
                Container(
                  height: width*0.3,
                  //width: width+width,
                  padding: EdgeInsets.only(left: width*0.08),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      DashboardListView(width: width, nameFile: 'Dossiers Total', totalNumber: '105',),
                      DashboardListView(width: width, nameFile: 'Constat', totalNumber: '05',),
                      DashboardListView(width: width, nameFile: 'Fichiers', totalNumber: '5k',),
                      DashboardListView(width: width, nameFile: 'Dossiers Total', totalNumber: '105',),
                      DashboardListView(width: width, nameFile: 'Constat', totalNumber: '05',),
                      DashboardListView(width: width, nameFile: 'Fichiers', totalNumber: '5k',),
                      DashboardListView(width: width, nameFile: 'Dossiers Total', totalNumber: '105',),
                      DashboardListView(width: width, nameFile: 'Constat', totalNumber: '05',),
                      DashboardListView(width: width, nameFile: 'Fichiers', totalNumber: '5k',), 
                    ],
                  ),
                ),
                Container(
                  height: width,
                  width: width,
                  child: Column(
                    children: [
                      Center(
                  child: Container(
                    height: width*0.87,
                    width: width*0.87,
                    child: PageView(
                      children: chart,
                      onPageChanged: (index){
                        setState(() {
                          myIndex=index;
                        });
                      },
                    ),
                  ),
                ),
                CarouselIndicator(
                  count: chart.length,
                  index: myIndex,
                  color: Colors.grey[400],
                  activeColor: Colors.grey[900],
                  height: 7,
                  width: 7,
                  space: 18,
                ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
