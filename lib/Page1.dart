// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String ImageName = "1";
  Widget changeImage(String image) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      child: Image.asset(
        'Assets/$image.png',
        height: 125,
        width: 125,
      ),
      onTap: () {
        setState(() {
          ImageName = image;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Slider",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Image.asset(
              'Assets/$ImageName.png',
              height: 150,
              width: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child: changeImage("1")),
                Expanded(child: changeImage("2")),
                Expanded(child: changeImage("3")),
              ],
            )
          ]),
    ));
  }
}
