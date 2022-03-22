import 'package:flutter/material.dart';

import 'background.dart';

String exptext1 = '吉田茂は戦後の日本を立て直したよ';
String problem = 'サンフランシスコ条約と\n旧安保条約を結んだ総理大臣は誰？';
String senibasho = '/question3';

class Beginner2 extends StatelessWidget {
  const Beginner2({Key? key}) : super(key: key);

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
                anstitle: '鳩山一郎',
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
                anstitle: '吉田茂',
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
                anstitle: '伊藤博文',
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
                anstitle: '池田隼人',
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
