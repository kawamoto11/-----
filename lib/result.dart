import 'package:flutter/material.dart';
import 'package:flutter_application_33/beginner.dart';

import 'background.dart';

String exptext1 = '初代大統領のジョージワシントンにちなんでるよ';
String problem = 'アメリカ合衆国の首都は？';
String senibasho = '/question3';

class Resultz extends StatelessWidget {
  const Resultz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('${resulttext}問正解'),
        ),
      ),
    );
  }
}
