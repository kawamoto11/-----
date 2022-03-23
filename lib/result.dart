import 'package:flutter/material.dart';
import 'package:flutter_application_33/beginner.dart';

import 'FrontButton.dart';
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
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.4,
          ),
          Container(
            child: Text(
              '3問中${resulttext}問正解！',
              style: TextStyle(fontSize: 50),
            ),
          ),
          Container(
              height: height,
              width: width,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey, //色
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(1, 1),
                ),
              ], color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    '最初の画面に戻る',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))),
        ],
      ),
    );
  }
}
