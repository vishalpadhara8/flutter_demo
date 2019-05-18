import 'package:flutter/material.dart';

void main() {
  runApp(new LoginDemo1());
}

class LoginDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new LoginPage(),
      theme: new ThemeData(
          primarySwatch: Colors.orange
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {

  AnimationController _iconAnimationController;
  Animation<double>  _iconAnimation;

  @override
  void initState(){
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this,
        duration: new Duration(milliseconds: 500)
    );
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController,
        curve: Curves.easeOut
    );
    _iconAnimation.addListener(()=> this.setState((){}));
    _iconAnimationController.forward();
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(image: new AssetImage("assets/login2.jpg"),
            fit: BoxFit.cover,
            color: Colors.black54,
            colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlutterLogo(
//              size: 100.0,
                size: _iconAnimation.value * 100,
              ),
              new Form(
                  child: new Theme(
                    data: new ThemeData(
                        brightness: Brightness.light,
                        primarySwatch: Colors.red,
                        inputDecorationTheme: new InputDecorationTheme(
                            labelStyle: new TextStyle(
                                color: Colors.greenAccent,
                                fontSize: 20.0
                            )
                        )
                    ),
                    child: new Container(
                      padding: const EdgeInsets.all(40.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Enter Email",
                              fillColor: Colors.teal,
                              filled: true,
                              labelStyle: new TextStyle(color: Colors.black26,),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            style: new TextStyle(color: Colors.red, fontSize: 20.0,  ),


                          ),
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Enter PassWord",
                              fillColor: Colors.white30,

                              labelStyle: new TextStyle(color: Colors.black26),
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                          new Padding(padding: const EdgeInsets.only(top: 40.0)),
                          new MaterialButton(
                            height: 40.0,
                            minWidth: 100.0,
                            color: Colors.teal,
                            textColor: Colors.white,
//                      child: new Text("Login"),
                            child: new Icon(Icons.add_to_home_screen),
                            onPressed: () => {},
                            splashColor: Colors.greenAccent,
                          )
                        ],
                      ),
                    ),
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}

