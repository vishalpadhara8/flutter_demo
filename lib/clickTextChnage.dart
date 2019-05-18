import 'package:flutter/material.dart';

void main(){
//    runApp(new MyClass());
  runApp(new TextChanges());

}


class TextChanges extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My First App",
      home: new homePage(),
      theme: new ThemeData(
          primarySwatch: Colors.orange,
          brightness: Brightness.light,
          accentColor: Colors.red
      ),
    );
  }
}

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}





class _homePageState extends State<homePage> {

  String myText = "Hello World";

  void _changeText(){
    setState(() {

      if(myText.startsWith("H")) {
        myText = "Welcome to my app";
      } else {
        myText = "Hello World";
      }
    });
  }

  Widget _bodyWidget(){
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(myText, style: new TextStyle(
              color: Colors.purpleAccent,
              fontSize: 30.0,
            ),),

            /* new RaisedButton(
              child: new Text("Click" , style: new TextStyle(
                color: Colors.amber,
                fontSize: 20.0,
              ),),
              onPressed: _changeText,
              color: Colors.cyanAccent,
            )*/

          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),
      ),
      body: _bodyWidget(),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: _changeText,
      ),
    );
  }
}





/*class MyClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My First App",
      home: new Scaffold(
         appBar: new AppBar(
           title: new Text("Welcome To Home Page "),
         ),
        body: new Center(child: new Text("Hello World")),
      ),
    );
  }
}*/
