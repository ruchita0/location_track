import 'package:flutter/material.dart';
//import 'package:get/get.dart';
import 'package:location_track/secondscreen.dart';

class feesupdate4 extends StatefulWidget {
  const feesupdate4({super.key});

  @override
  State<feesupdate4> createState() => _feesupdate4State();
}

class _feesupdate4State extends State<feesupdate4> {
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
              //Get.to(secondscreen());
            }),
          ),
        ),
        body: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (_, int index) => finaalfees4(this.Name[index]),
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

class finaalfees4 extends StatelessWidget {
  final String name;
  finaalfees4(this.name);

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
