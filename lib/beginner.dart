import 'package:flutter/material.dart';

import 'background.dart';

String exptext1 = 'ビタミンは五大栄養素！';
String problem = 'この中で三大栄養素に含まれない\n栄養素は何？';
String senibasho = '/question2';

class Beginner extends StatelessWidget {
  const Beginner({Key? key}) : super(key: key);

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
                anstitle: '炭水化物',
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
                anstitle: 'ビタミン',
                answer: '正解',
                serection: Colors.red,
              ),
              SizedBox(
                height: size.height * 0.025,
              ),
              AnswerWidget(
                result: resulttext,
                seni: senibasho,
                explanation: exptext1,
                anstitle: 'タンパク質',
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
                anstitle: '脂質',
                answer: '不正解',
                serection: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
