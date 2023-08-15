import 'package:flutter/material.dart';

class BusTrack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Choose your Bus'),
      // ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700],
                fixedSize: const Size(95, 40),
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text('Bus 1'),
              onPressed: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700],
                fixedSize: const Size(95, 40),
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text('Bus 2'),
              onPressed: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700],
                fixedSize: const Size(95, 40),
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text('Bus 3'),
              onPressed: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700],
                fixedSize: const Size(95, 40),
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text('Bus 4'),
              onPressed: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700],
                fixedSize: const Size(95, 40),
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text('Bus 5'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
