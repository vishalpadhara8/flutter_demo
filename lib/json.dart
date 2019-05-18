import 'package:flutter/material.dart';
import 'dart:convert';

void main() => runApp(new MaterialApp(
  theme: new ThemeData(
    primarySwatch: Colors.teal,
  ),
  home: new JsonHome(),
));

class JsonHome extends StatefulWidget {
  @override
  _JsonHomeState createState() => _JsonHomeState();
}

class _JsonHomeState extends State<JsonHome> {
  List data1;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Json Data App"),
      ),
      body: new Container(
        child: new Center(
          child: new FutureBuilder(
              future: DefaultAssetBundle
              .of(context)
                  .loadString('load_json/person.json'),
            builder: (context, snapshot){
              //Decode Json
              var mydata = json.decode(snapshot.data.toString());

              return new ListView.builder(
                  itemBuilder: (BuildContext context, int index){
                   return new Card(
                     child: new Column(
                       crossAxisAlignment: CrossAxisAlignment.stretch,
                       children: <Widget>[
                         new Text("Name:"+mydata[index]['name']),
                         new Text("Soname:"+mydata[index]['soname']),
                         new Text("Messge:"+mydata[index]['messge']),
                         new Text("Gender:"+mydata[index]['gender']),
                       ],
                     ),
                   );
                  },
                itemCount: mydata == null ? 0 : mydata.length,
              );
            },
          ),
        ),
      ),
    );
  }
}
