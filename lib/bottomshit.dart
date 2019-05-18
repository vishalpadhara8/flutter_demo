import 'package:flutter/material.dart';

void main() => runApp(new bottomshit());

class bottomshit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MYHomePage(),
    );
  }
}

class MYHomePage extends StatefulWidget {
  @override
  _MYHomePageState createState() => _MYHomePageState();
}

class _MYHomePageState extends State<MYHomePage> {

  final _scaffoldkey = new GlobalKey<ScaffoldState>();
  VoidCallback _showPersBottomShitCallBack;

  @override
  void initState() {
    super.initState();
    _showPersBottomShitCallBack = _showBottomSheet;
  }

  void _showBottomSheet () {
    setState(() {
      _showPersBottomShitCallBack = null;
    });

    _scaffoldkey.currentState.showBottomSheet((context) {
      return new Container(
        height: 300.0,
        color: Colors.lightGreenAccent,
        child: new Center(
          child: new Text("Bottom Sheet"),
        ),
      );
    }).closed.whenComplete(() {
      if (mounted) {
        setState(() {
          _showPersBottomShitCallBack = _showBottomSheet;
        });
      }
    });
  }

  void _showModalSheet() {
    showModalBottomSheet(context: context, builder: (build) {
      return new Container(
//        height: 300.0,
        color: Colors.deepOrange,
        child: new Center(
          child: new Text("model Bottom Sheet"),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldkey,
      appBar: new AppBar(
        title: new Text("Flutter BottomSheet"),
      ),
      body: new Padding(
        padding: const EdgeInsets.all(20.0),
        child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new RaisedButton(
                  onPressed: _showPersBottomShitCallBack,
                  child: new Text("Persistent"),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                ),
                new RaisedButton(
                  onPressed: _showModalSheet,
                  child: new Text("Modal"),
                ),
              ],
            )),
      ),
    );
  }
}
