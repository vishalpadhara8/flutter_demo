import 'package:flutter/material.dart';

void main() => runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WifiHome() ,
    )
);

class WifiHome extends StatefulWidget {
  @override
  _WifiHomeState createState() => _WifiHomeState();
}

class _WifiHomeState extends State<WifiHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: Text("Hello World"),
      ),
    );
  }
}
