import 'package:flutter/material.dart';
import 'package:flute_music_player/flute_music_player.dart';
import 'dart:async';

void main() => runApp(new MusicPlayer());

class MusicPlayer extends StatefulWidget {
  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {

  List<Song> _songs;

  @override
  void initState() {
    super.initState();
    initplayer();
  }

  void initplayer() async {
    var songs = await MusicFinder.allSongs();
    songs = new List.from(songs);

    setState(() {
      _songs = songs;
    });
  }


  @override
  Widget build(BuildContext context) {

    Widget Home() {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text('Music Player'),
        ),
        body: new ListView.builder(
          itemCount: 3,
          itemBuilder: (context, int index) {
            return new ListTile(
              leading: new CircleAvatar(
                child: new Text(_songs[index].title[0]),
              ),
//              title: new Text(_songs[index].title[0]),
              title: new Text(_songs[index].title),

            );
          },
        ),
      );
    }
    return new MaterialApp(
      home: Home(),
    );
  }
}
