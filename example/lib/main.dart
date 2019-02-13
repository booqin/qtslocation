import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:qtslocation/model/AMapLocation.dart';
import 'package:qtslocation/qtslocation.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _location = 'Unknown';

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  Future<void> getLocation() async {
    AMapLocation locationBean;
    try {
      // 获取位置
      locationBean = await Qtslocation.location;
      print(locationBean.toString());
    } on PlatformException {
      locationBean = null;
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _location = locationBean == null ?"error":locationBean.lat.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Running on: $_location\n'),
        ),
      ),
    );
  }
}
