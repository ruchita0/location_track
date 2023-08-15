import 'package:flutter/material.dart';
import 'package:location_track/secondscreen.dart';
import 'firstscreen.dart';

class bus_fees extends StatefulWidget {
  const bus_fees({super.key});

  @override
  State<bus_fees> createState() => _busfees();
}

//  onPressed: (() {
//               Navigator.push(context,MaterialPageRoute(builder: ((context) => secondscreen())))
//               //Get.to(secondscreen());
//             }),

class _busfees extends State<bus_fees> {
  bool showImage = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Where is my Bus?",
          style: TextStyle(fontSize: 22.0, color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: (() {
                setState(() {
                  showImage = true;
                });
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => firstscreen())));
              }),
              child: const Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.5),
                  child: ListTile(
                    leading:
                        Icon(Icons.library_books_rounded, color: Colors.black),
                    title: Text(
                      'Bus Fees Structure',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0),
                    ),
                  )),
            ),
            TextButton(
              onPressed: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const secondscreen())));
              }),
              child: const Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.5),
                  child: ListTile(
                    leading:
                        Icon(Icons.currency_rupee_rounded, color: Colors.black),
                    title: Text(
                      'Bus Fees Update',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0),
                    ),
                  )),
            ),
            TextButton(
              onPressed: (() {
                setState(() {
                  showImage = true;
                });
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => firstscreen())));
              }),
              child: const Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.5),
                  child: ListTile(
                    leading:
                        Icon(Icons.receipt_long_rounded, color: Colors.black),
                    title: Text(
                      'Fees Receipt',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0),
                    ),
                  )),
            ),
            TextButton(
              onPressed: (() {
                setState(() {
                  showImage = true;
                });
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => firstscreen())));
              }),
              child: const Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.5),
                  child: ListTile(
                    leading:
                        Icon(Icons.contact_phone_rounded, color: Colors.black),
                    title: Text(
                      'Contact Details',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
