import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  debugShowCheckedModeBanner: false,
  home: new SilvarAppBar(),
));

class SilvarAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("App Bar"),
      ),
      body: new CustomScrollView(
        slivers: <Widget>[
          new SliverAppBar(
            backgroundColor: Colors.limeAccent,
            expandedHeight: 150.0,
            floating: false,  //text is hidden scroller
            pinned: true,   // silvar app hidden scroller
//            title: new Text("Sliver App Bar"),
            flexibleSpace: new FlexibleSpaceBar(
              title: new Text("Sliver App Bar"),
            ),
          ),
          new SliverFixedExtentList(
            itemExtent: 150.0,
            delegate:
            new SliverChildBuilderDelegate((context, index) => new ListTile(
              title: new Text("List item $index"),
            )),
          )
        ],
      ),
    );
  }
}