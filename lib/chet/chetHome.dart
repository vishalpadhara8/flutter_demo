import 'package:flutter/material.dart';
import 'package:flutter_demo/chet/chet_Screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
//          leading: new IconButton(
//            icon: new Icon(Icons.arrow_back, color: Colors.orange),
//            onPressed: () => Navigator.of(context).pop(),
//          ),
          title: new Text("Frenzy Chat"),
        ),
        body: new ChatScreen());
  }
}