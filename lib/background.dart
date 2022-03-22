import 'package:flutter/material.dart';

double height2 = 60;
double width2 = 250;
int resulttext = 0;

class AnswerWidget extends StatelessWidget {
  const AnswerWidget({
    Key? key,
    required this.result,
    required this.seni,
    required this.explanation,
    required this.serection,
    required this.answer,
    required this.anstitle,
  }) : super(key: key);

  final String anstitle;
  final String answer;
  final Color serection;
  final String explanation;
  final String seni;
  final int result;
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
                      content: Text(explanation),
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.of(context)
                                .pushReplacementNamed(seni),
                            child: Text('進む'))
                      ],
                    );
                  });
            },
            child: Text(
              anstitle,
              style: TextStyle(color: Colors.white, fontSize: 20),
            )));
  }
}
