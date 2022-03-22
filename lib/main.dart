import 'package:flutter/material.dart';
import 'package:flutter_application_33/result.dart';

import 'background.dart';
import 'beginner.dart';
import 'beginner2.dart';
import 'beginner3.dart';
import 'body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BackGroundImage(),
      routes: <String, WidgetBuilder>{
        "/question1": (BuildContext context) => Beginner(),
        "/question2": (BuildContext context) => Beginner2(),
        "/question3": (BuildContext context) => Beginner3(),
        "/answer": (BuildContext context) => Resultz(),
      },
    );
  }
}
