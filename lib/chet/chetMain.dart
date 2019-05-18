import 'package:flutter/material.dart';
import 'package:flutter_demo/chet/chetHome.dart';

//void main() => runApp(new Chet_MyApp());

void main() => runApp(new MaterialApp(
  theme: new ThemeData(
    primarySwatch: Colors.teal,
  ),
  home: new Chet_MyApp(),
));


class Chet_MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: "Chat App", home: new HomePage());
  }
}


