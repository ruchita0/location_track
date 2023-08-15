import 'package:flutter/material.dart';
import 'package:location_track/bus_fees.dart';
import 'feesupdate1.dart';
//import 'package:get/get.dart';
import 'feesupdate2.dart';
import 'feesupdate3.dart';

class secondscreen extends StatefulWidget {
  const secondscreen({super.key});

  @override
  State<secondscreen> createState() => _secondscreenState();
}

class _secondscreenState extends State<secondscreen> {
  bool showImage = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Fees Update'),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: (() {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => bus_fees())));
          }),
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
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => firstscreen(),
                //     ));
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => feesupdate1())));
              }),
              child: Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.5),
                  child: ListTile(
                    leading: Icon(Icons.edit, color: Colors.teal),
                    title: Text(
                      '1 st Year',
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0),
                    ),
                  )),
            ),
            TextButton(
              onPressed: (() {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => secondscreen(),
                //     ));
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => feesupdate2())));
              }),
              child: Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.5),
                  child: ListTile(
                    leading: Icon(Icons.edit, color: Colors.teal),
                    title: Text(
                      '2 nd  Year ',
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0),
                    ),
                  )),
            ),
            TextButton(
              onPressed: (() {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => secondscreen(),
                //     ));
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => feesupdate3())));
              }),
              child: Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.5),
                  child: ListTile(
                    leading: Icon(Icons.edit, color: Colors.teal),
                    title: Text(
                      '3 rd Year ',
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0),
                    ),
                  )),
            ),
            TextButton(
              onPressed: (() {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => secondscreen(),
                //     ));
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => feesupdate3())));
              }),
              child: Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.5),
                  child: ListTile(
                    leading: Icon(Icons.edit, color: Colors.teal),
                    title: Text(
                      '4 th Year ',
                      style: TextStyle(
                          color: Colors.teal.shade900,
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
