library bottom_navy_bar;

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'login_page.dart';
import 'byDefultPro.dart';
import 'clickTextChnage.dart';
import 'FlipperAnimation.dart';
import 'loginDemo.dart';
import 'calculator.dart';
import 'chet/chetMain.dart';
import 'json.dart';
import 'httpJson.dart';
import 'tabsTopBottom.dart';
import 'musicPlayer.dart';
import 'deleteDismiss.dart';
import 'clipperline.dart';
import 'curveclipper.dart';
import 'websockets.dart';
import 'bottomshit.dart';
import 'package:flutter_demo/plantapp/minimalDisgnPlante.dart';
import 'tictactoc/tictocmain.dart';
import 'sflashscreen.dart';
import 'onBordingScreen/onbordingMain.dart';
import 'onbordingscreen1/pages/splash_screen.dart';
import 'silvarAppbar.dart';
import 'signeture.dart';
import 'ageCalculator.dart';
import 'cameraAccess.dart';
import 'wifi.dart';
import 'loginwithvalidation/main.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter App',
      theme: new ThemeData(
          primarySwatch: Colors.amber,
          primaryColor: defaultTargetPlatform == TargetPlatform.iOS ? Colors.greenAccent[50] : null
      ),
      home: new OnboardingMainPage(),
      routes: <String, WidgetBuilder>{
//      "/a": (BuildContext dontext) => new Defoult(),
//      "/b": (BuildContext dontext) =>  new TextChanges(),
        "/c": (BuildContext dontext) => new LoginDemo1(),
        "/d": (BuildContext dontext) => new LoginPage1(),
        "/e": (BuildContext dontext) => new FlipperAni(),

      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer App"),
        elevation: defaultTargetPlatform == TargetPlatform.android?5.0:0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Vishal Padhara"),
              accountEmail: new Text("vishalpadhara@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                    ? Colors.deepOrange : Colors.greenAccent,
                child: new Text("P"),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: new Text("V"),
                )
              ],
            ),

            new ListTile(
              title: new Text(" (1) By Defult Page"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new Defoult()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),

            new ListTile(
              title: new Text(" (2) Text is Changes"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new TextChanges()));
//                new TextChanges();
//                Navigator.of(context).pushNamed("/b");
              },
            ),

            new ListTile(
              title: new Text(" (3) Login Demo"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                new LoginPage1();
                Navigator.of(context).pushNamed("/c");
              },
            ),

            new ListTile(
              title: new Text(" (4) Login Page"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("/d");
              },
            ),

            new ListTile(
              title: new Text(" (5) Flliper Animation"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
//                Navigator.of(context).pushNamed(new FlipperAni())
                Navigator.of(context).pushNamed("/e");
              },
            ),

            new ListTile(
              title: new Text(" (6) Calculator"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new Calculator()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),

            new ListTile(
              title: new Text(" (7) ChetApp"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new Chet_MyApp()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),

            new ListTile(
              title: new Text(" (8) Json"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new JsonHome()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),

            new ListTile(
              title: new Text(" (9) http Json Data "),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
//                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new HttpJson()));

                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new HttpData()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),

            new ListTile(
              title: new Text(" (10) tab top Bottom "),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
//                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new HttpJson()));

                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new MainPersistentTabBar()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),



            new ListTile(
              title: new Text(" (11) Music Player "),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
//                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new HttpJson()));

                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new MusicPlayer()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),

            new ListTile(
              title: new Text(" (12) dismiss delete "),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
//                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new HttpJson()));

                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new Delete()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),


            new ListTile(
              title: new Text(" (12) clipper ( Cut ) "),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
//                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new HttpJson()));

                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new Clipperline()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),

            new ListTile(
              title: new Text(" (12) Curve clipper "),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
//                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new HttpJson()));

                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new CurveApp()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),

            new ListTile(
              title: new Text(" (13) web Socket  "),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
//                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new HttpJson()));

                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new WebSocket()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),

            new ListTile(
              title: new Text(" (14) bottom shit  "),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
//                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new HttpJson()));

                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new bottomshit()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),

            new ListTile(
              title: new Text(" (15) minimal design  "),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
//                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new HttpJson()));

                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new MyAppPlant()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),

            new ListTile(
              title: new Text(" (16) Tic Tac Toc  "),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
//                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new HttpJson()));

                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new TicTocApp()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),

            new ListTile(
              title: new Text(" (17) Sflash Screen  "),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
//                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new HttpJson()));

                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new SplashScreen()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),
            new ListTile(
              title: new Text(" (18)  onbording Screen 1  "),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
//                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new HttpJson()));

                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new SplashScreen1()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),
            new ListTile(
              title: new Text(" (19) Sliver App Bar  "),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
//                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new HttpJson()));

                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new SilvarAppBar()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),
            new ListTile(
              title: new Text(" (20) SIgneture Demo    "),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
//                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new HttpJson()));

                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new SignHomePage()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),

            new ListTile(
              title: new Text(" (21) Age Calculator    "),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
//                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new HttpJson()));

                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new AgeHomePage()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),

            new ListTile(
              title: new Text(" (22) camera example not working     "),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
//                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new HttpJson()));

//                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new CameraExampleHome()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),


            new ListTile(
              title: new Text(" (22) Login page with validation  "),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();

                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new loginvalidation()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),


            new ListTile(
              title: new Text(" (22) Arkit Camera  "),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();

//                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new aritcamera()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),

            new Divider(color: Colors.black38,),
            new ListTile(
              title: new Text("close"),
              trailing: new Icon(Icons.close),
              onTap: ()=> Navigator.of(context).pop(),
            )
          ],
        ),
      ),
//      body: new Container(
//        child: new Center(
//          child: new Text("Home Page"),
//        ),
//        body: BottomBarHome(),

      body: BottomBarHome(),
//        constraints: BottomNavyBar(),
//      ),
    );
  }
}


