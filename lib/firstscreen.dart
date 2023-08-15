import 'package:flutter/material.dart';

class firstscreen extends StatelessWidget {
  // const secondscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Image(
            image: AssetImage('images/second.png'),
          ),
          SizedBox(
            height: 20,
            width: 20,
          ),
          Image(
            image: AssetImage('images/first.png'),
          ),
        ],
      ),
    );
  }
}
