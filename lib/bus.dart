import 'package:flutter/material.dart';
import 'bus_stud.dart';
import 'location.dart';

class bus extends StatefulWidget {
  const bus({super.key});

  @override
  State<bus> createState() => _bus();
}

class _bus extends State<bus> {
  bool showImage = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Where is my Bus?'),
        ),
        body: Column(
          children: [
            const SizedBox(
              //Use of SizedBox
              height: 40,
            ),

            const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.bus_alert_rounded,
                    size: 40.0,
                  ),
                  SizedBox(
                      width:
                          10.0), // Add some spacing between the icon and text
                  Text(
                    "ALL BUSES LOCATION INFORMATION",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              //Use of SizedBox
              height: 50,
            ),
            SizedBox(
              width: 250.0,
              height: 60.0,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.bus_alert_rounded),
                label: const Text("BUS 1"),
                onPressed: () {
                  String username =
                      "sam@gmail.com"; // Replace with the actual input from the user.
                  String password =
                      "sam12345"; // Replace with the actual input from the user.

                  if (validateLogin(username, password)) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => bus_stud()),
                    );
                  } else {
                    // Show an error message or take appropriate action for invalid credentials.
                    print("Invalid credentials. Please try again.");
                  }
                },
                style:
                    ElevatedButton.styleFrom(primary: Colors.purple.shade100),
              ),
            ),
            const SizedBox(
              //Use of SizedBox
              height: 30,
            ),
            SizedBox(
              width: 250.0,
              height: 60.0,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.bus_alert_rounded),
                label: const Text("BUS 2"),
                onPressed: () => (Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => location1(n: '2'))))),
                style:
                    ElevatedButton.styleFrom(primary: Colors.purple.shade100),
              ),
            ),
            const SizedBox(
              //Use of SizedBox
              height: 30,
            ),

            SizedBox(
              width: 250.0,
              height: 60.0,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.bus_alert_rounded),
                label: const Text("BUS 3"),
                onPressed: () => (Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => location1(n: '3'))))),
                style:
                    ElevatedButton.styleFrom(primary: Colors.purple.shade100),
              ),
            ),
            const SizedBox(
              //Use of SizedBox
              height: 30,
            ),

            SizedBox(
              width: 250.0,
              height: 60.0,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.bus_alert_rounded),
                label: const Text("BUS 4"),
                onPressed: () => (Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => location1(n: '4'))))),
                style:
                    ElevatedButton.styleFrom(primary: Colors.purple.shade100),
              ),
            ),
            SizedBox(
              //Use of SizedBox
              height: 30,
            ),

            SizedBox(
              width: 250.0,
              height: 60.0,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.bus_alert_rounded),
                label: const Text("BUS 5"),
                onPressed: () => (Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => location1(n: '5'))))),
                style:
                    ElevatedButton.styleFrom(primary: Colors.purple.shade100),
              ),
            ), // This trailing comma makes auto-formatting nicer for build methods.
          ],
        ));
  }
}

bool validateLogin(String username, String password) {
  // Replace "john" and "j123" with the actual valid credentials
  return username == "sam@gmail.com" && password == "sam12345";
}
