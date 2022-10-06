// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    print("createState");
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  var switchValue = false;
  String test = "hello";
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    print("build");
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      darkTheme: ThemeData.light(),
      home: Scaffold(
          body: Center(
        child: ElevatedButton(
            child: Text('$test')
            ,style: ButtonStyle(backgroundColor: MaterialStateProperty.all(_color))
            ,onPressed: () {

          if (_color == Colors.blue) {
            setState(() {
              test = "flutter";
              _color = Colors.pinkAccent;
            });
          } else {
            setState(() {
              test = "hello";
              _color = Colors.blue;
            });
          }
        }),
      )),
    );
  }

  @override
  void initState() {
    super.initState();
    print("initState");
  }
  
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }
}
