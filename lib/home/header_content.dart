import 'package:flutter/material.dart';

class HeaderContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: BackgroundClip(),
          child: Container(
            height: 200.0,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.lightGreen,
                    Colors.lightGreen
                  ],
                )
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top:50),
          child: Row(
            children: <Widget>[
              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 16.0,bottom: 16.0, left: 50.0,right: 16.0),
                  child: Image(
                      image:AssetImage('assets/img/mosque.png'),width:100.0),
                ),
              ),
              Container(
                //alignment: Alignment.centerLeft,
                child: Padding(
                  padding:  EdgeInsets.all(10.0),
                  child: Column(
                    children:  <Widget>[
                      Text('Daily Prayer',
                          style: TextStyle(decoration: TextDecoration.none, fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),

                      Text('By remembering Allah\nthe hearth is calm',
                        style: TextStyle(decoration: TextDecoration.none, color: Colors.black,fontSize: 12,fontWeight: FontWeight.normal),maxLines: 2,)
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class BackgroundClip extends CustomClipper <Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 50);
    var controllPoit=Offset(50, size.height);
    var endPoint=Offset(size.width/2, size.height);
    path.quadraticBezierTo(controllPoit.dx, controllPoit.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
