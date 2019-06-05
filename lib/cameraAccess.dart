//import 'package:flutter/material.dart';
//import 'dart:async';
//import 'dart:io';
//import 'package:image_picker/image_picker.dart';
//
//class CameraAccess12 extends StatefulWidget {
//  @override
//  _CameraAccess12State createState() => _CameraAccess12State();
//}
//
//class _CameraAccess12State extends State<CameraAccess12> {
//
//  File _image;
//  Future getImage() async{
//    var image = await ImagePicker.pickImage(source: ImageSource.camera);
//    setState(() {
//      _image = image;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      home: new Scaffold(
//        body: new Center(child: _image == null ? new Text("No image selected ") : new Image.file(_image),),
//        floatingActionButton: new FloatingActionButton(onPressed: getImage , tooltip: 'pick Image ', child: new Icon(Icons.camera),),
//      ),
//    );
//  }
//}
