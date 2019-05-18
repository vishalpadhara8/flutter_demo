import 'package:flutter/material.dart';

class TicTocButton {
  final id;
  String text;
  Color bg;
  bool  enabled;

  TicTocButton({this.id, this.text="", this.bg = Colors.grey, this.enabled = true});


}



//two player game

//import 'package:flutter/material.dart';
//import 'tictocbutton.dart';
//import 'tictocdialogshow.dart';
//
//class TicTocHomePage extends StatefulWidget {
//  @override
//  _TicTocHomePageState createState() => _TicTocHomePageState();
//}
//
//class _TicTocHomePageState extends State<TicTocHomePage> {
//  List<TicTocButton> buttonList;
//
//  var player1;
//  var player2;
//  var activePlayer;
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    buttonList = doInit();
//  }
//
//  List<TicTocButton> doInit() {
//
//    player1 = new List();
//    player2 = new List();
//    activePlayer = 1;
//
//    var gameButtons = <TicTocButton>[
//      new TicTocButton(id: 1),
//      new TicTocButton(id: 2),
//      new TicTocButton(id: 3),
//      new TicTocButton(id: 4),
//      new TicTocButton(id: 5),
//      new TicTocButton(id: 6),
//      new TicTocButton(id: 7),
//      new TicTocButton(id: 8),
//      new TicTocButton(id: 9),
//    ];
//    return gameButtons;
//  }
//
//  void playGame(TicTocButton TTB) {
//
//    setState(() {
//      if (activePlayer == 1) {
//        TTB.text = "X";
//        TTB.bg = Colors.amberAccent;
//        activePlayer = 2;
//        player1.add(TTB.id);
//      } else {
//        TTB.text = "0";
//        TTB.bg = Colors.deepOrangeAccent;
//        activePlayer = 1;
//        player2.add(TTB.id);
//      }
//      TTB.enabled = false;
//      CheckWinner();
//    });
//  }
//
//  void CheckWinner() {
//    var winner = -1;
//    if (player1.contains(1) && player1.contains(2) && player1.contains(3) ) {
//      winner = 1;
//    } else if (player1.contains(4) && player1.contains(5) && player1.contains(6) ) {
//      winner = 1;
//    } else if (player1.contains(7) && player1.contains(8) && player1.contains(9) ) {
//      winner = 1;
//    } else if (player1.contains(1) && player1.contains(4) && player1.contains(7) ) {
//      winner = 1;
//    } else if (player1.contains(2) && player1.contains(5) && player1.contains(8) ) {
//      winner = 1;
//    } else if (player1.contains(3) && player1.contains(6) && player1.contains(9) ) {
//      winner = 1;
//    } else if (player1.contains(1) && player1.contains(5) && player1.contains(9) ) {
//      winner = 1;
//    } else if (player1.contains(3) && player1.contains(5) && player1.contains(7) ) {
//      winner = 1;
//    }
//
//    if (player2.contains(1) && player2.contains(2) && player2.contains(3) ) {
//      winner = 2;
//    } else if (player2.contains(4) && player2.contains(5) && player2.contains(6) ) {
//      winner = 2;
//    } else if (player2.contains(7) && player2.contains(8) && player2.contains(9) ) {
//      winner = 2;
//    } else if (player2.contains(1) && player2.contains(4) && player2.contains(7) ) {
//      winner = 2;
//    } else if (player2.contains(2) && player2.contains(5) && player2.contains(8) ) {
//      winner = 2;
//    } else if (player2.contains(3) && player2.contains(6) && player2.contains(9) ) {
//      winner = 2;
//    } else if (player2.contains(1) && player2.contains(5) && player2.contains(9) ) {
//      winner = 2;
//    } else if (player2.contains(3) && player2.contains(5) && player2.contains(7) ) {
//      winner = 2;
//    }
//
//    if (winner != -1) {
//      if(winner == 1){
//        showDialog(
//            context: context,
//            builder: (_) => new CustomDialog("Player 1 Won", "Press the reset button to start again.", resetGame)
//        );
//      } else {
//        showDialog(
//            context: context,
//            builder: (_) => new CustomDialog("Player 2 Won", "Press the reset button to start again.", resetGame)
//        );
//      }
//    }
//  }
//
//  void resetGame() {
////    if (Navigator.canPop(context)) Navigator.pop(context);
//    if (Navigator.of(context, rootNavigator: true).pop('dialog'));
//    setState(() {
//      buttonList = doInit();
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('Tic Tac Toe'),
//      ),
//      body: new Column (
//        mainAxisAlignment: MainAxisAlignment.start,
//        crossAxisAlignment: CrossAxisAlignment.stretch,
////        padding: new EdgeInsets.only(top: MediaQuery.of(context).size.height / 5,),
//        children: <Widget>[
//          new Expanded(
//            child: new GridView.builder(
//
//              padding: const EdgeInsets.all(10.0),
//
//              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
//
//                  crossAxisCount: 3,
//
//                  childAspectRatio: 1.0,
//
//                  crossAxisSpacing: 9.0,
//
//                  mainAxisSpacing: 9.0
//
//              ),
//
//              itemCount: buttonList.length,
//
//
//
//              itemBuilder: ( context,i) => new SizedBox(
//
//                width: 100.0,
//
//                height: 100.0,
//
//                child: new RaisedButton(
//
//                  onPressed: buttonList[i].enabled ? ()=> playGame(buttonList[i]) : null,
//
//                  child: new Text(
//
//                    buttonList[i].text,
//
//                    style: new TextStyle(color: Colors.white, fontSize: 70.0),
//
//                  ),
//
//                  color: buttonList[i].bg,
//
//                  disabledColor: buttonList[i].bg,
//
//                ),
//
//              ),
//
//            ),
//          ),
//          new RaisedButton(
//            child: new Text("Reset", style: new TextStyle(color: Colors.white, fontSize: 35.0),
//            ),
//            color: Colors.lightBlue,
//            padding: const EdgeInsets.all(20.0),
//            onPressed: resetGame,
//          )
//        ],
//      ),
//    );
//  }
//}
//
//
