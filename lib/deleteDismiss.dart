import 'package:flutter/material.dart';

void main() => runApp(Delete());

class Delete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'flutter delete demo',
      theme: new ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: new Deletehome(),
    );
  }
}

class Deletehome extends StatelessWidget {

  final List<String> items = new List<String>.generate(30, (i) => 'items of data ${i+1}');
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("Swipe to dismiss"),
        ),
      body: new ListView.builder(
        itemCount: items.length ,
        itemBuilder: (context, int index) {
          return new Dismissible(
            key: new Key(items[index]),
            onDismissed: (direction) {
              items.removeAt(index);
              Scaffold.of(context).showSnackBar(new SnackBar(
                  content: new Text("Item dismissed."),
              )
              );
            },
            background: new Container(
              color: Colors.limeAccent,
            ),
            child: new ListTile(
              title: new Text("${items[index]}"),
            ),
          );
        },
      ) ,
    );
  }
}

