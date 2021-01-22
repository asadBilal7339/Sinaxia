import 'package:flutter/material.dart';

Color orange = Color(0xffe94e1b);
Color blue = Color(0xff215377);
Color colorBackGround = Color(0xFFE7EBEE);
Color white = Colors.white;

//
//
class AppBarWithLogo extends StatelessWidget {
  AppBarWithLogo({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width*0.32,
      width: width,
      color: orange,
      child: Image.asset(
        'asset/logo/Logo_sinaxia_2016.png',
        scale: 11,
        color: Colors.white,
        ),
    );
  }
}


//
//

class AppbarWithIconText extends StatelessWidget {
  AppbarWithIconText({
    Key key,
    @required this.width, this.text, this.iconBtn,
  }) : super(key: key);

  final double width;
  final String text;
  //final IconData icon;
  final IconButton iconBtn;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width*0.3,
      width: width,
      color: orange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          iconBtn,
          Padding(
            padding: EdgeInsets.only(left: width*0.3),
            child: Text(text, style: TextStyle(color: white, fontSize: 20, fontWeight: FontWeight.w700),),
          ),
        ],
      ),
    );
  }
}




//
//
class ContainerWthIconText extends StatelessWidget {
  ContainerWthIconText({
    Key key,
    @required this.width, this.icon, this.text,
  }) : super(key: key);

  final double width;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width*0.95,
      height: width*0.35,
      padding: EdgeInsets.symmetric(vertical: 5),
      margin: EdgeInsets.only(bottom: width*0.04),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(icon, size: 50, color: orange,),
          Text(text, style: TextStyle(fontSize: 22, color: blue, fontWeight: FontWeight.w700),)
        ],
      ),
    );
  }
}

//
//

class UploadFileContainer extends StatelessWidget {
  UploadFileContainer({
    Key key,
    @required this.width, this.imgUrl,
  }) : super(key: key);

  final double width;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: width*0.95,
      height: width*0.3,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: <Widget>[
          Container(
            height: width*0.3,
            width: width*0.3,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(12)
            ),
            child: Image.asset(
              imgUrl,
            ),
          ),
          Container(
            height: width*0.3,
            width: width*0.45,
            padding: EdgeInsets.only(top:8,left: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.location_on, color: blue,),
                Column(
                  children: <Widget>[
                    Text(
                      'Pakistan', 
                      style: TextStyle(
                        fontSize: 19, 
                        fontWeight: FontWeight.w700,
                        color: blue,
                        ),
                    ),
                    Text(
                      'File(36.7 kb)', 
                      style: TextStyle(
                        fontSize: 12, 
                        //fontWeight: FontWeight.w700,
                        color: blue,
                        ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.check_circle, 
                  color: orange, 
                  size: 32,
                ), 
                onPressed: (){print("Asad Bilal");},
              ),
              Container(
                height: 30,
                width: 30,
                margin: EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  color: blue,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Center(
                  child:  Icon(
                      Icons.delete, 
                      color: white, 
                      size: 20,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


//
//

class DashboardListView extends StatelessWidget {
  DashboardListView({
    Key key,
    @required this.width, this.nameFile, this.totalNumber,
  }) : super(key: key);

  final double width;
  final String nameFile,totalNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width*0.3,
      width: width*0.3,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 10, bottom: 10),
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
          nameFile, 
          style: TextStyle(
            color: orange,
            fontSize: 10,
            fontWeight: FontWeight.bold
          ),
        ),
        Text(totalNumber, style: TextStyle(color: blue, fontSize: 35, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}


//
//

class ListviewFlie extends StatefulWidget {
  ListviewFlie({
    Key key,
    @required this.width, this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  _ListviewFlieState createState() => _ListviewFlieState();
}

class _ListviewFlieState extends State<ListviewFlie> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width*0.88,
      height: widget.width*0.18,
      padding: EdgeInsets.symmetric(horizontal: widget.width*0.02),
      margin: EdgeInsets.only(bottom: widget.width*0.02),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: widget.width*0.1,
            width: widget.width*0.26,
            //color: orange,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 15,
                  width: 20,
                  child: Checkbox(
                  value: checked, 
                  activeColor: blue,
                  onChanged: (bool value){
                    setState(() {
                      checked = value;
                    });
                    
                  },
                    ),
                ),
                Icon(Icons.folder,color:blue,size:25),
                Text(
                  'ABCD',
                  style: TextStyle(
                    color: blue,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // Text(
          //   '8',
          //   style: TextStyle(
          //     color: blue,
          //     fontSize: 22,
          //     fontWeight: FontWeight.w700
          //   ),
          // ),
          Container(
            height: widget.width*0.1,
            width: widget.width*0.2,
            //color: orange,
            alignment: Alignment.center,
            child: Text(
              '8',
              style: TextStyle(
                color: blue,
                fontSize: 22,
                fontWeight: FontWeight.w700
              ),
            ),
          ),
          Container(
            height: widget.width*0.06,
            width: widget.width*0.25,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: orange,
              borderRadius: BorderRadius.circular(8)
            ),
            child: Text(
              'Finding realized',
              style: TextStyle(
                color: white,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