class BottomBarHome extends StatefulWidget {

  BottomBarHome({Key key, this.title}) : super(key: key);
  final String title;


  @override
  BottomBarHomeState createState() => new BottomBarHomeState();
}


// SingleTickerProviderStateMixin is used for animation
class BottomBarHomeState extends State<BottomBarHome> with SingleTickerProviderStateMixin {
  // Create a tab controller


  int _currentIndex = 0;

  List<Widget> _tabList = [
    Container(
      color: Colors.teal,
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.purple,
    )

  ];

  TabController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(


      // Set the TabBar view as the body of the Scaffold
//      bottomNavigationBar: new TabBarView(
//        // Add tabs as widgets
////        children: <Widget>[new FirstTab(), new SecondTab(), new ThirdTab()],
//        // set the controller
//        controller: controller,
//      ),
//      body: new TabBarView(children: null),
//      body: new TabBarView(
//        // Add tabs as widgets
//        children: <Widget>[new CameraExampleHome(), new WifiHome(),  new WifiHome()],
//        // set the controller
//        controller: controller,
//      ),

      // Set the bottom navigation bar
      bottomNavigationBar: new Material(
        // set the color of the bottom navigation bar
//        onTap: onTabTapped,
//        currentIndex: _currentIndex,
        color: Colors.amber,
        // set the tab bar as the child of bottom navigation bar
        child: new TabBar(
          tabs: <Tab>[
            new Tab(
              // set icon to the tab
              icon: new Icon(Icons.home, size: 40.0),
              text: "Home",
            ),
            new Tab(
              icon: new Icon(Icons.photo_camera, size: 40.0),
              text: "Camera",
            ),
            new Tab(
              icon: new Icon(Icons.network_wifi, size: 40.0),
              text: "Wifi",
            ),
          ],
          // setup the controller
          controller: controller,
        ),
      ),
    );
  }
}