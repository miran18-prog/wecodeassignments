import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen(
      {Key? key,
      required this.uRl,
      required this.cite,
      required this.descriptions})
      : super(key: key);
  final String uRl;
  final String cite;
  final String descriptions;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details Screen"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          Image.network(uRl),
          SizedBox(
            height: 50,
          ),
          Text(
            cite,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            descriptions,
            style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            textAlign: TextAlign.center,
          ),
        ],
      )),
    );
  }
}
