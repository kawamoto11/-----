import 'package:flutter/material.dart';

import 'background.dart';

class Beginner extends StatelessWidget {
  const Beginner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Background(),
    );
  }
}
