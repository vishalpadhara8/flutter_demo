import 'package:flutter/material.dart';
import 'tictochomepage.dart';

void main() => runApp(new TicTocApp());

class TicTocApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primaryColor: Colors.black),
      home: TicTocHomePage(),
    );
  }
}

