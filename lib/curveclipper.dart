import 'package:flutter/material.dart';

void main() => runApp(CurveApp());

class CurveApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: CurvePage(),
    );
  }
}

class CurvePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Curve Image Design'),
      ),

      body: new Center(
        child: new ClipPath(
          child: new Image.asset("assets/1.jpg"),
          clipper: new MyCruveClipper(),
        ),
      )

      /*body: new Center(
        child: new ClipPath(
          child: new Image.network("https://homepages.cae.wisc.edu/~ece533/images/goldhill.bmp"),
          clipper: new MyCruveClipper(),
        ),
      ),*/
    );
  }
}

class MyCruveClipper extends CustomClipper<Path> {
  @override
 /* Path getClip(Size size) {
    var path = new Path();
//    path.lineTo(0.0, size.height);
    path.lineTo(0.0, size.height - 20);


    var firstControlPoint = new Offset(size.width / 4, size.height);
    var firstEndPoint = new Offset(size.width / 2.25, size.height - 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
    Offset(size.width - (size.width / 3.25), size.height - 65);
    var secondEndPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    //    var firstControlPoint = new Offset(size.width / 4, size.height);
//    var firstEndPoint = new Offset(size.width / 2.25 , size.height - 30.0);
//    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);
//
//    var secondContolePoint = new Offset(size.width - (size.width / 3.25), size.height - 65);
//    var secondEndPoint = new Offset(size.width, size.height - 40);
//    path.quadraticBezierTo(secondContolePoint.dx, secondContolePoint.dy, secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);

//    path.lineTo(size.width, size.height/2);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;*/

    Path getClip(Size size) {
      var path = new Path();
      path.lineTo(0.0, size.height - 20);

      var firstControlPoint = Offset(size.width / 4, size.height);
      var firstEndPoint = Offset(size.width / 2.25, size.height - 30.0);
      path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
          firstEndPoint.dx, firstEndPoint.dy);

      var secondControlPoint =
      Offset(size.width - (size.width / 3.25), size.height - 65);
      var secondEndPoint = Offset(size.width, size.height - 40);
      path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
          secondEndPoint.dx, secondEndPoint.dy);

      path.lineTo(size.width, size.height - 40);
      path.lineTo(size.width, 0.0);
      path.close();

      return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;

}
