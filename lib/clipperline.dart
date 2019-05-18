import 'package:flutter/material.dart';

//void main() => runApp(Clipperline());

class Clipperline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: ClipperHome(),
    );
  }
}


class ClipperHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

        body: new Center(
          child: new ClipPath(
            child: new Image.asset("assets/1.jpg"),
            clipper: new MyClipper(),
          ),
        )
      /*body: new Center(
          child: new ClipPath(
            child: new Image.network("https://homepages.cae.wisc.edu/~ece533/images/mountain.png"),
            clipper: new MyClipper(),
          ),
        )*/
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // TODO: implement getClip
    var path = new Path();
//    path.lineTo(0.0, size.height);
//    path.lineTo(size.width, 0.0);

    path.moveTo(size.width, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
  /*{
    // TODO: implement shouldReclip
    return null;
  }*/

}
/*
class ClipperHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ClipRect(
        child: new Align(
          alignment: Alignment.topCenter,
          heightFactor: 0.5,
          child: new Center(
            child: new Image.network("https://homepages.cae.wisc.edu/~ece533/images/mountain.png"),
          ),
        ),
      )
      );
  }
}*/

