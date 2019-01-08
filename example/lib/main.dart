import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:voice_changer_plugin/voice_changer_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // Platform messages are asynchronous, so we initialize in an async method.


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child:FlatButton(onPressed: ()=>VoiceChangerPlugin.change("/Users/kayshen/Library/Developer/CoreSimulator/Devices/FBE19BC2-E192-4067-A370-30B699D1813D/data/Containers/Bundle/Application/6E9FBF91-41B8-47E4-B64F-FFD8BF284848/Runner.app/singing.wav", 1), child: Text("测试"))
        ),
      ),
    );
  }
}
