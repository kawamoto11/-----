import 'package:flutter/material.dart';
import 'package:flutter_application_33/main.dart';
import 'main.dart';
import 'beginner.dart';

double height = 50;
double width = 170;
String gamen = "/question1";

class FrontButtonWidget extends StatelessWidget {
  const FrontButtonWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.1,
          ),
          Text(
            '雑学クイズ',
            style: TextStyle(fontSize: 50),
          ),
          SizedBox(
            height: size.height * 0.4,
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
              ], color: Colors.blue, borderRadius: BorderRadius.circular(25)),
              child: TextButton(
                  onPressed: () =>
                      Navigator.of(context).pushReplacementNamed(gamen),
                  child: Text(
                    '初級',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))),
          SizedBox(
            height: size.height * 0.025,
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
              ], color: Colors.green, borderRadius: BorderRadius.circular(25)),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    '中級',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))),
          SizedBox(
            height: size.height * 0.025,
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
              ], color: Colors.red, borderRadius: BorderRadius.circular(25)),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    '上級',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))),
        ],
      ),
    );
  }
}
