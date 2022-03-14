import 'package:flutter/material.dart';

double height2 = 60;
double width2 = 250;

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            Text(
              'この中で三大栄養素に含まれない\n栄養素は何？',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: size.height * 0.2,
            ),
            AnswerWidget(
              title: '炭水化物',
              answer: '不正解',
              serection: Colors.blue,
            ),
            SizedBox(
              height: size.height * 0.025,
            ),
            AnswerWidget(
              title: 'ビタミン',
              answer: '正解',
              serection: Colors.red,
            ),
            SizedBox(
              height: size.height * 0.025,
            ),
            AnswerWidget(
              title: 'タンパク質',
              answer: '不正解',
              serection: Colors.blue,
            ),
            SizedBox(
              height: size.height * 0.025,
            ),
            AnswerWidget(
              title: '脂質',
              answer: '不正解',
              serection: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

class AnswerWidget extends StatelessWidget {
  const AnswerWidget({
    Key? key,
    required this.serection,
    required this.answer,
    required this.title,
  }) : super(key: key);

  final String title;
  final String answer;
  final Color serection;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height2,
        width: width2,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey, //色
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(1, 1),
          ),
        ], color: Colors.blue, borderRadius: BorderRadius.circular(5)),
        child: TextButton(
            onPressed: () async {
              var result = await showDialog<int>(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(
                        answer,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: serection),
                      ),
                      content: Text('三大栄養素にビタミンとミネラルを加えたものを5大栄養素とよぶよ！'),
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.of(context).pop(0),
                            child: Text('進む'))
                      ],
                    );
                  });
            },
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20),
            )));
  }
}
