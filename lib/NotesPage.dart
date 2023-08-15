import 'package:flutter/material.dart';

class NotesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text("Notes:-"),
      ),
      backgroundColor: Colors.green.shade100,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                '\n\n\n1. Hello Student...It is informed that to pay your bus fees on or before 25 May\n\n 2.It is informed that the all the buses after the college will depart at exactly 5:15 PM.\n\n  3.In Order to enter into the Bus, the students must be in complete uniform along with the college ID card.',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
