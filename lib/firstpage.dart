import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset('assets/images/college_pic.png',
                  height: 400, width: 750),
              const Text(
                'Welcome to NKOCET, Solapur',
                style: TextStyle(fontSize: 30.0),
              ),
              Image.asset('assets/images/bus_logo.png',
                  height: 200, width: 200),
            ],
          ),
        ),
      ),
    );
  }
}
