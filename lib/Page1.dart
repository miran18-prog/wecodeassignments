// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(90),
              child: Image.network(
                'https://th.bing.com/th/id/R.13c09f865f2de250568fa079980d4bb5?rik=JBy2HHCKLKuHHQ&riu=http%3a%2f%2fwww.wallpaperbetter.com%2fwallpaper%2f79%2f638%2f538%2fkurdistan-flag-1080P-wallpaper.jpg&ehk=2SOhKrjKQmTtD0gU5fGSbnU9NXjmA3TXzY1KMSXQlV0%3d&risl=&pid=ImgRaw&r=0',
              ),
            ),
          ),
          SizedBox(
            height: 75,
          ),
          Text(
            "Hello Kurdistan :)",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ],
      )),
    );
  }
}
