import 'package:flutter/material.dart';
import 'package:location_track/secondscreen.dart';

class feesupdate1 extends StatefulWidget {
  const feesupdate1({super.key});

  @override
  State<feesupdate1> createState() => _feesupdate1State();
}

class _feesupdate1State extends State<feesupdate1> {
  List<String> Name = ['Sanjana', 'Ruchita', 'Sampada', 'Rachana', 'Shravani'];
  TextEditingController unamecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Fees Update'),
          leading: IconButton(
            icon: const Icon(
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
                itemBuilder: (_, int index) => finaalfees1(this.Name[index]),
                itemCount: 5,
              ),
            ),
            const TextField(
              decoration: InputDecoration(),
            )
          ]),
        ));
  }
}

class finaalfees1 extends StatelessWidget {
  final String name;
  finaalfees1(this.name);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: Row(
            children: <Widget>[
              const Padding(padding: EdgeInsets.only(right: 10.0)),
              Text(
                name,
                style: const TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
