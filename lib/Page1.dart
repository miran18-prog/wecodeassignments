// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wecodeassignments/details_screen_page.dart';
import 'package:wecodeassignments/names_of_cites.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "WeoCode Assignment Week 4",
              style: TextStyle(fontSize: 15),
            ),
            centerTitle: true,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: cites.length,
                  itemBuilder: (context, i) {
                    return Center(
                      child: Stack(children: [
                        SizedBox(
                          height: 350,
                          width: 350,
                          child: Image.network(cites[i].imageURL),
                        ),
                        Positioned(
                            height: 100,
                            width: 250,
                            top: 240,
                            left: 50,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => DetailsScreen(
                                        uRl: cites[i].imageURL,
                                        cite: cites[i].cityName,
                                        descriptions:
                                            cites[i].cityDescription)));
                              },
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.lightBlue,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Text(
                                  cites[i].cityName,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                              ),
                            )),
                      ]),
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }
}
