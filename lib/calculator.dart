import 'package:flutter/material.dart';

void main(){
  runApp(new Calculator());
}

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calculator App",
      theme: new ThemeData(primarySwatch: Colors.deepOrange),
      home: new CalculatorPage(),
    );
  }
}

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {

  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doAddition(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMulti(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void dodivid(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void clear(){
    setState(() {
      num1 = 0;
      num2 = 0;
      t1.text = "0";
      t2.text = "0";
      sum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new SingleChildScrollView(
        child: new Container(
          padding: const EdgeInsets.all(10.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("  $sum  ", style: new TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold, color: Colors.black),),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(hintText: "Enter Number 1",),
                controller: t1,
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(hintText: "Enter Number 2",),
                controller: t2,
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0),),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text(" + ", style: new TextStyle(color: Colors.black),),
                    color: Colors.lightBlueAccent,
                    onPressed: doAddition,
                  ),
                  new MaterialButton(
                    child: new Text(" - ", style: new TextStyle(color: Colors.black),),
                    color: Colors.lightBlueAccent,
                    onPressed: doSub,
                  ),
                ],
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new RaisedButton(
                    child: new Text(" * ", style: TextStyle(color: Colors.black),),
                    color: Colors.white,
                    onPressed: doMulti,
                  ),
                  new RaisedButton(
                    child: new Text(" / ", style: TextStyle(color: Colors.black),),
                    color: Colors.white,
                    onPressed: dodivid,
                  ),
                ],
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(
                    child: new Text(" Clear ", style: TextStyle(color: Colors.black),),
                    color: Colors.lightBlue,
                    onPressed: clear,
                  ),
                ],
              )
            ],
          )
        ),
      ),
//      ),
    );
  }
}
