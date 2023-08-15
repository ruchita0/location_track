import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AboutUsPage extends StatelessWidget {
  final List<Map<String, String>> carouselItems = [
    {
      "image": "images/Sampada.jpg",
      "text": "Sampada Tikale",
    },
    {
      "image": "images/Rachana.jpg",
      "text": "Rachana Mangalaram",
    },
    {
      "image": "images/Ruchita.jpeg",
      "text": "Ruchita Mangalaram",
    },
    // Add more items here
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text(
            "Where is my Bus?",
            style: TextStyle(fontSize: 22.0, color: Colors.black),
          ),
          // title: Text('Where is my Bus?'),
        ),
        body: ListView(children: [
          const SingleChildScrollView(
            padding: EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AutoSizeText(
                  "Title: Where is my Bus? A real-time bus Tracking and Management System\n\n"
                  "Project Description:",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                AutoSizeText(
                  "\nCollege Bus Tracking System is a system developed on the Android Platform using the Dart programming language."
                  " It is based on client-server technology, which gives real-time location of the bus on Google Maps."
                  " It becomes useful for the students in order to get information about their bus."
                  " The administrator has the permission to manipulate the bus record as per the needs."
                  " So in summary, our system handles all the data about the current location of the bus, and by using this data, the real-time tracking of the bus"
                  " can be done, and this information is then given to a remote user who wants to know the real-time bus information.",
                  style: TextStyle(fontSize: 22),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 500.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 500),
              viewportFraction: 0.8,
            ),
            items: carouselItems.map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        item["image"]!,
                        width: 250,
                        height: 300, // Customize the image width as needed
                      ),
                      const SizedBox(
                          height:
                              20), // Add some spacing between the image and text
                      Text(
                        item["text"]!,
                        style: const TextStyle(fontSize: 20.0),
                      ),
                    ],
                  );
                },
              );
            }).toList(),
          ),
        ]),
      ),
    );
  }
}
