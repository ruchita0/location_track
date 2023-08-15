import 'package:flutter/material.dart';
//import 'package:get/get.dart';
import 'package:location_track/secondscreen.dart';

class feesupdate2 extends StatefulWidget {
  const feesupdate2({super.key});

  @override
  State<feesupdate2> createState() => _feesupdate2State();
}

class _feesupdate2State extends State<feesupdate2> {
  List<String> Name = ['Sanjana', 'Ruchita', 'Sampada', 'Rachana', 'Shravani'];
  TextEditingController unamecontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fees Update'),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: (() {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => secondscreen())));
            }),
          ),
        ),
        body: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (_, int index) => finaalfees2(this.Name[index]),
                itemCount: 5,
              ),
            ),
            TextField(
              decoration: InputDecoration(),
            )
          ]),
        ));
  }
}

class finaalfees2 extends StatelessWidget {
  final String name;
  finaalfees2(this.name);

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Container(
        padding: EdgeInsets.all(8.0),
        child: Expanded(
          child: new Row(
            children: <Widget>[
              new Padding(padding: EdgeInsets.only(right: 10.0)),
              new Text(
                name,
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
