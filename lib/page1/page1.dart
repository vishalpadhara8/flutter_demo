import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home, size: 40,), text: "Home",),
                Tab(icon: Icon(Icons.camera, size: 40,), text: "Camera"),
                Tab(icon: Icon(Icons.network_wifi, size: 40,), text: "Wifi"),

              ],
            ),
            title: Text('Persistent Tab Demo'),
          ),
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.1, 0.5, 0.7, 0.9],
                  colors: [
                    Colors.red,
                    Colors.red,
                    Colors.white,
                    Colors.red,
                  ],
                )
            ),
            child: SnackBars(),
          )
      ),
    );
  }
}

class SnackBars extends StatelessWidget{

  AlertDialog dialog = new AlertDialog(
    content: new Text("Dialog is up...", style:  new TextStyle(fontSize: 20.0),) ,
    title: new Text("This Is Title", style: new TextStyle(fontSize: 30.0),),
  );

  int current_step = 1;
  List<Step> my_Step = [
    new Step(
        title: new Text("Step 1"),
        content: new Text("some Container 1"),
        isActive: true
    ),

    new Step(
        title: new Text("Step 2"),
        content: new Text("some Container 2"),
        isActive: true
    ),

    new Step(
        title: new Text("Step 3"),
        content: new Text("some Container 3"),
        isActive: true
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child:TabBarView(
          children: [
            Center( child: new RaisedButton(
              child: new Text("Click Me"),
              color: Colors.teal,
              onPressed: () => Scaffold.of(context).showSnackBar(new SnackBar(
                content: new Text("you click me."),
                duration: new Duration(seconds: 3),)), )),
            Center( child: new RaisedButton(
                child: new Text("Click Me"),
                onPressed: () => showDialog(context: context, child: dialog))),
            Center( child: new Stepper(steps: my_Step,
              currentStep: this.current_step,
              type: StepperType.vertical,)),

          ],
        ),
      ),
    );
  }
}



/*
body: TabBarView(
            children: [
              Center( child: Text("Page 1")),
              Center( child: Text("Page 2")),
            ],
),
 */