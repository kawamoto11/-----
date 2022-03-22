import 'package:flutter/material.dart';
import 'package:flutter_application_33/beginner.dart';

import 'background.dart';

String exptext1 = '初代大統領のジョージワシントンにちなんでるよ';
String problem = 'アメリカ合衆国の首都は？';
String senibasho = '/answer';

class Beginner3 extends StatelessWidget {
  const Beginner3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.1,
              ),
              Text(
                problem,
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: size.height * 0.2,
              ),
              AnswerWidget(
                result: resulttext,
                seni: senibasho,
                explanation: exptext1,
                anstitle: 'ニューヨーク',
                answer: '不正解',
                serection: Colors.blue,
              ),
              SizedBox(
                height: size.height * 0.025,
              ),
              AnswerWidget(
                result: resulttext,
                seni: senibasho,
                explanation: exptext1,
                anstitle: 'サンフランシスコ',
                answer: '不正解',
                serection: Colors.blue,
              ),
              SizedBox(
                height: size.height * 0.025,
              ),
              AnswerWidget(
                result: resulttext,
                seni: senibasho,
                explanation: exptext1,
                anstitle: 'ロサンゼルス',
                answer: '不正解',
                serection: Colors.blue,
              ),
              SizedBox(
                height: size.height * 0.025,
              ),
              AnswerWidget(
                result: resulttext++,
                seni: senibasho,
                explanation: exptext1,
                anstitle: 'ワシントンD.C',
                answer: '正解',
                serection: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
