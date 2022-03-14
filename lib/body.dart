import 'package:flutter/material.dart';

import 'FrontButton.dart';

class BackGroundImage extends StatelessWidget {
  const BackGroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        // decoration: const BoxDecoration(
        //image: DecorationImage(
        //image: AssetImage('logo.png'),
        //fit: BoxFit.cover,
        // )
        //  ),
        child: FrontButtonWidget(size: size),
      ),
    );
  }
}
