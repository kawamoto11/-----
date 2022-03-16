import 'package:flutter/material.dart';

import 'background.dart';
import 'beginner.dart';
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
        "/question": (BuildContext context) => Beginner(),
      },
    );
  }
}
